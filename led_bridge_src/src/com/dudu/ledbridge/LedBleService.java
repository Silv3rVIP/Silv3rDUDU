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
import android.graphics.Color;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;

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

    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothLeScanner mScanner;
    private BluetoothGatt mGatt;
    private final List<BluetoothGattCharacteristic> mWriteCharacteristics = new ArrayList<>();

    private boolean mIsConnected = false;
    private boolean mIsScanning = false;
    private String mConnectedDeviceName = "";
    private String mConnectedDeviceAddress = "";

    private int curR = 0, curG = 102, curB = 255; // Default VW Blue
    private int curBrightness = 100;
    private boolean isPowerOn = true;

    private final List<BluetoothDevice> mDiscoveredDevices = Collections.synchronizedList(new ArrayList<>());
    private final Map<String, Integer> mDeviceRssi = Collections.synchronizedMap(new HashMap<>());

    private final ConcurrentLinkedQueue<byte[]> mWriteQueue = new ConcurrentLinkedQueue<>();
    private boolean mIsWriting = false;

    private SharedPreferences mPrefs;
    private final IBinder mBinder = new LocalBinder();
    private final Handler mHandler = new Handler(Looper.getMainLooper());

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
        filter.addAction("com.dudu.ledbridge.CONNECT_MAC");
        filter.addAction("com.dudu.ledbridge.SCAN");
        filter.addAction("com.dudu.ledbridge.DISCONNECT");
        registerReceiver(mCommandReceiver, filter);

        startForegroundNotification();

        // Try direct connect to last known MAC or start scan
        String lastMac = mPrefs.getString(KEY_LAST_MAC, "");
        if (!lastMac.isEmpty() && BluetoothAdapter.checkBluetoothAddress(lastMac)) {
            broadcastStatus("Reconnecting to " + mPrefs.getString(KEY_LAST_NAME, "LEDLAMP") + "...");
            connectToAddress(lastMac);
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

    private void saveConnectedDevice(String mac, String name) {
        mPrefs.edit()
            .putString(KEY_LAST_MAC, mac)
            .putString(KEY_LAST_NAME, name)
            .apply();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null) {
            handleIntent(intent);
        }
        return START_STICKY;
    }

    private void handleIntent(Intent intent) {
        if (intent == null || intent.getAction() == null) return;
        String action = intent.getAction();

        if ("com.dudu.ledbridge.SET_COLOR".equals(action)) {
            if (intent.hasExtra("color")) {
                int color = intent.getIntExtra("color", Color.rgb(curR, curG, curB));
                sendColor(Color.red(color), Color.green(color), Color.blue(color));
            } else {
                int r = intent.getIntExtra("r", curR);
                int g = intent.getIntExtra("g", curG);
                int b = intent.getIntExtra("b", curB);
                sendColor(r, g, b);
            }
        } else if ("com.dudu.ledbridge.SET_POWER".equals(action)) {
            if (intent.hasExtra("toggle") && intent.getBooleanExtra("toggle", false)) {
                sendPower(!isPowerOn);
            } else {
                boolean power = intent.getBooleanExtra("power", true);
                sendPower(power);
            }
        } else if ("com.dudu.ledbridge.SET_BRIGHTNESS".equals(action)) {
            int brightness = intent.getIntExtra("brightness", curBrightness);
            sendBrightness(brightness);
        } else if ("com.dudu.ledbridge.SET_PRESET".equals(action)) {
            String preset = intent.getStringExtra("preset");
            if (preset != null) {
                applyPreset(preset);
            }
        } else if ("com.dudu.ledbridge.CONNECT_MAC".equals(action)) {
            String mac = intent.getStringExtra("mac");
            if (mac != null) {
                connectToAddress(mac);
            }
        } else if ("com.dudu.ledbridge.SCAN".equals(action)) {
            startScan();
        } else if ("com.dudu.ledbridge.DISCONNECT".equals(action)) {
            disconnect();
        }
    }

    public void applyPreset(String presetName) {
        String p = presetName.toLowerCase();
        if (p.contains("vw") || p.contains("blue")) {
            sendColor(0, 102, 255);
        } else if (p.contains("golf") || p.contains("cyan") || p.contains("ice")) {
            sendColor(0, 229, 255);
        } else if (p.contains("audi") || p.contains("red")) {
            sendColor(255, 0, 51);
        } else if (p.contains("bmw") || p.contains("amber") || p.contains("orange")) {
            sendColor(255, 102, 0);
        } else if (p.contains("merc") || p.contains("purple") || p.contains("violet")) {
            sendColor(153, 0, 255);
        } else if (p.contains("porsche") || p.contains("yellow") || p.contains("gold")) {
            sendColor(255, 204, 0);
        } else if (p.contains("amg") || p.contains("green") || p.contains("emerald")) {
            sendColor(0, 255, 102);
        } else if (p.contains("warm") || p.contains("passat")) {
            sendColor(255, 230, 204);
        } else if (p.contains("white")) {
            sendColor(255, 255, 255);
        } else if (p.contains("magenta") || p.contains("pink")) {
            sendColor(255, 0, 119);
        }
    }

    private void startForegroundNotification() {
        String channelId = "led_bridge_channel";
        NotificationManager nm = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && nm != null) {
            NotificationChannel channel = new NotificationChannel(
                channelId, 
                "LED Ambient Service", 
                NotificationManager.IMPORTANCE_LOW
            );
            channel.setDescription("Background Bluetooth LE connection for Car Ambient Lights");
            nm.createNotificationChannel(channel);
        }

        Intent openAppIntent = new Intent(this, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(
            this, 0, openAppIntent, 
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ? PendingIntent.FLAG_IMMUTABLE : 0
        );

        Notification.Builder builder;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            builder = new Notification.Builder(this, channelId);
        } else {
            builder = new Notification.Builder(this);
        }

        builder.setContentTitle("LED Ambient Bridge")
               .setContentText(mIsConnected ? "Connected to " + mConnectedDeviceName : "Monitoring LED connection")
               .setSmallIcon(R.drawable.ic_launcher)
               .setContentIntent(pi);

        startForeground(1001, builder.build());
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
        broadcastStatus("Scanning for LED devices...");

        // Auto stop scan after 12 seconds
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (mIsScanning) {
                    stopScan();
                    if (!mIsConnected) {
                        broadcastStatus("Scan finished (Not connected)");
                    }
                }
            }
        }, 12000);

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

            // Notify UI of discovered device
            Intent intent = new Intent(ACTION_DEVICE_DISCOVERED);
            intent.putExtra("device_name", name != null ? name : "Unknown");
            intent.putExtra("device_address", address);
            intent.putExtra("device_rssi", rssi);
            sendBroadcast(intent);

            // Auto-connect if matches known car ambient lighting names and we are not currently connected
            if (!mIsConnected && name != null) {
                String upper = name.toUpperCase();
                if (upper.contains("LED") || upper.contains("LAMP") || upper.contains("BLE") || 
                    upper.contains("ELK") || upper.contains("TRIONES") || upper.contains("LOTUS") || 
                    upper.contains("DUOCO") || upper.contains("LIGHT") || upper.contains("STRIP") || 
                    upper.contains("QHM") || upper.contains("CAR") || upper.contains("MELK") ||
                    upper.contains("ILIGHT") || upper.contains("SP110E") || upper.contains("KS03")) {
                    Log.d(TAG, "Auto-connecting to candidate device: " + name + " (" + address + ")");
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

        mConnectedDeviceName = device.getName() != null ? device.getName() : device.getAddress();
        mConnectedDeviceAddress = device.getAddress();
        broadcastStatus("Connecting to " + mConnectedDeviceName + "...");

        mGatt = device.connectGatt(this, false, mGattCallback);
    }

    public synchronized void disconnect() {
        if (mGatt != null) {
            try {
                mGatt.disconnect();
                mGatt.close();
            } catch (Exception ignored) {}
            mGatt = null;
        }
        mIsConnected = false;
        mWriteCharacteristics.clear();
        broadcastStatus("Disconnected");
    }

    private final BluetoothGattCallback mGattCallback = new BluetoothGattCallback() {
        @Override
        public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
            if (newState == BluetoothProfile.STATE_CONNECTED) {
                mIsConnected = true;
                saveConnectedDevice(mConnectedDeviceAddress, mConnectedDeviceName);
                broadcastStatus("Connected to " + mConnectedDeviceName + "! Discovering services...");
                gatt.discoverServices();
            } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                mIsConnected = false;
                mWriteCharacteristics.clear();
                broadcastStatus("Disconnected");
                // Auto reconnect after 4 seconds
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (!mIsConnected && !mConnectedDeviceAddress.isEmpty()) {
                            connectToAddress(mConnectedDeviceAddress);
                        }
                    }
                }, 4000);
            }
        }

        @Override
        public void onServicesDiscovered(BluetoothGatt gatt, int status) {
            if (status == BluetoothGatt.GATT_SUCCESS) {
                mWriteCharacteristics.clear();

                for (BluetoothGattService service : gatt.getServices()) {
                    for (BluetoothGattCharacteristic ch : service.getCharacteristics()) {
                        int props = ch.getProperties();
                        if ((props & BluetoothGattCharacteristic.PROPERTY_WRITE) != 0 ||
                            (props & BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE) != 0) {
                            mWriteCharacteristics.add(ch);
                            Log.d(TAG, "Found writable characteristic: " + ch.getUuid() + " in " + service.getUuid());
                        }
                    }
                }

                if (!mWriteCharacteristics.isEmpty()) {
                    broadcastStatus("Connected: " + mConnectedDeviceName);
                    // Restore stored state immediately
                    mHandler.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            sendPower(isPowerOn);
                            sendBrightness(curBrightness);
                            sendColor(curR, curG, curB);
                        }
                    }, 200);
                } else {
                    broadcastStatus("Connected (No writable endpoint found)");
                }
            }
        }

        @Override
        public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
            mIsWriting = false;
            processWriteQueue();
        }
    };

    public void sendColor(int r, int g, int b) {
        curR = r;
        curG = g;
        curB = b;
        savePreferences();

        // 1. ELK-BLEDOM / LEDLAMP / Lotus Lantern (7e 07 05 03 R G B 00 ef)
        byte[] cmdElk = new byte[]{
            (byte) 0x7e, (byte) 0x07, (byte) 0x05, (byte) 0x03,
            (byte) (r & 0xff), (byte) (g & 0xff), (byte) (b & 0xff),
            (byte) 0x00, (byte) 0xef
        };
        queuePacket(cmdElk);

        // 2. Triones fallback (56 R G B 00 f0 aa)
        byte[] cmdTriones = new byte[]{
            (byte) 0x56, (byte) (r & 0xff), (byte) (g & 0xff), (byte) (b & 0xff),
            (byte) 0x00, (byte) 0xf0, (byte) 0xaa
        };
        queuePacket(cmdTriones);

        // 3. duoCo Variant (7e 00 05 03 R G B 00 ef)
        byte[] cmdDuoco = new byte[]{
            (byte) 0x7e, (byte) 0x00, (byte) 0x05, (byte) 0x03,
            (byte) (r & 0xff), (byte) (g & 0xff), (byte) (b & 0xff),
            (byte) 0x00, (byte) 0xef
        };
        queuePacket(cmdDuoco);
    }

    public void sendPower(boolean on) {
        isPowerOn = on;
        savePreferences();

        // ELK
        byte val = on ? (byte) 0xf0 : (byte) 0x00;
        byte[] cmdElk = new byte[]{
            (byte) 0x7e, (byte) 0x04, (byte) 0x04, val,
            (byte) 0x00, on ? (byte) 0x01 : (byte) 0x00, (byte) 0xff, (byte) 0x00, (byte) 0xef
        };
        queuePacket(cmdElk);

        // Triones
        byte[] cmdTriones = new byte[]{
            (byte) 0xcc, on ? (byte) 0x23 : (byte) 0x24, (byte) 0x33
        };
        queuePacket(cmdTriones);

        // duoCo
        byte[] cmdDuoco = new byte[]{
            (byte) 0x7e, (byte) 0x00, (byte) 0x04, val,
            (byte) 0x00, on ? (byte) 0x01 : (byte) 0x00, (byte) 0xff, (byte) 0x00, (byte) 0xef
        };
        queuePacket(cmdDuoco);
    }

    public void sendBrightness(int brightness) {
        curBrightness = Math.max(0, Math.min(100, brightness));
        savePreferences();

        // ELK
        byte[] cmdElk = new byte[]{
            (byte) 0x7e, (byte) 0x04, (byte) 0x01, (byte) curBrightness,
            (byte) 0x01, (byte) 0xff, (byte) 0x00, (byte) 0xef
        };
        queuePacket(cmdElk);

        // Triones
        byte[] cmdTriones = new byte[]{
            (byte) 0x56, (byte) 0x00, (byte) 0x00, (byte) 0x00,
            (byte) curBrightness, (byte) 0x0f, (byte) 0xaa
        };
        queuePacket(cmdTriones);
    }

    public void sendEffect(int effectId, int speed) {
        // ELK Mode: 0x80 to 0x9a
        byte[] cmdElk = new byte[]{
            (byte) 0x7e, (byte) 0x05, (byte) 0x03, (byte) effectId,
            (byte) Math.max(1, Math.min(100, speed)), (byte) 0x00, (byte) 0xef
        };
        queuePacket(cmdElk);
    }

    private synchronized void queuePacket(byte[] data) {
        mWriteQueue.offer(data);
        if (!mIsWriting) {
            processWriteQueue();
        }
    }

    private synchronized void processWriteQueue() {
        if (mGatt == null || mWriteCharacteristics.isEmpty() || mWriteQueue.isEmpty()) {
            mIsWriting = false;
            return;
        }

        byte[] packet = mWriteQueue.poll();
        if (packet == null) {
            mIsWriting = false;
            return;
        }

        mIsWriting = true;
        for (BluetoothGattCharacteristic ch : mWriteCharacteristics) {
            try {
                ch.setValue(packet);
                ch.setWriteType(BluetoothGattCharacteristic.WRITE_TYPE_NO_RESPONSE);
                mGatt.writeCharacteristic(ch);
            } catch (Exception e) {
                Log.e(TAG, "Error writing packet to characteristic", e);
            }
        }

        // Small spacing between writes to prevent stack overflow
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                mIsWriting = false;
                processWriteQueue();
            }
        }, 15);
    }

    private void broadcastStatus(String status) {
        Intent intent = new Intent(ACTION_STATUS_CHANGE);
        intent.putExtra("status", status);
        intent.putExtra("connected", mIsConnected);
        intent.putExtra("device_name", mConnectedDeviceName);
        intent.putExtra("device_address", mConnectedDeviceAddress);
        sendBroadcast(intent);
    }

    public boolean isConnected() {
        return mIsConnected;
    }

    public String getConnectedDeviceName() {
        return mConnectedDeviceName;
    }

    public String getConnectedDeviceAddress() {
        return mConnectedDeviceAddress;
    }

    public List<BluetoothDevice> getDiscoveredDevices() {
        return new ArrayList<>(mDiscoveredDevices);
    }

    public int getDeviceRssi(String address) {
        Integer r = mDeviceRssi.get(address);
        return r != null ? r : -99;
    }

    public int getCurR() { return curR; }
    public int getCurG() { return curG; }
    public int getCurB() { return curB; }
    public int getCurBrightness() { return curBrightness; }
    public boolean isPowerOn() { return isPowerOn; }

    @Override
    public IBinder onBind(Intent intent) {
        return mBinder;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(mCommandReceiver);
        } catch (Exception ignored) {}
        disconnect();
    }
}
