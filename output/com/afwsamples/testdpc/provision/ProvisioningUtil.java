package com.afwsamples.testdpc.provision;
public class ProvisioningUtil {

    public ProvisioningUtil()
    {
        return;
    }

    public static void enableProfile(android.content.Context p3)
    {
        android.app.admin.DevicePolicyManager v1_1 = ((android.app.admin.DevicePolicyManager) p3.getSystemService("device_policy"));
        android.content.ComponentName v0 = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p3);
        v1_1.setProfileName(v0, p3.getString(2131690087));
        v1_1.setProfileEnabled(v0);
        return;
    }
}
