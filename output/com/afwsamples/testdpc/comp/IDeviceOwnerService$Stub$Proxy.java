package com.afwsamples.testdpc.comp;
 class IDeviceOwnerService$Stub$Proxy implements com.afwsamples.testdpc.comp.IDeviceOwnerService {
    private android.os.IBinder mRemote;

    IDeviceOwnerService$Stub$Proxy(android.os.IBinder p1)
    {
        this.mRemote = p1;
        return;
    }

    public android.os.IBinder asBinder()
    {
        return this.mRemote;
    }

    public String getInterfaceDescriptor()
    {
        return "com.afwsamples.testdpc.comp.IDeviceOwnerService";
    }

    public void notifyUserIsUnlocked(android.os.UserHandle p6)
    {
        android.os.Parcel v0 = android.os.Parcel.obtain();
        try {
            v0.writeInterfaceToken("com.afwsamples.testdpc.comp.IDeviceOwnerService");
        } catch (android.os.IBinder v1_0) {
            v0.recycle();
            throw v1_0;
        }
        if (p6 == null) {
            v0.writeInt(0);
        } else {
            v0.writeInt(1);
            p6.writeToParcel(v0, 0);
        }
        this.mRemote.transact(1, v0, 0, 1);
        v0.recycle();
        return;
    }
}
