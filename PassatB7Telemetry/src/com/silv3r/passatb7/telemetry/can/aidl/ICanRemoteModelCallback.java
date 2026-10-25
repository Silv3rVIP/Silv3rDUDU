package com.silv3r.passatb7.telemetry.can.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ICanRemoteModelCallback extends IInterface {
    String DESCRIPTOR = "com.nwd.can.sdk.outer.adil.ICanRemoteModelCallback";
    int TRANSACTION_onDistributeCanData = 1;

    void onDistributeCanData(byte[] data) throws RemoteException;

    abstract class Stub extends Binder implements ICanRemoteModelCallback {
        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICanRemoteModelCallback asInterface(IBinder binder) {
            if (binder == null) return null;
            IInterface iin = binder.queryLocalInterface(DESCRIPTOR);
            if (iin instanceof ICanRemoteModelCallback) {
                return (ICanRemoteModelCallback) iin;
            }
            return new Proxy(binder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == TRANSACTION_onDistributeCanData) {
                data.enforceInterface(DESCRIPTOR);
                byte[] _data = data.createByteArray();
                onDistributeCanData(_data);
                reply.writeNoException();
                return true;
            } else if (code == INTERFACE_TRANSACTION) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements ICanRemoteModelCallback {
            private final IBinder mRemote;

            Proxy(IBinder remote) {
                mRemote = remote;
            }

            @Override
            public IBinder asBinder() {
                return mRemote;
            }

            @Override
            public void onDistributeCanData(byte[] data) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(DESCRIPTOR);
                    _data.writeByteArray(data);
                    mRemote.transact(TRANSACTION_onDistributeCanData, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
