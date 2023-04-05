package com.afwsamples.testdpc.comp;
 class IProfileOwnerService$Stub$Proxy implements com.afwsamples.testdpc.comp.IProfileOwnerService {
    private android.os.IBinder mRemote;

    IProfileOwnerService$Stub$Proxy(android.os.IBinder p1)
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
        return "com.afwsamples.testdpc.comp.IProfileOwnerService";
    }

    public boolean installCaCertificate(android.content.res.AssetFileDescriptor p8)
    {
        Throwable v2 = 1;
        android.os.Parcel v0 = android.os.Parcel.obtain();
        android.os.Parcel v1 = android.os.Parcel.obtain();
        try {
            v0.writeInterfaceToken("com.afwsamples.testdpc.comp.IProfileOwnerService");
        } catch (Throwable v3_1) {
            v1.recycle();
            v0.recycle();
            throw v3_1;
        }
        if (p8 == null) {
            v0.writeInt(0);
        } else {
            v0.writeInt(1);
            p8.writeToParcel(v0, 0);
        }
        this.mRemote.transact(3, v0, v1, 0);
        v1.readException();
        if (v1.readInt() == 0) {
            v2 = 0;
        }
        v1.recycle();
        v0.recycle();
        return v2;
    }

    public boolean isLauncherIconHidden()
    {
        int v2 = 0;
        android.os.Parcel v0 = android.os.Parcel.obtain();
        android.os.Parcel v1 = android.os.Parcel.obtain();
        try {
            v0.writeInterfaceToken("com.afwsamples.testdpc.comp.IProfileOwnerService");
            this.mRemote.transact(2, v0, v1, 0);
            v1.readException();
        } catch (Throwable v3_1) {
            v1.recycle();
            v0.recycle();
            throw v3_1;
        }
        if (v1.readInt() != 0) {
            v2 = 1;
        }
        v1.recycle();
        v0.recycle();
        return v2;
    }

    public void setLauncherIconHidden(boolean p6)
    {
        int v1_0 = 1;
        android.os.Parcel v0 = android.os.Parcel.obtain();
        try {
            v0.writeInterfaceToken("com.afwsamples.testdpc.comp.IProfileOwnerService");
        } catch (int v1_2) {
            v0.recycle();
            throw v1_2;
        }
        if (!p6) {
            v1_0 = 0;
        }
        v0.writeInt(v1_0);
        this.mRemote.transact(1, v0, 0, 1);
        v0.recycle();
        return;
    }
}
