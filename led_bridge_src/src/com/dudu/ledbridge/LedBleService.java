package com.dudu.ledbridge;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;

public class LedBleService extends Service {
    private static final String TAG = "DuduLedBle";
    public static final String ACTION_STATUS_CHANGE = "com.dudu.ledbridge.STATUS_CHANGE";
    public static final String ACTION_DEVICE_DISCOVERED = "com.dudu.ledbridge.DEVICE_DISCOVERED";

    private static final String PREFS_NAME = "led_bridge_prefs";
    private static final String KEY_LAST_MAC = "last_device_mac";
    private static final String KEY_LAST_NAME = "last_device_name";
    private static final String KEY_R = "cur_r";
    private static final String KEY_G = "cur_g";
    private static final String KEY_B = "cur_b";
    private static final String KEY_BRIGHTNESS = "cur_brightness";
    private static final String KEY_POWER = "cur_power";

    // Target MAC for user's LEDCAR-01-2265
    private static final String DEFAULT_LEDCAR_MAC = "FF:FF:11:8B:22:65";

    // Known UUIDs
    private static final UUID UUID_LEDCAR_SERVICE = UUID.fromString("0000fff0-0000-1000-8000-00805f9b34fb");
    private static final UUID UUID_LEDCAR_WRITE   = UUID.fromString("0000fff3-0000-1000-8000-00805f9b34fb");
    private static final UUID UUID_BLE_SERVICE    = UUID.fromString("0000ffe0-0000-1000-8000-00805f9b34fb");
    private static final UUID UUID_BLE_WRITE      = UUID.fromString("0000ffe1-0000-1000-8000-00805f9b34fb");

    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothLeScanner mScanner;
    private BluetoothGatt mGatt;
    private BluetoothGattCharacteristic mTargetChar = null;

    private boolean mIsConnected = false;
    private boolean mIsScanning = false;
    private String mConnectedDeviceName = "";
    private String mConnectedDeviceAddress = "";

    private int curR = 0, curG = 102, curB = 255;
    private int curBrightness = 100;
    private boolean isPowerOn = true;
    private boolean isForwardDirection = true;

    private final List<BluetoothDevice> mDiscoveredDevices = Collections.synchronizedList(new ArrayList<>());
    private final Map<String, Integer> mDeviceRssi = Collections.synchronizedMap(new HashMap<>());

    private final ConcurrentLinkedQueue<byte[]> mWriteQueue = new ConcurrentLinkedQueue<>();
    private boolean mIsWriting = false;

    private SharedPreferences mPrefs;
    private final IBinder mBinder = new LocalBinder();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private VirtualDuocoServer mVirtualDuocoServer;

    private final Runnable mTimeoutWatchdog = new Runnable() {
        @Override
        public void run() {
            if (mIsWriting) {
                Log.w(TAG, "Write timed out (120ms), clearing busy lock and advancing queue");
                clearBusyFlag(mGatt);
                mIsWriting = false;
                processNextPacket();
            }
        }
    };

    public class LocalBinder extends Binder {
        public LedBleService getService() {
            return LedBleService.this;
        }
    }

    private final BroadcastReceiver mCommandReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            handleIntent(intent);
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();
        mPrefs = getSharedPreferences(PREFS_NAME, MODE_PRIVATE);
        loadPreferences();

        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (mBluetoothAdapter != null) {
            mScanner = mBluetoothAdapter.getBluetoothLeScanner();
        }

        IntentFilter filter = new IntentFilter();
        filter.addAction("com.dudu.ledbridge.SET_COLOR");
        filter.addAction("com.dudu.ledbridge.SET_POWER");
        filter.addAction("com.dudu.ledbridge.SET_BRIGHTNESS");
        filter.addAction("com.dudu.ledbridge.SET_PRESET");
        filter.addAction("com.dudu.ledbridge.SET_EFFECT");
        filter.addAction("com.dudu.ledbridge.CONNECT_MAC");
        filter.addAction("com.dudu.ledbridge.SCAN");
        filter.addAction("com.dudu.ledbridge.DISCONNECT");
        registerReceiver(mCommandReceiver, filter);

        startForegroundNotification();
        initVirtualDuocoServer();

