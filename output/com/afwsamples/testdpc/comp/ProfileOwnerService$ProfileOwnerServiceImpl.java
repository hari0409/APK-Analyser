package com.afwsamples.testdpc.comp;
 class ProfileOwnerService$ProfileOwnerServiceImpl extends com.afwsamples.testdpc.comp.IProfileOwnerService$Stub {
    private android.content.Context mContext;
    private android.app.admin.DevicePolicyManager mDpm;
    private android.content.pm.PackageManager mPm;

    public ProfileOwnerService$ProfileOwnerServiceImpl(android.content.Context p2)
    {
        this.mContext = p2;
        this.mDpm = ((android.app.admin.DevicePolicyManager) p2.getSystemService("device_policy"));
        this.mPm = p2.getPackageManager();
        return;
    }

    public boolean installCaCertificate(android.content.res.AssetFileDescriptor p6)
    {
        try {
            java.io.FileInputStream v1 = p6.createInputStream();
            Throwable v4 = 0;
            try {
                Throwable v2_5 = com.afwsamples.testdpc.common.Util.installCaCertificate(v1, this.mDpm, com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.mContext));
            } catch (Throwable v2_1) {
                Throwable v3_0 = v2_1;
                if (v1 != null) {
                    if (v4 == null) {
                        v1.close();
                    } else {
                        v1.close();
                    }
                }
                throw v3_0;
            } catch (Throwable v2_0) {
                try {
                    throw v2_0;
                } catch (Throwable v3_0) {
                    v4 = v2_0;
                }
            }
            if (v1 == null) {
                return v2_5;
            } else {
                if (0 == 0) {
                    v1.close();
                    return v2_5;
                } else {
                    try {
                        v1.close();
                    } catch (Throwable v3_1) {
                        0.addSuppressed(v3_1);
                    }
                    return v2_5;
                }
            }
        } catch (java.io.IOException v0) {
            android.util.Log.e("ProfileOwnerService", "Unable to install a certificate", v0);
            v2_5 = 0;
            return v2_5;
        }
    }

    public boolean isLauncherIconHidden()
    {
        int v0_1;
        if (this.mPm.getComponentEnabledSetting(new android.content.ComponentName(this.mContext, com.afwsamples.testdpc.PolicyManagementActivity)) != 2) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public void setLauncherIconHidden(boolean p5)
    {
        int v0_1;
        android.content.pm.PackageManager v1 = this.mPm;
        android.content.ComponentName v2_1 = new android.content.ComponentName(this.mContext, com.afwsamples.testdpc.PolicyManagementActivity);
        if (!p5) {
            v0_1 = 0;
        } else {
            v0_1 = 2;
        }
        v1.setComponentEnabledSetting(v2_1, v0_1, 1);
        return;
    }
}
