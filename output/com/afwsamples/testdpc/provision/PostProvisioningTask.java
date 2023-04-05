package com.afwsamples.testdpc.provision;
public class PostProvisioningTask {
    private static final String KEY_POST_PROV_DONE = "key_post_prov_done";
    private static final String POST_PROV_PREFS = "post_prov_prefs";
    private static final String SETUP_MANAGEMENT_LAUNCH_ACTIVITY = "com.afwsamples.testdpc.SetupManagementLaunchActivity";
    private static final String TAG = "PostProvisioningTask";
    private final android.content.Context mContext;
    private final android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private final android.content.SharedPreferences mSharedPrefs;

    public PostProvisioningTask(android.content.Context p3)
    {
        this.mContext = p3;
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) p3.getSystemService("device_policy"));
        this.mSharedPrefs = p3.getSharedPreferences("post_prov_prefs", 0);
        return;
    }

    private void autoGrantRequestedPermissionsToSelf()
    {
        String v1 = this.mContext.getPackageName();
        android.content.ComponentName v0 = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.mContext);
        java.util.Iterator v5_1 = this.getRuntimePermissions(this.mContext.getPackageManager(), v1).iterator();
        while (v5_1.hasNext()) {
            String v2_1 = ((String) v5_1.next());
            boolean v4 = this.mDevicePolicyManager.setPermissionGrantState(v0, v1, v2_1, 1);
            android.util.Log.d("PostProvisioningTask", new StringBuilder().append("Auto-granting ").append(v2_1).append(", success: ").append(v4).toString());
            if (!v4) {
                android.util.Log.e("PostProvisioningTask", new StringBuilder().append("Failed to auto grant permission to self: ").append(v2_1).toString());
            }
        }
        return;
    }

    private java.util.List getRuntimePermissions(android.content.pm.PackageManager p9, String p10)
    {
        java.util.ArrayList v2_1 = new java.util.ArrayList();
        try {
            android.content.pm.PackageInfo v1 = p9.getPackageInfo(p10, 4096);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.e("PostProvisioningTask", new StringBuilder().append("Could not retrieve info about the package: ").append(p10).toString(), v0);
            return v2_1;
        }
        if ((v1 == null) || (v1.requestedPermissions == null)) {
            return v2_1;
        } else {
            String[] v5_3 = v1.requestedPermissions;
            int v6_1 = v5_3.length;
            int v4_2 = 0;
            while (v4_2 < v6_1) {
                String v3 = v5_3[v4_2];
                if (this.isRuntimePermission(p9, v3)) {
                    v2_1.add(v3);
                }
                v4_2++;
            }
            return v2_1;
        }
    }

    private boolean isPostProvisioningDone()
    {
        return this.mSharedPrefs.getBoolean("key_post_prov_done", 0);
    }

    private boolean isRuntimePermission(android.content.pm.PackageManager p7, String p8)
    {
        int v2_0 = 1;
        try {
            android.content.pm.PermissionInfo v1 = p7.getPermissionInfo(p8, 0);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.i("PostProvisioningTask", new StringBuilder().append("Could not retrieve info about the permission: ").append(p8).toString());
            v2_0 = 0;
            return v2_0;
        }
        if ((v1 == null) || ((v1.protectionLevel & 15) != 1)) {
        } else {
            return v2_0;
        }
    }

    private void markPostProvisioningDone()
    {
        this.mSharedPrefs.edit().putBoolean("key_post_prov_done", 1).commit();
        return;
    }

    private void maybeSetAffiliationIds(android.os.PersistableBundle p5)
    {
        if (p5 != null) {
            String v0 = p5.getString("affiliation_id");
            if (v0 != null) {
                this.mDevicePolicyManager.setAffiliationIds(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.mContext), java.util.Collections.singleton(v0));
            }
        }
        return;
    }

    public android.content.Intent getPostProvisioningLaunchIntent(android.content.Intent p15)
    {
        android.content.Intent v3_0;
        android.os.PersistableBundle v5_1 = ((android.os.PersistableBundle) p15.getParcelableExtra("android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"));
        String v9 = this.mContext.getPackageName();
        boolean v10 = com.afwsamples.testdpc.common.LaunchIntentUtil.isSynchronousAuthLaunch(v5_1);
        boolean v4 = com.afwsamples.testdpc.common.LaunchIntentUtil.isCosuLaunch(v5_1);
        boolean v7 = this.mDevicePolicyManager.isProfileOwnerApp(v9);
        boolean vtmp6 = this.mDevicePolicyManager.isDeviceOwnerApp(v9);
        if ((v7) || (vtmp6)) {
            android.content.Intent v8_1;
            if (!v4) {
                v8_1 = new android.content.Intent(this.mContext, com.afwsamples.testdpc.FinalizeActivity);
            } else {
                v8_1 = new android.content.Intent(this.mContext, com.afwsamples.testdpc.cosu.EnableCosuActivity);
                v8_1.putExtra("android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE", v5_1);
            }
            if (v10) {
                String v1 = com.afwsamples.testdpc.common.LaunchIntentUtil.getAddedAccountName(v5_1);
                if (v1 != null) {
                    v8_1.putExtra("account_name", v1);
                }
            }
            if ((!v10) && (!v4)) {
                android.accounts.Account[] v2 = android.accounts.AccountManager.get(this.mContext).getAccounts();
                if ((v2 != null) && (v2.length == 0)) {
                    v3_0 = new android.content.Intent(this.mContext, com.afwsamples.testdpc.AddAccountActivity);
                    v3_0.addFlags(268435456);
                    v3_0.putExtra("nextActivityIntent", v8_1);
                    return v3_0;
                }
            }
            v8_1.addFlags(268435456);
            v3_0 = v8_1;
        } else {
            v3_0 = 0;
        }
        return v3_0;
    }

    public boolean performPostProvisioningOperations(android.content.Intent p7)
    {
        int v1 = 1;
        if (!this.isPostProvisioningDone()) {
            this.markPostProvisioningDone();
            if (com.afwsamples.testdpc.common.Util.SDK_INT >= 23) {
                this.autoGrantRequestedPermissionsToSelf();
            }
            android.os.Parcelable vtmp2 = p7.getParcelableExtra("android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE");
            if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
                this.maybeSetAffiliationIds(((android.os.PersistableBundle) vtmp2));
            }
            this.mContext.getPackageManager().setComponentEnabledSetting(new android.content.ComponentName(this.mContext, "com.afwsamples.testdpc.SetupManagementLaunchActivity"), 2, 1);
        } else {
            v1 = 0;
        }
        return v1;
    }
}
