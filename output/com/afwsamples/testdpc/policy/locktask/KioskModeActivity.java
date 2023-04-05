package com.afwsamples.testdpc.policy.locktask;
public class KioskModeActivity extends android.app.Activity {
    private static final String KIOSK_APPS_KEY = "kiosk_apps";
    private static final String KIOSK_PREFERENCE_FILE = "kiosk_preference_file";
    private static final String[] KIOSK_USER_RESTRICTIONS = None;
    public static final String LOCKED_APP_PACKAGE_LIST = "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST";
    private static final String TAG = "KioskModeActivity";
    private android.content.ComponentName mAdminComponentName;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private java.util.ArrayList mKioskPackages;
    private android.content.pm.PackageManager mPackageManager;

    static KioskModeActivity()
    {
        String[] v0_1 = new String[5];
        v0_1[0] = "no_safe_boot";
        v0_1[1] = "no_factory_reset";
        v0_1[2] = "no_add_user";
        v0_1[3] = "no_physical_media";
        v0_1[4] = "no_adjust_volume";
        com.afwsamples.testdpc.policy.locktask.KioskModeActivity.KIOSK_USER_RESTRICTIONS = v0_1;
        return;
    }

    public KioskModeActivity()
    {
        return;
    }

    static synthetic android.content.pm.PackageManager access$000(com.afwsamples.testdpc.policy.locktask.KioskModeActivity p1)
    {
        return p1.mPackageManager;
    }

    private void restorePreviousConfiguration()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 24) {
            android.content.SharedPreferences vtmp1 = this.getSharedPreferences("kiosk_preference_file", 0);
            String[] v5_1 = com.afwsamples.testdpc.policy.locktask.KioskModeActivity.KIOSK_USER_RESTRICTIONS;
            int v6 = v5_1.length;
            int v3_1 = 0;
            while (v3_1 < v6) {
                String v2 = v5_1[v3_1];
                this.setUserRestriction(v2, vtmp1.getBoolean(v2, 0));
                v3_1++;
            }
        }
        return;
    }

    private void saveCurrentConfiguration()
    {
        int v4 = 0;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 24) {
            android.os.Bundle v2 = this.mDevicePolicyManager.getUserRestrictions(this.mAdminComponentName);
            android.content.SharedPreferences$Editor v1 = this.getSharedPreferences("kiosk_preference_file", 0).edit();
            String[] v5_2 = com.afwsamples.testdpc.policy.locktask.KioskModeActivity.KIOSK_USER_RESTRICTIONS;
            int v6_0 = v5_2.length;
            while (v4 < v6_0) {
                String v3 = v5_2[v4];
                v1.putBoolean(v3, v2.getBoolean(v3));
                v4++;
            }
            v1.commit();
        }
        return;
    }

    private void setDefaultKioskPolicies(boolean p8)
    {
        if (!p8) {
            this.restorePreviousConfiguration();
        } else {
            this.saveCurrentConfiguration();
            this.setUserRestriction("no_safe_boot", p8);
            this.setUserRestriction("no_factory_reset", p8);
            this.setUserRestriction("no_add_user", p8);
            this.setUserRestriction("no_physical_media", p8);
            this.setUserRestriction("no_adjust_volume", p8);
        }
        String v2_2;
        if (!p8) {
            v2_2 = new String[0];
        } else {
            String[] v5 = new String[0];
            v2_2 = ((String[]) this.mKioskPackages.toArray(v5));
        }
        this.mDevicePolicyManager.setLockTaskPackages(this.mAdminComponentName, v2_2);
        android.content.SharedPreferences$Editor v0 = this.getSharedPreferences("kiosk_preference_file", 0).edit();
        if (!p8) {
            v0.remove("kiosk_apps");
        } else {
            v0.putStringSet("kiosk_apps", new java.util.HashSet(this.mKioskPackages));
        }
        v0.commit();
        return;
    }

    private void setUserRestriction(String p3, boolean p4)
    {
        if (!p4) {
            this.mDevicePolicyManager.clearUserRestriction(this.mAdminComponentName, p3);
        } else {
            this.mDevicePolicyManager.addUserRestriction(this.mAdminComponentName, p3);
        }
        return;
    }

    public void onBackdoorClicked()
    {
        this.stopLockTask();
        this.setDefaultKioskPolicies(0);
        this.mDevicePolicyManager.clearPackagePersistentPreferredActivities(this.mAdminComponentName, this.getPackageName());
        this.mPackageManager.setComponentEnabledSetting(new android.content.ComponentName(this.getPackageName(), this.getClass().getName()), 0, 1);
        this.finish();
        this.startActivity(new android.content.Intent(this, com.afwsamples.testdpc.PolicyManagementActivity));
        return;
    }

    protected void onCreate(android.os.Bundle p9)
    {
        super.onCreate(p9);
        this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this);
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getSystemService("device_policy"));
        this.mPackageManager = this.getPackageManager();
        String[] v2 = this.getIntent().getStringArrayExtra("com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST");
        if (v2 == null) {
            this.mKioskPackages = new java.util.ArrayList(this.getSharedPreferences("kiosk_preference_file", 0).getStringSet("kiosk_apps", new java.util.HashSet()));
        } else {
            this.mKioskPackages = new java.util.ArrayList();
            java.util.HashSet v7_3 = v2.length;
            int v5_8 = 0;
            while (v5_8 < v7_3) {
                this.mKioskPackages.add(v2[v5_8]);
                v5_8++;
            }
            this.mKioskPackages.remove(this.getPackageName());
            this.mKioskPackages.add(this.getPackageName());
            this.setDefaultKioskPolicies(1);
        }
        this.mKioskPackages.remove(this.getPackageName());
        this.mKioskPackages.add(this.getPackageName());
        com.afwsamples.testdpc.policy.locktask.KioskModeActivity$KioskAppsArrayAdapter v0_1 = new com.afwsamples.testdpc.policy.locktask.KioskModeActivity$KioskAppsArrayAdapter(this, this, 2131296534, this.mKioskPackages);
        android.widget.ListView v1_1 = new android.widget.ListView(this);
        v1_1.setAdapter(v0_1);
        v1_1.setOnItemClickListener(new com.afwsamples.testdpc.policy.locktask.KioskModeActivity$1(this, v0_1));
        this.setContentView(v1_1);
        return;
    }

    protected void onStart()
    {
        super.onStart();
        android.app.ActivityManager v0_1 = ((android.app.ActivityManager) this.getSystemService("activity"));
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 23) {
            if (v0_1.getLockTaskModeState() == 0) {
                this.startLockTask();
            }
        } else {
            if (!v0_1.isInLockTaskMode()) {
                this.startLockTask();
            }
        }
        return;
    }
}