        String targetMac = mPrefs.getString(KEY_LAST_MAC, DEFAULT_LEDCAR_MAC);
        if (BluetoothAdapter.checkBluetoothAddress(targetMac)) {
            broadcastStatus("Connecting to " + mPrefs.getString(KEY_LAST_NAME, "LEDCAR-01-2265") + "...");
            connectToAddress(targetMac);
        } else {
            startScan();
        }
    }

    private void loadPreferences() {
        curR = mPrefs.getInt(KEY_R, 0);
        curG = mPrefs.getInt(KEY_G, 102);
        curB = mPrefs.getInt(KEY_B, 255);
        curBrightness = mPrefs.getInt(KEY_BRIGHTNESS, 100);
        isPowerOn = mPrefs.getBoolean(KEY_POWER, true);
    }

    private void savePreferences() {
        mPrefs.edit()
            .putInt(KEY_R, curR)
            .putInt(KEY_G, curG)
            .putInt(KEY_B, curB)
            .putInt(KEY_BRIGHTNESS, curBrightness)
            .putBoolean(KEY_POWER, isPowerOn)
            .apply();
    }

    private void handleIntent(Intent intent) {
        if (intent == null || intent.getAction() == null) return;
        String action = intent.getAction();

        switch (action) {
            case "com.dudu.ledbridge.SET_COLOR":
                int r = intent.getIntExtra("r", curR);
                int g = intent.getIntExtra("g", curG);
                int b = intent.getIntExtra("b", curB);
                sendColor(r, g, b);
                break;

            case "com.dudu.ledbridge.SET_POWER":
                boolean power = intent.getBooleanExtra("power", !isPowerOn);
                sendPower(power);
                break;

            case "com.dudu.ledbridge.SET_BRIGHTNESS":
                int br = intent.getIntExtra("brightness", curBrightness);
                sendBrightness(br);
                break;

            case "com.dudu.ledbridge.SET_EFFECT":
                int effect = intent.getIntExtra("effect", 1);
                int speed = intent.getIntExtra("speed", 80);
                sendEffect(effect, speed);
                break;

            case "com.dudu.ledbridge.SET_PRESET":
                String preset = intent.getStringExtra("preset");
                applyPreset(preset);
                break;

            case "com.dudu.ledbridge.CONNECT_MAC":
                String mac = intent.getStringExtra("mac");
                if (mac != null) connectToAddress(mac);
                break;

            case "com.dudu.ledbridge.SCAN":
                startScan();
                break;

            case "com.dudu.ledbridge.DISCONNECT":
                disconnect();
                break;
        }
    }

    private void applyPreset(String preset) {
        if (preset == null) return;
        switch (preset.toLowerCase()) {
            case "vw_blue":
            case "blue":
                sendColor(0, 102, 255);
                break;
            case "audi_red":
            case "red":
                sendColor(255, 30, 39);
                break;
            case "golf_cyan":
            case "cyan":
                sendColor(0, 229, 255);
                break;
            case "passat_warm":
            case "warm":
            case "passat_gold":
                sendColor(255, 226, 179);
                break;
            case "purple":
            case "violet":
                sendColor(153, 51, 255);
                break;
            case "green":
            case "emerald":
                sendColor(0, 255, 102);
                break;
            case "orange":
            case "amber":
                sendColor(255, 102, 0);
                break;
            case "white":
                sendColor(255, 255, 255);
                break;
        }
    }

    private void startForegroundNotification() {
        String channelId = "dudu_led_channel";
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(
                channelId, "Ambient LED Service",
                NotificationManager.IMPORTANCE_LOW
            );
            channel.setDescription("Maintains connection to car ambient lights");
            NotificationManager nm = getSystemService(NotificationManager.class);
            if (nm != null) nm.createNotificationChannel(channel);
        }

        Intent notificationIntent = new Intent(this, MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(
            this, 0, notificationIntent,
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ? PendingIntent.FLAG_IMMUTABLE : 0
        );

        Notification notification = new Notification.Builder(this, channelId)
            .setContentTitle("LED Ambient Bridge")
            .setContentText("Connected to car ambient lighting")
            .setSmallIcon(R.drawable.ic_launcher)
            .setContentIntent(pendingIntent)
            .build();

        startForeground(101, notification);
    }

    public void startScan() {
        if (mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()) {
            broadcastStatus("Bluetooth is OFF");
            return;
        }
        if (mScanner == null) {
            mScanner = mBluetoothAdapter.getBluetoothLeScanner();
        }
        if (mScanner == null) {
            broadcastStatus("BLE Scanner unavailable");
            return;
        }

        mDiscoveredDevices.clear();
        mDeviceRssi.clear();
        mIsScanning = true;
        broadcastStatus("Scanning for LEDCAR-01...");

        mHandler.postDelayed(() -> {
            if (mIsScanning) {
                stopScan();
                if (!mIsConnected) {
                    broadcastStatus("Scan finished");
                }
            }
        }, 15000);

        try {
            mScanner.startScan(mScanCallback);
        } catch (Exception e) {
            Log.e(TAG, "Error starting BLE scan", e);
        }
    }

    public void stopScan() {
        if (mScanner != null && mIsScanning) {
            try {
                mScanner.stopScan(mScanCallback);
            } catch (Exception ignored) {}
            mIsScanning = false;
        }
    }

    private final ScanCallback mScanCallback = new ScanCallback() {
        @Override
        public void onScanResult(int callbackType, ScanResult result) {
            BluetoothDevice device = result.getDevice();
            if (device == null) return;

            String name = device.getName();
            String address = device.getAddress();
            int rssi = result.getRssi();

            if (!mDiscoveredDevices.contains(device)) {
                mDiscoveredDevices.add(device);
            }
            mDeviceRssi.put(address, rssi);

            Intent intent = new Intent(ACTION_DEVICE_DISCOVERED);
            intent.putExtra("device_name", name != null ? name : "Unknown");
            intent.putExtra("device_address", address);
            intent.putExtra("device_rssi", rssi);
            sendBroadcast(intent);

            if (!mIsConnected) {
                if (DEFAULT_LEDCAR_MAC.equalsIgnoreCase(address) ||
                    (name != null && name.toUpperCase().contains("LEDCAR"))) {
                    Log.d(TAG, "Auto-connecting to target LEDCAR: " + name + " (" + address + ")");
                    stopScan();
                    connectToDevice(device);
                }
            }
        }
    };

    public void connectToAddress(String address) {
        if (mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()) return;
        try {
            BluetoothDevice device = mBluetoothAdapter.getRemoteDevice(address);
            connectToDevice(device);
        } catch (Exception e) {
            Log.e(TAG, "Failed connecting to MAC: " + address, e);
            startScan();
        }
    }

    public synchronized void connectToDevice(BluetoothDevice device) {
        if (device == null) return;
        stopScan();

        if (mGatt != null) {
            try {
                mGatt.disconnect();
                mGatt.close();
            } catch (Exception ignored) {}
            mGatt = null;
        }

        mConnectedDeviceName = device.getName() != null ? device.getName() : "LEDCAR-01-2265";
        mConnectedDeviceAddress = device.getAddress();
        broadcastStatus("Connecting to " + mConnectedDeviceName + "...");

        mHandler.post(() -> {
            mGatt = device.connectGatt(LedBleService.this, false, mGattCallback, BluetoothDevice.TRANSPORT_LE);
        });
    }

    public synchronized void disconnect() {
        mHandler.removeCallbacks(mTimeoutWatchdog);
        if (mGatt != null) {
            try {
                mGatt.disconnect();
                mGatt.close();
            } catch (Exception ignored) {}
            mGatt = null;
        }
        mIsConnected = false;
        mTargetChar = null;
        mIsWriting = false;
        mWriteQueue.clear();
        broadcastStatus("Disconnected");
    }

    private final BluetoothGattCallback mGattCallback = new BluetoothGattCallback() {
        @Override
        public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
            Log.d(TAG, "GATT state change: status=" + status + " newState=" + newState);
            if (newState == BluetoothProfile.STATE_CONNECTED) {
                mIsConnected = true;
                broadcastStatus("Discovering services...");
                mHandler.postDelayed(() -> {
                    if (mGatt != null) {
                        mGatt.discoverServices();
                    }
                }, 350);
            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                mIsConnected = false;
                mTargetChar = null;
                mIsWriting = false;
                mWriteQueue.clear();
                broadcastStatus("Disconnected");
                mHandler.postDelayed(() -> {
                    if (!mIsConnected && !mConnectedDeviceAddress.isEmpty()) {
                        connectToAddress(mConnectedDeviceAddress);
                    }
                }, 3000);
            }
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt gatt, int status) {
            if (status != BluetoothGatt.GATT_SUCCESS) {
                broadcastStatus("Service discovery failed");
                return;
            }

            mTargetChar = null;
            Log.d(TAG, "Services discovered for " + mConnectedDeviceName);

            // Priority 1: Check for LEDCAR service FFF0 -> Characteristic FFF3
            // Priority 2: Check for UART service FFE0 -> Characteristic FFE1
            // Explicitly ignore OTA characteristic 5833ff02
            for (BluetoothGattService service : gatt.getServices()) {
                UUID serviceUuid = service.getUuid();
                Log.d(TAG, "Found Service: " + serviceUuid);

                for (BluetoothGattCharacteristic ch : service.getCharacteristics()) {
                    UUID chUuid = ch.getUuid();
                    int props = ch.getProperties();
                    boolean canWrite = (props & BluetoothGattCharacteristic.PROPERTY_WRITE) != 0 ||
                                       (props & BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE) != 0;

                    Log.d(TAG, "  Characteristic: " + chUuid + " props=" + props + " canWrite=" + canWrite);

                    if (UUID_LEDCAR_WRITE.equals(chUuid)) {
                        mTargetChar = ch;
                        Log.d(TAG, "-> Selected Primary LEDCAR FFF3 Characteristic");
                    } else if (UUID_BLE_WRITE.equals(chUuid) && mTargetChar == null) {
                        mTargetChar = ch;
                        Log.d(TAG, "-> Selected UART FFE1 Characteristic");
                    } else if (canWrite && mTargetChar == null && !chUuid.toString().startsWith("5833")) {
                        mTargetChar = ch;
                        Log.d(TAG, "-> Selected Fallback Characteristic: " + chUuid);
                    }
                }
            }

            if (mTargetChar != null) {
                mTargetChar.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
                mIsConnected = true;
                mPrefs.edit()
                    .putString(KEY_LAST_MAC, mConnectedDeviceAddress)
                    .putString(KEY_LAST_NAME, mConnectedDeviceName)
                    .apply();

                broadcastStatus("Connected: " + mConnectedDeviceName);

                mHandler.postDelayed(() -> {
                    sendPower(isPowerOn);
                    if (isPowerOn) {
                        sendColor(curR, curG, curB);
                        sendBrightness(curBrightness);
                    }
                }, 400);
            } else {
                broadcastStatus("No writable characteristic found");
            }
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
            Log.d(TAG, "onCharacteristicWrite status=" + status);
            clearBusyFlag(gatt);
            mHandler.removeCallbacks(mTimeoutWatchdog);
            // Pace subsequent packets by 30ms to allow physical radio + MCU buffer clearance
            mHandler.postDelayed(() -> {
                mIsWriting = false;
                processNextPacket();
            }, 30);
        }
    };

    private void clearBusyFlag(BluetoothGatt gatt) {
        if (gatt == null) return;
        try {
            Field busyField = gatt.getClass().getDeclaredField("mDeviceBusy");
            busyField.setAccessible(true);
            busyField.setBoolean(gatt, false);
        } catch (Exception ignored) {}
    }

    /**
     * Send color across LEDCAR-01 channels
     */
    public void sendColor(int r, int g, int b) {
        curR = r;
        curG = g;
        curB = b;
        isPowerOn = true;
        savePreferences();

        // 1. LEDCAR LED Channel (7B 01 07 R G B 00 FF BF) - Controls both RGB and DMX
        queuePacket(new byte[]{
            (byte) 0x7B, (byte) 0x01, (byte) 0x07,
            (byte) (r & 0xFF), (byte) (g & 0xFF), (byte) (b & 0xFF),
            (byte) 0x00, (byte) 0xFF, (byte) 0xBF
        });

        // 2. LEDCAR DMX Channel (7B 00 07 R G B 00 FF BF)
        queuePacket(new byte[]{
            (byte) 0x7B, (byte) 0x00, (byte) 0x07,
            (byte) (r & 0xFF), (byte) (g & 0xFF), (byte) (b & 0xFF),
            (byte) 0x00, (byte) 0xFF, (byte) 0xBF
        });

        // 3. LEDCAR BLE Channel (7E FF 05 03 R G B FF EF)
        queuePacket(new byte[]{
            (byte) 0x7E, (byte) 0xFF, (byte) 0x05, (byte) 0x03,
            (byte) (r & 0xFF), (byte) (g & 0xFF), (byte) (b & 0xFF),
            (byte) 0xFF, (byte) 0xEF
        });
    }

    /**
     * Send POWER ON or POWER OFF (Total Blackout sequence when OFF)
     */
    public void sendPower(boolean on) {
        isPowerOn = on;
        savePreferences();

        if (on) {
            // Power ON: LED channel + DMX channel + BLE channel
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0x01, (byte) 0x04, (byte) 0x03,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0xFF, (byte) 0x04, (byte) 0x03,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            queuePacket(new byte[]{
                (byte) 0x7E, (byte) 0xFF, (byte) 0x04, (byte) 0x01,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xEF
            });
            // Restore color and brightness
            sendColor(curR, curG, curB);
            sendBrightness(curBrightness);

        } else {
            // Power OFF (Complete Blackout Sequence for both IC ARGB and 5050 RGB strips)
            // 1. LED Channel Power OFF
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0x01, (byte) 0x04, (byte) 0x02,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            // 2. DMX Channel Power OFF
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0xFF, (byte) 0x04, (byte) 0x02,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            // 3. BLE Channel Power OFF
            queuePacket(new byte[]{
                (byte) 0x7E, (byte) 0xFF, (byte) 0x04, (byte) 0x00,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xEF
            });
            // 4. Pattern 0 (Pattern Off from DMXPatternList)
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0xFF, (byte) 0x03, (byte) 0x00,
                (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            // 5. Zero brightness across all channels
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0xFF, (byte) 0x01, (byte) 0x00,
                (byte) 0x00, (byte) 0x02, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0xFF, (byte) 0x01, (byte) 0x00,
                (byte) 0x00, (byte) 0x00, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
            });
            queuePacket(new byte[]{
                (byte) 0x7E, (byte) 0xFF, (byte) 0x01, (byte) 0x00,
                (byte) 0x00, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xEF
            });
            // 6. Black RGB
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0x01, (byte) 0x07, (byte) 0x00,
                (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0xFF, (byte) 0xBF
            });
            queuePacket(new byte[]{
                (byte) 0x7B, (byte) 0x00, (byte) 0x07, (byte) 0x00,
                (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0xFF, (byte) 0xBF
            });
            queuePacket(new byte[]{
                (byte) 0x7E, (byte) 0xFF, (byte) 0x05, (byte) 0x03,
                (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0xFF, (byte) 0xEF
            });
        }
    }

    /**
     * Send brightness (0..100)
     */
    public void sendBrightness(int brightness) {
        curBrightness = Math.max(0, Math.min(100, brightness));
        savePreferences();

        int adj = (curBrightness * 32) / 100;

        // LED Channel Brightness
        queuePacket(new byte[]{
            (byte) 0x7B, (byte) 0xFF, (byte) 0x01,
            (byte) adj, (byte) curBrightness, (byte) 0x02,
            (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
        });

        // DMX Channel Brightness
        queuePacket(new byte[]{
            (byte) 0x7B, (byte) 0xFF, (byte) 0x01,
            (byte) adj, (byte) curBrightness, (byte) 0x00,
            (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
        });

        // BLE Channel Brightness
        queuePacket(new byte[]{
            (byte) 0x7E, (byte) 0xFF, (byte) 0x01,
            (byte) adj, (byte) curBrightness,
            (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xEF
        });
    }

    /**
     * Send DMX & RGB Dynamic Pattern according to MrMcFlyy/LEDCAR-01
     * Pattern indices:
     * 1: Forward Dreaming (Dreamcolor)
     * 3: Forward 7 Colors (Rainbow Flow)
     * 23: Forward Trailing (Meteor Chase)
     * 39: Forward Streaming (Water Stream)
     * 57: Open Curtain 7 Colors
     * 82: Gradual 7 Colors (Pulse Breathe)
     */
    public void sendEffect(int patternIndex) {
        sendEffect(patternIndex, 80);
    }

    public void sendEffect(int patternIndex, int speed) {
        isPowerOn = true;
        savePreferences();

        int sp = Math.max(1, Math.min(100, speed));

        // 1. DMX Pattern command: 7B FF 03 <patternIndex> FF FF FF FF BF
        queuePacket(new byte[]{
            (byte) 0x7B, (byte) 0xFF, (byte) 0x03,
            (byte) (patternIndex & 0xFF),
            (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
        });

        // 2. BLE RGB Pattern command: 7E FF 03 <id> <speed> FF FF FF EF
        byte rgbId = (byte) (0x80 + (patternIndex % 25));
        queuePacket(new byte[]{
            (byte) 0x7E, (byte) 0xFF, (byte) 0x03,
            rgbId, (byte) sp,
            (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xEF
        });
    }

    public void sendDirection(boolean forward) {
        isForwardDirection = forward;
        // 7B FF 0D <00=Forward / 01=Reverse> FF FF FF FF BF
        queuePacket(new byte[]{
            (byte) 0x7B, (byte) 0xFF, (byte) 0x0D,
            (byte) (forward ? 0x00 : 0x01),
            (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xFF, (byte) 0xBF
        });
    }

    private synchronized void queuePacket(byte[] data) {
        if (data == null || data.length == 0) return;
        mWriteQueue.offer(data);
        if (!mIsWriting) {
            processNextPacket();
        }
    }

    private synchronized void processNextPacket() {
        mHandler.removeCallbacks(mTimeoutWatchdog);

        if (mGatt == null || mTargetChar == null || mWriteQueue.isEmpty()) {
            mIsWriting = false;
            return;
        }

        byte[] packet = mWriteQueue.poll();
        if (packet != null) {
            mIsWriting = true;
            try {
                clearBusyFlag(mGatt);
                mTargetChar.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
                mTargetChar.setValue(packet);
                boolean ok = mGatt.writeCharacteristic(mTargetChar);
                Log.d(TAG, "Write " + bytesToHex(packet) + " -> ok=" + ok);
                if (ok) {
                    // Arm watchdog in case hardware doesn't send callback
                    mHandler.postDelayed(mTimeoutWatchdog, 120);
                } else {
                    mIsWriting = false;
                    clearBusyFlag(mGatt);
                    mHandler.postDelayed(this::processNextPacket, 50);
                }
            } catch (Exception e) {
                Log.e(TAG, "Error writing BLE packet", e);
                mIsWriting = false;
                mHandler.postDelayed(this::processNextPacket, 50);
            }
        }
    }

    private static String bytesToHex(byte[] bytes) {
        if (bytes == null) return "";
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02X ", b));
        }
        return sb.toString().trim();
    }

    private void broadcastStatus(String status) {
        Intent intent = new Intent(ACTION_STATUS_CHANGE);
        intent.putExtra("connected", mIsConnected);
        intent.putExtra("status", status);
        intent.putExtra("device_name", mConnectedDeviceName);
        sendBroadcast(intent);
    }

    public boolean isConnected() { return mIsConnected; }
    public String getConnectedDeviceName() { return mConnectedDeviceName; }
    public String getConnectedDeviceAddress() { return mConnectedDeviceAddress; }
    public int getCurR() { return curR; }
    public int getCurG() { return curG; }
    public int getCurB() { return curB; }
    public int getCurBrightness() { return curBrightness; }
    public boolean isPowerOn() { return isPowerOn; }
    public boolean isForwardDirection() { return isForwardDirection; }
    public List<BluetoothDevice> getDiscoveredDevices() { return new ArrayList<>(mDiscoveredDevices); }

    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    private void initVirtualDuocoServer() {
        try {
            mVirtualDuocoServer = new VirtualDuocoServer(this, new VirtualDuocoServer.Listener() {
                @Override
                public void onVirtualColorReceived(int r, int g, int b) {
                    Log.i(TAG, "VirtualDuoco (Native DUDU) -> Color: R=" + r + " G=" + g + " B=" + b);
                    sendColor(r, g, b);
                }

                @Override
                public void onVirtualBrightnessReceived(int brightness) {
                    Log.i(TAG, "VirtualDuoco (Native DUDU) -> Brightness: " + brightness + "%");
                    sendBrightness(brightness);
                }

                @Override
                public void onVirtualPowerReceived(boolean on) {
                    Log.i(TAG, "VirtualDuoco (Native DUDU) -> Power: " + (on ? "ON" : "OFF"));
                    sendPower(on);
                }

                @Override
                public void onVirtualEffectReceived(int effectId, int speed) {
                    Log.i(TAG, "VirtualDuoco (Native DUDU) -> Effect: " + effectId + " Speed: " + speed);
                    int dmxPattern = (effectId >= 0x80) ? (((effectId - 0x80) * 8) + 1) : effectId;
                    if (dmxPattern <= 0) dmxPattern = 1;
                    sendEffect(dmxPattern, speed);
                }
            });
            mVirtualDuocoServer.start();
            Log.i(TAG, "VirtualDuocoServer initialized for DUDU Launcher native control");
        } catch (Exception e) {
            Log.e(TAG, "Failed to start VirtualDuocoServer", e);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mHandler.removeCallbacks(mTimeoutWatchdog);
        if (mVirtualDuocoServer != null) {
            try {
                mVirtualDuocoServer.stop();
            } catch (Exception ignored) {}
            mVirtualDuocoServer = null;
        }
        try {
            unregisterReceiver(mCommandReceiver);
        } catch (Exception ignored) {}
        disconnect();
    }
}
