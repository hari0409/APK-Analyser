package com.afwsamples.testdpc;
public class DeviceAdminService extends android.app.admin.DeviceAdminService {
    private android.content.BroadcastReceiver mPackageChangedReceiver;

    public DeviceAdminService()
    {
        return;
    }

    private void registerPackageChangesReceiver()
    {
        android.content.IntentFilter v0_1 = new android.content.IntentFilter();
        v0_1.addAction("android.intent.action.PACKAGE_ADDED");
        v0_1.addAction("android.intent.action.PACKAGE_REMOVED");
        v0_1.addDataScheme("package");
        this.mPackageChangedReceiver = new com.afwsamples.testdpc.PackageMonitorReceiver();
        this.getApplicationContext().registerReceiver(this.mPackageChangedReceiver, v0_1);
        return;
    }

    private void unregisterPackageChangesReceiver()
    {
        if (this.mPackageChangedReceiver != null) {
            this.getApplicationContext().unregisterReceiver(this.mPackageChangedReceiver);
            this.mPackageChangedReceiver = 0;
        }
        return;
    }

    protected void dump(java.io.FileDescriptor p3, java.io.PrintWriter p4, String[] p5)
    {
        new com.afwsamples.testdpc.ShellCommand(this.getApplicationContext(), p4, p5).run();
        return;
    }

    public void onCreate()
    {
        super.onCreate();
        this.registerPackageChangesReceiver();
        return;
    }

    public void onDestroy()
    {
        super.onDestroy();
        this.unregisterPackageChangesReceiver();
        return;
    }
}
