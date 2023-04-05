package com.afwsamples.testdpc.common;
public class Util {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final boolean IS_RUNNING_S = False;
    public static final int SDK_INT = 0;
    private static final String TAG = "Util";

    static Util()
    {
        int v0_0 = 1;
        if ((android.os.Build$VERSION.CODENAME.length() != 1) || (android.os.Build$VERSION.CODENAME.charAt(0) != 83)) {
            v0_0 = 0;
        }
        int v0_2;
        com.afwsamples.testdpc.common.Util.IS_RUNNING_S = v0_0;
        if (!com.afwsamples.testdpc.common.Util.IS_RUNNING_S) {
            v0_2 = android.os.Build$VERSION.SDK_INT;
        } else {
            v0_2 = 10000;
        }
        com.afwsamples.testdpc.common.Util.SDK_INT = v0_2;
        return;
    }

    public Util()
    {
        return;
    }

    private static String constNameWithoutPrefix(String p2, reflect.Field p3)
    {
        return p3.getName().substring(p2.length());
    }

    public static String constantToString(Class p7, String p8, int p9)
    {
        String v3_0 = p7.getDeclaredFields();
        int v4 = v3_0.length;
        String v2_2 = 0;
        while (v2_2 < v4) {
            reflect.Field v0 = v3_0[v2_2];
            int v1 = v0.getModifiers();
            try {
                if ((reflect.Modifier.isStatic(v1)) && ((reflect.Modifier.isFinal(v1)) && ((v0.getType().equals(Integer.TYPE)) && ((v0.getName().startsWith(p8)) && (v0.getInt(0) == p9))))) {
                    String v2_1 = com.afwsamples.testdpc.common.Util.constNameWithoutPrefix(p8, v0);
                    return v2_1;
                }
                v2_2++;
            } catch (int v5) {
            }
        }
        v2_1 = new StringBuilder().append(p8).append(Integer.toString(p9)).toString();
        return v2_1;
    }

    public static String flagsToString(Class p10, String p11, int p12)
    {
        int v1;
        String v5_0 = 0;
        StringBuilder v3_1 = new StringBuilder();
        try {
            if (p12 != 0) {
                v1 = 0;
                reflect.Field[] v6 = p10.getDeclaredFields();
                int v7 = v6.length;
                if (v5_0 >= v7) {
                    if ((p12 == 0) && (v3_1.length() != 0)) {
                        v3_1.deleteCharAt((v3_1.length() - 1));
                    } else {
                        v3_1.append(Integer.toHexString(p12));
                    }
                    v5_0 = v3_1.toString();
                } else {
                    reflect.Field v0 = v6[v5_0];
                    int v2 = v0.getModifiers();
                    if ((!reflect.Modifier.isStatic(v2)) || ((!reflect.Modifier.isFinal(v2)) || ((!v0.getType().equals(Integer.TYPE)) || (!v0.getName().startsWith(p11))))) {
                    } else {
                        int v4 = v0.getInt(0);
                        if ((v4 != 0) || (v1 == 0)) {
                            if ((v4 != 0) && ((p12 & v4) == v4)) {
                                p12 &= (v4 ^ -1);
                                v3_1.append(com.afwsamples.testdpc.common.Util.constNameWithoutPrefix(p11, v0)).append(124);
                            }
                        } else {
                            v5_0 = com.afwsamples.testdpc.common.Util.constNameWithoutPrefix(p11, v0);
                        }
                    }
                }
                return v5_0;
            } else {
                v1 = 1;
            }
        } catch (StringBuilder v8) {
        }
        v5_0++;
    }

    public static CharSequence formatTimestamp(long p6)
    {
        CharSequence v0_2;
        if (p6 != 0) {
            v0_2 = android.text.format.DateUtils.formatSameDayTime(p6, System.currentTimeMillis(), 2, 1);
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public static java.util.List getBindDeviceAdminTargetUsers(android.content.Context p3)
    {
        java.util.List v1_1;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
            v1_1 = com.afwsamples.testdpc.common.Util.getDevicePolicyManager(p3).getBindDeviceAdminTargetUsers(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p3));
        } else {
            v1_1 = java.util.Collections.emptyList();
        }
        return v1_1;
    }

