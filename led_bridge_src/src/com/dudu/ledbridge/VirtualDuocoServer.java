package com.dudu.ledbridge;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelUuid;
import android.util.Log;

import java.util.Arrays;
import java.util.UUID;

/**
 * Virtual Duoco / ELK-BLEDOM GATT Server & Advertiser
 * Emulates the "ELK-BLEDOM" / Duoco device directly on the Android headunit.
 * DUDU Launcher's native Ambient Light setting and Desktop Widget discover and
 * connect to this virtual server. Incoming Duoco/MagicLantern commands are translated
 * in real-time and forwarded to the car's LEDCAR-01 controller.
 */
public class VirtualDuocoServer {
    private static final String TAG = "VirtualDuoco";

    // Standard Duoco / ELK-BLEDOM Service & Characteristic UUIDs
    public static final UUID UUID_DUOCO_SERVICE = UUID.fromString("0000fff0-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_DUOCO_CHAR    = UUID.fromString("0000fff3-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_CCCD          = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");

    // Duoco Handshake / Hello frame expected by DUDU Launcher
    private static final byte[] DUOCO_HANDSHAKE = new byte[]{
        (byte) 0x7E, (byte) 0x00, (byte) 0x00, (byte) 0x00,
        (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0xEF
    };

    public interface Listener {
        void onVirtualColorReceived(int r, int g, int b);
        void onVirtualBrightnessReceived(int brightness);
        void onVirtualPowerReceived(boolean on);
        void onVirtualEffectReceived(int effectId, int speed);
    }

    private final Context mContext;
    private final Listener mListener;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private BluetoothManager mBluetoothManager;
    private BluetoothAdapter mBluetoothAdapter;
    private BluetoothLeAdvertiser mAdvertiser;
    private BluetoothGattServer mGattServer;
    private BluetoothGattCharacteristic mChar;

    private BluetoothDevice mConnectedAppDevice = null;
    private boolean mIsAdvertising = false;

    // Periodic Heartbeat to keep DUDU Launcher permanently connected (never timeout)
    private final Runnable mHeartbeatRunnable = new Runnable() {
        @Override
        public void run() {
            if (mConnectedAppDevice != null && mGattServer != null && mChar != null) {
                sendHandshake(mConnectedAppDevice);
                mHandler.postDelayed(this, 1800);
            }
        }
    };

    public VirtualDuocoServer(Context context, Listener listener) {
        mContext = context;
        mListener = listener;
        mBluetoothManager = (BluetoothManager) context.getSystemService(Context.BLUETOOTH_SERVICE);
        if (mBluetoothManager != null) {
            mBluetoothAdapter = mBluetoothManager.getAdapter();
        }
    }

    public void start() {
        if (mBluetoothAdapter == null || !mBluetoothAdapter.isEnabled()) {
            Log.w(TAG, "Bluetooth adapter not available or disabled");
            return;
        }

        setupGattServer();
        startAdvertising();
    }

    public void stop() {
        mHandler.removeCallbacks(mHeartbeatRunnable);
        stopAdvertising();
        if (mGattServer != null) {
            try {
                mGattServer.close();
            } catch (Exception ignored) {}
            mGattServer = null;
        }
        mConnectedAppDevice = null;
    }

    private void setupGattServer() {
        if (mBluetoothManager == null) return;

        mGattServer = mBluetoothManager.openGattServer(mContext, new BluetoothGattServerCallback() {
            @Override
            public void onConnectionStateChange(BluetoothDevice device, int status, int newState) {
                Log.d(TAG, "Virtual server connection state: dev=" + (device != null ? device.getAddress() : "null")
                        + " status=" + status + " newState=" + newState);
                if (newState == BluetoothProfile.STATE_CONNECTED) {
                    mConnectedAppDevice = device;
                    Log.i(TAG, "DUDU Launcher connected to virtual Duoco server!");
                    // Send initial handshakes
                    mHandler.postDelayed(() -> sendHandshake(device), 200);
                    mHandler.postDelayed(() -> sendHandshake(device), 600);
                    mHandler.postDelayed(() -> sendHandshake(device), 1200);
                    // Start recurring heartbeat so DUDU Launcher never drops to 'Not connected'
                    mHandler.removeCallbacks(mHeartbeatRunnable);
                    mHandler.postDelayed(mHeartbeatRunnable, 1800);
                } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                    Log.i(TAG, "DUDU Launcher disconnected from virtual Duoco server");
                    mHandler.removeCallbacks(mHeartbeatRunnable);
                    if (device != null && device.equals(mConnectedAppDevice)) {
                        mConnectedAppDevice = null;
                    }
                }
            }

            @Override
            public void onCharacteristicWriteRequest(BluetoothDevice device, int requestId,
                                                     BluetoothGattCharacteristic characteristic,
                                                     boolean preparedWrite, boolean responseNeeded,
                                                     int offset, byte[] value) {
                if (responseNeeded) {
                    mGattServer.sendResponse(device, requestId, BluetoothGatt.GATT_SUCCESS, offset, value);
                }

                if (value == null || value.length == 0) return;

                Log.d(TAG, "Virtual server received write: " + bytesToHex(value));
                handleDuocoPayload(value);

                // Echo back notification to client (DUDU Launcher expects notification echo)
                try {
                    characteristic.setValue(value);
                    mGattServer.notifyCharacteristicChanged(device, characteristic, false);
                } catch (Exception ignored) {}
            }

            @Override
            public void onCharacteristicReadRequest(BluetoothDevice device, int requestId, int offset,
                                                    BluetoothGattCharacteristic characteristic) {
                mGattServer.sendResponse(device, requestId, BluetoothGatt.GATT_SUCCESS, offset, DUOCO_HANDSHAKE);
            }

            @Override
            public void onDescriptorWriteRequest(BluetoothDevice device, int requestId,
                                                 BluetoothGattDescriptor descriptor,
                                                 boolean preparedWrite, boolean responseNeeded,
                                                 int offset, byte[] value) {
                Log.d(TAG, "Virtual server descriptor write: " + (descriptor != null ? descriptor.getUuid() : "null")
                        + " val=" + bytesToHex(value));
                if (responseNeeded) {
                    mGattServer.sendResponse(device, requestId, BluetoothGatt.GATT_SUCCESS, offset, value);
                }
                // When client subscribes to notifications (CCCD written), immediately send Duoco handshake
                if (descriptor != null && UUID_CCCD.equals(descriptor.getUuid())) {
                    mHandler.postDelayed(() -> sendHandshake(device), 100);
                }
            }

            @Override
            public void onDescriptorReadRequest(BluetoothDevice device, int requestId, int offset,
                                                BluetoothGattDescriptor descriptor) {
                byte[] response = BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE;
                mGattServer.sendResponse(device, requestId, BluetoothGatt.GATT_SUCCESS, offset, response);
            }
        });

        if (mGattServer == null) {
            Log.e(TAG, "Failed to open GATT Server");
            return;
        }

        // Create Duoco Primary Service (0000fff0-...)
        BluetoothGattService service = new BluetoothGattService(
            UUID_DUOCO_SERVICE,
            BluetoothGattService.SERVICE_TYPE_PRIMARY
        );

        // Create Duoco Characteristic (0000fff3-...)
        mChar = new BluetoothGattCharacteristic(
            UUID_DUOCO_CHAR,
            BluetoothGattCharacteristic.PROPERTY_READ |
            BluetoothGattCharacteristic.PROPERTY_WRITE |
            BluetoothGattCharacteristic.PROPERTY_WRITE_NO_RESPONSE |
            BluetoothGattCharacteristic.PROPERTY_NOTIFY,
            BluetoothGattCharacteristic.PERMISSION_READ |
            BluetoothGattCharacteristic.PERMISSION_WRITE
        );
        mChar.setValue(DUOCO_HANDSHAKE);

        // Client Characteristic Configuration Descriptor (00002902-...)
        BluetoothGattDescriptor cccd = new BluetoothGattDescriptor(
            UUID_CCCD,
            BluetoothGattDescriptor.PERMISSION_READ | BluetoothGattDescriptor.PERMISSION_WRITE
        );
        cccd.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
        mChar.addDescriptor(cccd);

        service.addCharacteristic(mChar);
        mGattServer.addService(service);
        Log.i(TAG, "Virtual Duoco GATT service FFF0/FFF3 with CCCD initialized successfully");
    }

    private void startAdvertising() {
        if (mBluetoothAdapter == null) return;
        mAdvertiser = mBluetoothAdapter.getBluetoothLeAdvertiser();
        if (mAdvertiser == null) {
            Log.w(TAG, "BluetoothLeAdvertiser not supported by this chipset (Virtual Duoco Advertising unavailable)");
            return;
        }

        AdvertiseSettings settings = new AdvertiseSettings.Builder()
            .setAdvertiseMode(AdvertiseSettings.ADVERTISE_MODE_LOW_LATENCY)
            .setConnectable(true)
            .setTimeout(0)
            .setTxPowerLevel(AdvertiseSettings.ADVERTISE_TX_POWER_HIGH)
            .build();

        AdvertiseData data = new AdvertiseData.Builder()
            .setIncludeDeviceName(true)
            .addServiceUuid(new ParcelUuid(UUID_DUOCO_SERVICE))
            .build();

        AdvertiseData scanResponse = new AdvertiseData.Builder()
            .setIncludeDeviceName(true)
            .build();

        try {
            mAdvertiser.startAdvertising(settings, data, scanResponse, new AdvertiseCallback() {
                @Override
                public void onStartSuccess(AdvertiseSettings settingsInEffect) {
                    mIsAdvertising = true;
                    Log.i(TAG, "Virtual ELK-BLEDOM advertising started successfully!");
                }

                @Override
                public void onStartFailure(int errorCode) {
                    mIsAdvertising = false;
                    Log.e(TAG, "Virtual ELK-BLEDOM advertising failed with code: " + errorCode);
                }
            });
        } catch (Exception e) {
            Log.e(TAG, "Exception starting BLE advertisement", e);
        }
    }

    private void stopAdvertising() {
        if (mAdvertiser != null && mIsAdvertising) {
            try {
                mAdvertiser.stopAdvertising(new AdvertiseCallback() {});
            } catch (Exception ignored) {}
            mIsAdvertising = false;
        }
    }

    private void sendHandshake(BluetoothDevice device) {
        if (mGattServer != null && mChar != null && device != null) {
            try {
                mChar.setValue(DUOCO_HANDSHAKE);
                mGattServer.notifyCharacteristicChanged(device, mChar, false);
                Log.d(TAG, "Sent Duoco Handshake / Heartbeat to: " + device.getAddress());
            } catch (Exception e) {
                Log.e(TAG, "Error sending Duoco handshake", e);
            }
        }
    }

    /**
     * Parse Duoco / MagicLantern / ELK frames sent by DUDU Launcher native widget
     */
    private void handleDuocoPayload(byte[] p) {
        if (p == null || p.length < 4) return;
        int len = p.length;

        // 1. Color: 7E 07 05 03 R G B 00 EF  or  7E FF 05 03 R G B FF EF
        if (p[0] == 0x7E && p[2] == 0x05 && p[3] == 0x03 && p[len - 1] == (byte) 0xEF) {
            int r = p[4] & 0xFF;
            int g = p[5] & 0xFF;
            int b = p[6] & 0xFF;
            Log.i(TAG, "Translated Native DUDU Color: R=" + r + " G=" + g + " B=" + b);
            if (mListener != null) mListener.onVirtualColorReceived(r, g, b);
            return;
        }

        // 2. Brightness (Duoco format): 7E 04 01 LVL 01 FF FF 00 EF
        if (p[0] == 0x7E && p[1] == 0x04 && p[2] == 0x01 && p[len - 1] == (byte) 0xEF) {
            int brightness = p[3] & 0xFF;
            if (brightness > 100) brightness = 100;
            Log.i(TAG, "Translated Native DUDU Duoco Brightness: " + brightness + "%");
            if (mListener != null) mListener.onVirtualBrightnessReceived(brightness);
            return;
        }

        // 3. Brightness (Standard format): 7E FF 01 LVL ... EF
        if (p[0] == 0x7E && p[1] == (byte) 0xFF && p[2] == 0x01 && p[len - 1] == (byte) 0xEF) {
            int brightness = p[3] & 0xFF;
            if (brightness > 100) brightness = 100;
            Log.i(TAG, "Translated Native DUDU Brightness: " + brightness + "%");
            if (mListener != null) mListener.onVirtualBrightnessReceived(brightness);
            return;
        }

        // 4. Power (Variant 1): 7E FF 04 01/00 ... EF
        if (p[0] == 0x7E && p[1] == (byte) 0xFF && p[2] == 0x04 && p[len - 1] == (byte) 0xEF) {
            boolean on = (p[3] == 0x01 || p[3] == 0x03);
            Log.i(TAG, "Translated Native DUDU Power: " + (on ? "ON" : "OFF"));
            if (mListener != null) mListener.onVirtualPowerReceived(on);
            return;
        }

        // 5. Power (Variant 2): 7E 04 04 01/00 ... EF
        if (p[0] == 0x7E && p[1] == 0x04 && p[2] == 0x04 && p[len - 1] == (byte) 0xEF) {
            boolean on = (p[3] == 0x01 || p[3] == (byte) 0xF0);
            Log.i(TAG, "Translated Native DUDU Power (0404): " + (on ? "ON" : "OFF"));
            if (mListener != null) mListener.onVirtualPowerReceived(on);
            return;
        }

        // 6. Dynamic Mode / Effect: 7E 05 03 ID SPEED ... EF or 7E FF 03 ID SPEED ... EF
        if (p[0] == 0x7E && (p[1] == 0x05 || p[1] == (byte) 0xFF) && p[2] == 0x03 && p[len - 1] == (byte) 0xEF) {
            int modeId = p[3] & 0xFF;
            int speed = (len > 4) ? (p[4] & 0xFF) : 80;
            Log.i(TAG, "Translated Native DUDU Mode/Effect: ID=" + modeId + " Speed=" + speed);
            if (mListener != null) mListener.onVirtualEffectReceived(modeId, speed);
            return;
        }

        Log.d(TAG, "Unhandled Duoco frame: " + bytesToHex(p));
    }

    private static String bytesToHex(byte[] bytes) {
        if (bytes == null) return "";
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02X ", b));
        }
        return sb.toString().trim();
    }
}
