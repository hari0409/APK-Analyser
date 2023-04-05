package com.afwsamples.testdpc.profilepolicy.apprestrictions;
public class AppRestrictionsProxy extends android.app.Service {
    private android.os.Messenger mMessenger;

    public AppRestrictionsProxy()
    {
        return;
    }

    public android.os.IBinder onBind(android.content.Intent p2)
    {
        return this.mMessenger.getBinder();
    }

    public void onCreate()
    {
        this.mMessenger = new android.os.Messenger(new com.afwsamples.testdpc.profilepolicy.apprestrictions.AppRestrictionsProxyHandler(this, com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this)));
        return;
    }
}
