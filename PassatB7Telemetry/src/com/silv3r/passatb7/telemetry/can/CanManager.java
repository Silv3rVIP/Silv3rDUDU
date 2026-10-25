package com.silv3r.passatb7.telemetry.can;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;

import com.silv3r.passatb7.telemetry.can.aidl.ICanRemote4OuterFeature;
import com.silv3r.passatb7.telemetry.can.aidl.ICanRemoteModelCallback;
import com.silv3r.passatb7.telemetry.can.model.AirData;
import com.silv3r.passatb7.telemetry.can.model.CarData;
import com.silv3r.passatb7.telemetry.can.model.DoorData;

import java.util.ArrayList;
import java.util.List;

public class CanManager {
    private static final String TAG = "CanManager";
    private static final String ACTION_CAN_SERVICE = "com.nwd.can.service.impl.carcase.ACTION_CAN_SERVICE";
    private static final String CAN_PKG = "com.nwd.can.setting";
    private static final String CAN_CLS = "com.nwd.can.service.CanService";

    private static CanManager sInstance;

    private final Context mContext;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ICanRemote4OuterFeature mFeature;
    private boolean mConnected = false;

    private final CarData mCurrentCarData = new CarData();
    private final DoorData mCurrentDoorData = new DoorData();
    private final AirData mCurrentAirData = new AirData();

    private final List<CanListener> mListeners = new ArrayList<>();

    public interface CanListener {
        void onConnectionChanged(boolean connected);
        void onCarDataUpdated(CarData carData);
        void onDoorDataUpdated(DoorData doorData);
        void onAirDataUpdated(AirData airData);
    }

    private final ICanRemoteModelCallback.Stub mModelCallback = new ICanRemoteModelCallback.Stub() {
        @Override
        public void onDistributeCanData(byte[] data) throws RemoteException {
            if (data == null || data.length < 2) return;
            if (data[0] != CanProtocol.HEADER) return;

            byte type = data[1];
            if (type == CanProtocol.TYPE_CAR_INFO) {
                if (CanProtocol.parseCarInfo(data, mCurrentCarData)) {
                    mMainHandler.post(() -> {
                        for (CanListener l : mListeners) {
                            l.onCarDataUpdated(mCurrentCarData);
                        }
                    });
                }
            } else if (type == CanProtocol.TYPE_DOOR) {
                if (CanProtocol.parseDoorInfo(data, mCurrentDoorData)) {
                    mMainHandler.post(() -> {
                        for (CanListener l : mListeners) {
                            l.onDoorDataUpdated(mCurrentDoorData);
                        }
                    });
                }
            } else if (type == CanProtocol.TYPE_AIR) {
                if (CanProtocol.parseAirInfo(data, mCurrentAirData)) {
                    mMainHandler.post(() -> {
                        for (CanListener l : mListeners) {
                            l.onAirDataUpdated(mCurrentAirData);
                        }
                    });
                }
            }
        }
    };

    private final ServiceConnection mConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.i(TAG, "CAN Service Connected successfully");
            mFeature = ICanRemote4OuterFeature.Stub.asInterface(service);
            mConnected = true;

            try {
                // Initialize CAN SDK connection with NWD service
                mFeature.initSdkCfg("nwdapp", "d6049e9ae396480cbd8358ed3d07df21", (byte) 0, "PassatB7Telemetry");

                // Register callbacks
                mFeature.addCarInfoCallBack(mModelCallback);
                mFeature.addDoorCallBack(mModelCallback);
                mFeature.addAirCallBack(mModelCallback);
                Log.i(TAG, "Registered CarInfo, Door, and Air callbacks with CAN Service");
            } catch (Exception e) {
                Log.e(TAG, "Error registering CAN callbacks", e);
            }

            mMainHandler.post(() -> {
                for (CanListener l : mListeners) {
                    l.onConnectionChanged(true);
                }
            });
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            Log.w(TAG, "CAN Service Disconnected");
            mConnected = false;
            mFeature = null;

            mMainHandler.post(() -> {
                for (CanListener l : mListeners) {
                    l.onConnectionChanged(false);
                }
            });

            // Auto-reconnect after 3 seconds
            mMainHandler.postDelayed(() -> connect(), 3000);
        }
    };

    private CanManager(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static synchronized CanManager getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new CanManager(context);
        }
        return sInstance;
    }

    public void connect() {
        if (mConnected && mFeature != null) return;
        try {
            Intent intent = new Intent(ACTION_CAN_SERVICE);
            intent.setClassName(CAN_PKG, CAN_CLS);
            mContext.bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
            Log.i(TAG, "Binding to CAN service...");
        } catch (Exception e) {
            Log.e(TAG, "Failed to bind CAN service", e);
            mMainHandler.postDelayed(this::connect, 5000);
        }
    }

    public void disconnect() {
        if (mConnected) {
            try {
                if (mFeature != null) {
                    mFeature.removeCarInfoCallBack(mModelCallback);
                    mFeature.removeDoorCallBack(mModelCallback);
                    mFeature.removeAirCallBack(mModelCallback);
                }
                mContext.unbindService(mConnection);
            } catch (Exception e) {
                Log.e(TAG, "Error disconnecting CAN", e);
            }
            mConnected = false;
            mFeature = null;
        }
    }

    public void addListener(CanListener listener) {
        if (listener != null && !mListeners.contains(listener)) {
            mListeners.add(listener);
            listener.onConnectionChanged(mConnected);
            listener.onCarDataUpdated(mCurrentCarData);
            listener.onDoorDataUpdated(mCurrentDoorData);
            listener.onAirDataUpdated(mCurrentAirData);
        }
    }

    public void removeListener(CanListener listener) {
        mListeners.remove(listener);
    }

    public boolean isConnected() {
        return mConnected;
    }

    public CarData getCurrentCarData() {
        return mCurrentCarData;
    }

    public DoorData getCurrentDoorData() {
        return mCurrentDoorData;
    }

    public AirData getCurrentAirData() {
        return mCurrentAirData;
    }
}