    private static android.app.admin.DevicePolicyManager getDevicePolicyManager(android.content.Context p1)
    {
        return ((android.app.admin.DevicePolicyManager) p1.getSystemService("device_policy"));
    }

    public static android.content.Intent getHomeIntent()
    {
        android.content.Intent v0_1 = new android.content.Intent("android.intent.action.MAIN");
        v0_1.addFlags(268435456);
        v0_1.addCategory("android.intent.category.HOME");
        return v0_1;
    }

    public static android.content.IntentFilter getHomeIntentFilter()
    {
        android.content.IntentFilter v0_1 = new android.content.IntentFilter("android.intent.action.MAIN");
        v0_1.addCategory("android.intent.category.HOME");
        v0_1.addCategory("android.intent.category.DEFAULT");
        return v0_1;
    }

    public static android.content.Intent getLauncherIntent(android.content.Context p2)
    {
        android.content.Intent v0_1 = new android.content.Intent("android.intent.action.MAIN");
        if (!com.afwsamples.testdpc.common.Util.isRunningOnTvDevice(p2)) {
            v0_1.addCategory("android.intent.category.LAUNCHER");
        } else {
            v0_1.addCategory("android.intent.category.LEANBACK_LAUNCHER");
        }
        return v0_1;
    }

    public static String grantStateToString(int p2)
    {
        return com.afwsamples.testdpc.common.Util.constantToString(android.app.admin.DevicePolicyManager, "PERMISSION_GRANT_STATE_", p2);
    }

