package com.afwsamples.testdpc.comp;
public class DeviceOwnerService extends android.app.Service {
    private static final String TAG = "DeviceOwnerService";
    private android.os.Binder mBinder;

    public DeviceOwnerService()
    {
        return;
    }

    public android.os.IBinder onBind(android.content.Intent p2)
    {
        return this.mBinder;
    }

    public void onCreate()
    {
        this.mBinder = new com.afwsamples.testdpc.comp.DeviceOwnerService$DeviceOwnerServiceImpl(this, 0);
        return;
    }
}
