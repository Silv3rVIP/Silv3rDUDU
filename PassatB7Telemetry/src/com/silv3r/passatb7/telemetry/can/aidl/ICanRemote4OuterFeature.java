package com.silv3r.passatb7.telemetry.can.aidl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ICanRemote4OuterFeature extends IInterface {
    String DESCRIPTOR = "com.nwd.can.sdk.outer.adil.ICanRemote4OuterFeature";

    int TRANSACTION_sendCanData = 1;
    int TRANSACTION_initSdkCfg = 2;
    int TRANSACTION_addCallBack4Outerface = 3;
    int TRANSACTION_removeCallBack4Outerface = 4;
    int TRANSACTION_doCheckSumAndWriteData2Uart4CanBox = 5;
    int TRANSACTION_addAirCallBack = 9;
    int TRANSACTION_removeAirCallBack = 10;
    int TRANSACTION_addDoorCallBack = 11;
    int TRANSACTION_removeDoorCallBack = 12;
    int TRANSACTION_addSWCAngleCallBack = 13;
    int TRANSACTION_removeSWCAngleCallBack = 14;
    int TRANSACTION_addRadarCallBack = 15;
    int TRANSACTION_removeRadarCallBack = 16;
    int TRANSACTION_addCarInfoCallBack = 17;
    int TRANSACTION_removeCarInfoCallBack = 18;
    int TRANSACTION_addCanVolumeCallBack = 19;
    int TRANSACTION_removeCanVolumeCallBack = 20;
    int TRANSACTION_addCameraCallBack = 21;
    int TRANSACTION_removeCameraCallBack = 22;
    int TRANSACTION_addCanDataCallBack = 23;
    int TRANSACTION_removeCanDataCallBack = 24;

    void initSdkCfg(String appName, String appSecrets, byte appParamJoin, String appDesc) throws RemoteException;
    void addCarInfoCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void removeCarInfoCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void addDoorCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void removeDoorCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void addAirCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void removeAirCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void addRadarCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void removeRadarCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void addSWCAngleCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void removeSWCAngleCallBack(ICanRemoteModelCallback callback) throws RemoteException;
    void sendCanData(byte[] data) throws RemoteException;

    class Stub {
        public static ICanRemote4OuterFeature asInterface(IBinder binder) {
            if (binder == null) return null;
            IInterface iin = binder.queryLocalInterface(DESCRIPTOR);
            if (iin instanceof ICanRemote4OuterFeature) {
                return (ICanRemote4OuterFeature) iin;
            }
            return new Proxy(binder);
        }
    }

    class Proxy implements ICanRemote4OuterFeature {
        private final IBinder mRemote;

        public Proxy(IBinder remote) {
            this.mRemote = remote;
        }

        @Override
        public IBinder asBinder() {
            return mRemote;
        }

        @Override
        public void initSdkCfg(String appName, String appSecrets, byte appParamJoin, String appDesc) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeString(appName);
                _data.writeString(appSecrets);
                _data.writeByte(appParamJoin);
                _data.writeString(appDesc);
                mRemote.transact(TRANSACTION_initSdkCfg, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void addCarInfoCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_addCarInfoCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void removeCarInfoCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_removeCarInfoCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void addDoorCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_addDoorCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void removeDoorCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_removeDoorCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void addAirCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_addAirCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void removeAirCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_removeAirCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void addRadarCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_addRadarCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void removeRadarCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_removeRadarCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void addSWCAngleCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_addSWCAngleCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void removeSWCAngleCallBack(ICanRemoteModelCallback callback) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                mRemote.transact(TRANSACTION_removeSWCAngleCallBack, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }

        @Override
        public void sendCanData(byte[] data) throws RemoteException {
            Parcel _data = Parcel.obtain();
            Parcel _reply = Parcel.obtain();
            try {
                _data.writeInterfaceToken(DESCRIPTOR);
                _data.writeByteArray(data);
                mRemote.transact(TRANSACTION_sendCanData, _data, _reply, 0);
                _reply.readException();
            } finally {
                _reply.recycle();
                _data.recycle();
            }
        }
    }
}
