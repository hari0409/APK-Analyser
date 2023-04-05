package com.afwsamples.testdpc.profilepolicy.apprestrictions;
public class AppRestrictionsProxyHandler extends android.os.Handler {
    private static final String APPLICATION_RESTRICTIONS_MANAGING_PACKAGE_KEY = "application_restrictions_managing_package";
    private static final String APPLICATION_RESTRICTIONS_MANAGING_PACKAGE_SIGNATURES_KEY = "application_restrictions_managing_package_signatures";
    public static final String KEY_APPLICATION_RESTRICTIONS = "applicationRestrictions";
    public static final String KEY_CAN_SET_APPLICATION_RESTRICTIONS = "canSetApplicationRestrictions";
    public static final String KEY_PACKAGE_NAME = "packageName";
    private static final int MSG_CAN_SET_APPLICATION_RESTRICTIONS = 2;
    private static final int MSG_GET_APPLICATION_RESTRICTIONS = 3;
    private static final int MSG_SET_APPLICATION_RESTRICTIONS = 1;
    private static final String TAG = "AppRestrictionsProxy";
    private final android.content.ComponentName mAdmin;
    private final android.content.Context mContext;

    public AppRestrictionsProxyHandler(android.content.Context p1, android.content.ComponentName p2)
    {
        this.mContext = p1;
        this.mAdmin = p2;
        return;
    }

    private android.os.Bundle getApplicationRestrictions(String p4)
    {
        if (p4 != null) {
            return ((android.app.admin.DevicePolicyManager) this.mContext.getSystemService("device_policy")).getApplicationRestrictions(this.mAdmin, p4);
        } else {
            throw new IllegalArgumentException("packageName cannot be null.");
        }
    }

    public static String getApplicationRestrictionsManagingPackage(android.content.Context p3)
    {
        return android.preference.PreferenceManager.getDefaultSharedPreferences(p3).getString("application_restrictions_managing_package", 0);
    }

    private boolean isCallerAuthorized(int p17)
    {
        int v12_4;
        String v1 = com.afwsamples.testdpc.profilepolicy.apprestrictions.AppRestrictionsProxyHandler.getApplicationRestrictionsManagingPackage(this.mContext);
        if (v1 != null) {
            android.content.pm.PackageManager v9 = this.mContext.getPackageManager();
            String v2 = v9.getNameForUid(p17);
            if (v1.equals(v2)) {
                java.util.Set v11 = android.preference.PreferenceManager.getDefaultSharedPreferences(this.mContext).getStringSet("application_restrictions_managing_package_signatures", 0);
                if (v11 != null) {
                    try {
                        android.content.pm.PackageInfo v8 = v9.getPackageInfo(v2, 64);
                    } catch (android.content.pm.PackageManager$NameNotFoundException v5) {
                        throw new IllegalArgumentException(v5);
                    }
                    if (v8 != null) {
                        android.content.pm.Signature[] v3 = v8.signatures;
                        if (v3 != null) {
                            java.util.ArrayList v7_1 = new java.util.ArrayList(v11.size());
                            int v12_11 = v11.iterator();
                            while (v12_11.hasNext()) {
                                v7_1.add(new android.content.pm.Signature(((String) v12_11.next())));
                            }
                            String v13_5 = v3.length;
                            int v12_12 = 0;
                            while (v12_12 < v13_5) {
                                android.content.pm.Signature v4 = v3[v12_12];
                                java.util.Iterator v14_1 = v7_1.iterator();
                                while (v14_1.hasNext()) {
                                    if (((android.content.pm.Signature) v14_1.next()).equals(v4)) {
                                        v12_4 = 1;
                                    }
                                }
                                v12_12++;
                            }
                            android.util.Log.e("AppRestrictionsProxy", "Calling package signature doesn\'t match");
                            v12_4 = 0;
                        } else {
                            throw new IllegalArgumentException(new StringBuilder().append("Package info did not contain signatures for package ").append(v2).append(".").toString());
                        }
                    } else {
                        throw new IllegalArgumentException(new StringBuilder().append("Package info could not be retrieved for package ").append(v2).append(".").toString());
                    }
                } else {
                    throw new IllegalStateException("App restrictions managing package signatures have not been stored.");
                }
            } else {
                android.util.Log.e("AppRestrictionsProxy", "Caller is not app restrictions managing package");
                v12_4 = 0;
            }
        } else {
            android.util.Log.e("AppRestrictionsProxy", "There is no app restrictions managing package");
            v12_4 = 0;
        }
        return v12_4;
    }

