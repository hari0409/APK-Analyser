package com.afwsamples.testdpc.common;
public class PermissionsHelper {
    public static String TAG;

    static PermissionsHelper()
    {
        com.afwsamples.testdpc.common.PermissionsHelper.TAG = "PermissionsHelper";
        return;
    }

    public PermissionsHelper()
    {
        return;
    }

    public static boolean ensureRequiredPermissions(String[] p8, android.content.ComponentName p9, android.content.Context p10)
    {
        int v4 = 0;
        try {
            java.util.List vtmp4 = java.util.Arrays.asList(p10.getPackageManager().getPackageInfo(p10.getPackageName(), 4096).requestedPermissions);
            int v5_0 = 0;
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.e(com.afwsamples.testdpc.common.PermissionsHelper.TAG, "Could not find own package.", v0);
            return v4;
        }
        while (v5_0 < p8.length) {
            String v1 = p8[v5_0];
            if (vtmp4.contains(v1)) {
                if (!com.afwsamples.testdpc.common.PermissionsHelper.maybeGrantDangerousPermission(v1, p9, p10)) {
                    return v4;
                } else {
                    v5_0++;
                }
            } else {
                android.util.Log.e(com.afwsamples.testdpc.common.PermissionsHelper.TAG, new StringBuilder().append("Missing required permission from manifest: ").append(v1).toString());
                return v4;
            }
        }
        v4 = 1;
        return v4;
    }

    private static boolean hasPermissionGranted(android.content.ComponentName p3, android.content.Context p4, String p5)
    {
        int v1 = 1;
        if (((android.app.admin.DevicePolicyManager) p4.getSystemService(android.app.admin.DevicePolicyManager)).getPermissionGrantState(p3, p4.getPackageName(), p5) != 1) {
            v1 = 0;
        }
        return v1;
    }

    private static boolean isPermissionDangerous(String p6, android.content.Context p7)
    {
        int v2_0 = 1;
        try {
            android.content.pm.PermissionInfo v1 = p7.getPackageManager().getPermissionInfo(p6, 0);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.e(com.afwsamples.testdpc.common.PermissionsHelper.TAG, "Failed to look up permission.", v0);
            v2_0 = 0;
            return v2_0;
        }
        if ((v1 == null) || ((v1.protectionLevel & 15) != 1)) {
            v2_0 = 0;
            return v2_0;
        } else {
            return v2_0;
        }
    }

    private static boolean maybeGrantDangerousPermission(String p3, android.content.ComponentName p4, android.content.Context p5)
    {
        boolean v1 = 1;
        if (com.afwsamples.testdpc.common.PermissionsHelper.isPermissionDangerous(p3, p5)) {
            if (com.afwsamples.testdpc.common.ProvisioningStateUtil.isManagedByTestDPC(p5)) {
                if (!com.afwsamples.testdpc.common.PermissionsHelper.hasPermissionGranted(p4, p5, p3)) {
                    v1 = ((android.app.admin.DevicePolicyManager) p5.getSystemService("device_policy")).setPermissionGrantState(p4, p5.getPackageName(), p3, 1);
                }
            } else {
                v1 = 0;
            }
        }
        return v1;
    }
}