    public static boolean hasDelegation(android.content.Context p3, String p4)
    {
        boolean v1_2;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
            v1_2 = ((android.app.admin.DevicePolicyManager) p3.getSystemService(android.app.admin.DevicePolicyManager)).getDelegatedScopes(0, p3.getPackageName()).contains(p4);
        } else {
            v1_2 = 0;
        }
        return v1_2;
    }

    public static boolean installCaCertificate(java.io.InputStream p7, android.app.admin.DevicePolicyManager p8, android.content.ComponentName p9)
    {
        boolean v4 = 0;
        if (p7 != null) {
            try {
                java.io.ByteArrayOutputStream v1_1 = new java.io.ByteArrayOutputStream();
                byte[] v0 = new byte[4096];
            } catch (java.io.IOException v2) {
                android.util.Log.e("Util", "installCaCertificate: ", v2);
            }
            while(true) {
                int v3 = p7.read(v0);
                if (v3 <= 0) {
                    break;
                }
                v1_1.write(v0, 0, v3);
            }
            v4 = p8.installCaCert(p9, v1_1.toByteArray());
        }
        return v4;
    }

    public static boolean isAtLeastS()
    {
        if ((!com.afwsamples.testdpc.common.Util.IS_RUNNING_S) && (com.afwsamples.testdpc.common.Util.SDK_INT < 31)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public static boolean isDeviceOwner(android.content.Context p2)
    {
        return com.afwsamples.testdpc.common.Util.getDevicePolicyManager(p2).isDeviceOwnerApp(p2.getPackageName());
    }

    public static boolean isManagedProfileOwner(android.content.Context p4)
    {
        int v2_0;
        android.app.admin.DevicePolicyManager v0 = com.afwsamples.testdpc.common.Util.getDevicePolicyManager(p4);
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 24) {
            v2_0 = com.afwsamples.testdpc.common.Util.isProfileOwner(p4);
        } else {
            try {
                v2_0 = v0.isManagedProfile(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p4));
            } catch (SecurityException v1) {
                v2_0 = 0;
            }
        }
        return v2_0;
    }

    public static boolean isPrimaryUser(android.content.Context p3)
    {
        boolean v1_1;
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 23) {
            v1_1 = com.afwsamples.testdpc.common.Util.isDeviceOwner(p3);
        } else {
            v1_1 = ((android.os.UserManager) p3.getSystemService("user")).isSystemUser();
        }
        return v1_1;
    }

    public static boolean isProfileOwner(android.content.Context p2)
    {
        return com.afwsamples.testdpc.common.Util.getDevicePolicyManager(p2).isProfileOwnerApp(p2.getPackageName());
    }

    public static boolean isRunningOnAutomotiveDevice(android.content.Context p2)
    {
        return p2.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static boolean isRunningOnTvDevice(android.content.Context p3)
    {
        int v1_2;
        if (((android.app.UiModeManager) p3.getSystemService("uimode")).getCurrentModeType() != 4) {
            v1_2 = 0;
        } else {
            v1_2 = 1;
        }
        return v1_2;
    }

    public static String keyguardDisabledFeaturesToString(int p2)
    {
        return com.afwsamples.testdpc.common.Util.flagsToString(android.app.admin.DevicePolicyManager, "KEYGUARD_DISABLE_", p2);
    }

    public static String lockTaskFeaturesToString(int p2)
    {
        return com.afwsamples.testdpc.common.Util.flagsToString(android.app.admin.DevicePolicyManager, "LOCK_TASK_FEATURE_", p2);
    }

    public static varargs void onErrorLog(String p2, Exception p3, String p4, Object[] p5)
    {
        android.util.Log.e(p2, new StringBuilder().append(String.format(p4, p5)).append(" failed").toString(), p3);
        return;
    }

    public static varargs void onErrorLog(String p2, String p3, Object[] p4)
    {
        android.util.Log.e(p2, new StringBuilder().append(String.format(p3, p4)).append(" failed").toString());
        return;
    }

    public static varargs void onSuccessLog(String p2, String p3, Object[] p4)
    {
        android.util.Log.d(p2, new StringBuilder().append(String.format(p3, p4)).append(" succeeded").toString());
        return;
    }

    public static String passwordQualityToString(int p2)
    {
        return com.afwsamples.testdpc.common.Util.constantToString(android.app.admin.DevicePolicyManager, "PASSWORD_QUALITY_", p2);
    }

    public static String personalAppsSuspensionReasonToString(int p2)
    {
        return com.afwsamples.testdpc.common.Util.flagsToString(android.app.admin.DevicePolicyManager, "PERSONAL_APPS_", p2);
    }

    public static void requireAndroidS()
    {
        if (com.afwsamples.testdpc.common.Util.isAtLeastS()) {
            return;
        } else {
            throw new IllegalStateException(new StringBuilder().append("requires API level S, device\'s on ").append(android.os.Build$VERSION.SDK_INT).toString());
        }
    }

    public static String requiredPasswordComplexityToString(int p2)
    {
        return com.afwsamples.testdpc.common.Util.constantToString(android.app.admin.DevicePolicyManager, "PASSWORD_COMPLEXITY_", p2);
    }

    public static void showFileViewer(androidx.preference.PreferenceFragment p4, int p5)
    {
        android.content.Intent v0_1 = new android.content.Intent("android.intent.action.GET_CONTENT");
        v0_1.setTypeAndNormalize("*/*");
        try {
            p4.startActivityForResult(v0_1, p5);
        } catch (android.content.ActivityNotFoundException v1) {
            android.util.Log.e("Util", "showFileViewer: ", v1);
        }
        return;
    }

    public static void updateImageView(android.content.Context p12, android.widget.ImageView p13, android.net.Uri p14)
    {
        try {
            java.io.InputStream v2_1 = p12.getContentResolver().openInputStream(p14);
            android.graphics.BitmapFactory$Options v0_1 = new android.graphics.BitmapFactory$Options();
            v0_1.inJustDecodeBounds = 1;
            android.graphics.BitmapFactory.decodeStream(v2_1, 0, v0_1);
            int v5 = Math.max((v0_1.outWidth / p13.getMaxWidth()), (v0_1.outHeight / p13.getMaxHeight()));
        } catch (java.io.FileNotFoundException v1) {
            android.widget.Toast.makeText(p12, 2131689809, 0);
            return;
        }
        if (v5 > 1) {
            v0_1.inSampleSize = v5;
        }
        v0_1.inJustDecodeBounds = 0;
        p13.setImageBitmap(android.graphics.BitmapFactory.decodeStream(p12.getContentResolver().openInputStream(p14), 0, v0_1));
        return;
    }
}
