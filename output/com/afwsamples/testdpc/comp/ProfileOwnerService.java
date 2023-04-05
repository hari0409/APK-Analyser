package com.afwsamples.testdpc.comp;
public class ProfileOwnerService extends android.app.Service {
    private static final String TAG = "ProfileOwnerService";
    private android.os.Binder mBinder;

    public ProfileOwnerService()
    {
        return;
    }

    public android.os.IBinder onBind(android.content.Intent p2)
    {
        return this.mBinder;
    }

    public void onCreate()
    {
        super.onCreate();
        this.mBinder = new com.afwsamples.testdpc.comp.ProfileOwnerService$ProfileOwnerServiceImpl(this);
        return;
    }
}
