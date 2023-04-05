package com.afwsamples.testdpc.common;
public class ProvisioningStateUtil {

    private ProvisioningStateUtil()
    {
        return;
    }

    public static boolean isDeviceProvisioned(android.content.Context p3)
    {
        int v1 = 0;
        if (android.provider.Settings$Global.getInt(p3.getContentResolver(), "device_provisioned", 0) != 0) {
            v1 = 1;
        }
        return v1;
    }

    public static boolean isDeviceUnprovisionedAndNoDeviceOwner(android.content.Context p1)
    {
        if ((com.afwsamples.testdpc.common.ProvisioningStateUtil.isDeviceProvisioned(p1)) || (com.afwsamples.testdpc.common.ProvisioningStateUtil.isManaged(p1))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public static boolean isManaged(android.content.Context p7)
    {
        int v4 = 0;
        android.app.admin.DevicePolicyManager v3_1 = ((android.app.admin.DevicePolicyManager) p7.getSystemService("device_policy"));
        java.util.List v2 = v3_1.getActiveAdmins();
        if (v2 != null) {
            java.util.Iterator v5_1 = v2.iterator();
            while (v5_1.hasNext()) {
                String v1 = ((android.content.ComponentName) v5_1.next()).getPackageName();
                if ((v3_1.isDeviceOwnerApp(v1)) || (v3_1.isProfileOwnerApp(v1))) {
                    v4 = 1;
                    break;
                }
            }
        }
        return v4;
    }

    public static boolean isManagedByTestDPC(android.content.Context p3)
    {
        int v2_2;
        android.app.admin.DevicePolicyManager v0_1 = ((android.app.admin.DevicePolicyManager) p3.getSystemService("device_policy"));
        String v1 = p3.getPackageName();
        if ((!v0_1.isProfileOwnerApp(v1)) && (!v0_1.isDeviceOwnerApp(v1))) {
            v2_2 = 0;
        } else {
            v2_2 = 1;
        }
        return v2_2;
    }

    public static boolean isProvisioningAllowed(android.content.Context p4, String p5)
    {
        int v1_0 = 0;
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 24) {
            if (!"android.app.action.PROVISION_MANAGED_DEVICE".equals(p5)) {
                if ("android.app.action.PROVISION_MANAGED_PROFILE".equals(p5)) {
                    v1_0 = 1;
                }
            } else {
                if (com.afwsamples.testdpc.common.Util.SDK_INT == 23) {
                    v1_0 = com.afwsamples.testdpc.common.ProvisioningStateUtil.isDeviceUnprovisionedAndNoDeviceOwner(p4);
                }
            }
        } else {
            v1_0 = ((android.app.admin.DevicePolicyManager) p4.getSystemService("device_policy")).isProvisioningAllowed(p5);
        }
        return v1_0;
    }
}