    private void setApplicationRestrictions(String p5, android.os.Bundle p6)
    {
        if (p5 != null) {
            if (p6 != null) {
                android.util.Log.d("AppRestrictionsProxy", new StringBuilder().append("Setting application restrictions for package ").append(p5).toString());
                ((android.app.admin.DevicePolicyManager) this.mContext.getSystemService("device_policy")).setApplicationRestrictions(this.mAdmin, p5, p6);
                return;
            } else {
                throw new IllegalArgumentException("applicationRestrictions bundle cannot be null.");
            }
        } else {
            throw new IllegalArgumentException("packageName cannot be null.");
        }
    }

    public static void setApplicationRestrictionsManagingPackage(android.content.Context p9, String p10)
    {
        if (p10 != null) {
            try {
                android.content.pm.PackageInfo v1 = p9.getPackageManager().getPackageInfo(p10, 64);
            } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
                throw new IllegalArgumentException(new StringBuilder().append("Cannot set ").append(p10).append(" as application ").append("restriction managing package as it is not installed.").toString(), v0);
            }
            if (v1 != null) {
                android.content.pm.Signature[] v5 = v1.signatures;
                if (v5 != null) {
                    java.util.HashSet v4_1 = new java.util.HashSet();
                    String v7_0 = v5.length;
                    android.content.SharedPreferences$Editor v6_0 = 0;
                    while (v6_0 < v7_0) {
                        v4_1.add(v5[v6_0].toCharsString());
                        v6_0++;
                    }
                    android.preference.PreferenceManager.getDefaultSharedPreferences(p9).edit().putStringSet("application_restrictions_managing_package_signatures", v4_1).putString("application_restrictions_managing_package", p10).apply();
                } else {
                    throw new IllegalArgumentException(new StringBuilder().append("Package info did not contain signatures for package ").append(p10).append(".").toString());
                }
            } else {
                throw new IllegalArgumentException(new StringBuilder().append("Package info could not be retrieved for package ").append(p10).append(".").toString());
            }
        } else {
            android.preference.PreferenceManager.getDefaultSharedPreferences(p9).edit().putStringSet("application_restrictions_managing_package_signatures", 0).putString("application_restrictions_managing_package", 0).apply();
        }
        return;
    }

    public void handleMessage(android.os.Message p9)
    {
        switch (p9.what) {
            case 1:
                if (this.isCallerAuthorized(p9.sendingUid)) {
                    this.setApplicationRestrictions(p9.getData().getString("packageName"), p9.getData().getBundle("applicationRestrictions"));
                } else {
                }
                break;
            case 2:
                android.os.Bundle v4_3 = new android.os.Bundle();
                v4_3.putBoolean("canSetApplicationRestrictions", this.isCallerAuthorized(p9.sendingUid));
                android.os.Message v3_1 = android.os.Message.obtain();
                v3_1.setData(v4_3);
                try {
                    p9.replyTo.send(v3_1);
                } catch (android.os.RemoteException v1_1) {
                    android.util.Log.e("AppRestrictionsProxy", "Unable to respond to canSetApplicationRestrictions.", v1_1);
                }
                break;
            case 3:
                if (!this.isCallerAuthorized(p9.sendingUid)) {
                } else {
                    android.os.Bundle v0_0 = this.getApplicationRestrictions(p9.getData().getString("packageName"));
                    android.os.Bundle v4_1 = new android.os.Bundle();
                    v4_1.putBundle("applicationRestrictions", v0_0);
                    android.os.Message v3_0 = android.os.Message.obtain();
                    v3_0.setData(v4_1);
                    try {
                        p9.replyTo.send(v3_0);
                    } catch (android.os.RemoteException v1_0) {
                        android.util.Log.e("AppRestrictionsProxy", "Unable to respond to getApplicationRestrictions.", v1_0);
                    }
                }
                break;
            default:
                throw new IllegalArgumentException(new StringBuilder().append("Unknown \'what\': ").append(p9.what).toString());
        }
        return;
    }
}
