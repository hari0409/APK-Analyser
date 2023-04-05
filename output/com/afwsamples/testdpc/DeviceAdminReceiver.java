package com.afwsamples.testdpc;
public class DeviceAdminReceiver extends android.app.admin.DeviceAdminReceiver {
    public static final String ACTION_PASSWORD_REQUIREMENTS_CHANGED = "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED";
    private static final int CHANGE_PASSWORD_NOTIFICATION_ID = 101;
    private static final String FAILED_PASSWORD_LOG_FILE = "failed_pw_attempts_timestamps.log";
    private static final String LOGS_DIR = "logs";
    private static final int PASSWORD_FAILED_NOTIFICATION_ID = 102;
    private static final String TAG = "DeviceAdminReceiver";

    public DeviceAdminReceiver()
    {
        return;
    }

    public static android.content.ComponentName getComponentName(android.content.Context p3)
    {
        return new android.content.ComponentName(p3.getApplicationContext(), com.afwsamples.testdpc.DeviceAdminReceiver);
    }

    private static java.util.ArrayList getFailedPasswordAttempts(android.content.Context p10)
    {
        java.io.File v5 = com.afwsamples.testdpc.DeviceAdminReceiver.logFile(p10);
        java.util.ArrayList v6_1 = new java.util.ArrayList();
        if (v5.exists()) {
            java.io.FileInputStream v2 = 0;
            try {
                java.io.FileInputStream v3_1 = new java.io.FileInputStream(v5);
                try {
                    java.io.BufferedReader v0_1 = new java.io.BufferedReader(new java.io.InputStreamReader(v3_1));
                } catch (String v7_4) {
                    v2 = v3_1;
                    if (v2 != null) {
                        try {
                            v2.close();
                        } catch (java.io.IOException v1_2) {
                            android.util.Log.e("DeviceAdminReceiver", "Unable to close failed password attempts log file", v1_2);
                        }
                    }
                    throw v7_4;
                } catch (java.io.IOException v1_0) {
                    v2 = v3_1;
                    android.util.Log.e("DeviceAdminReceiver", "Unable to read failed password attempts", v1_0);
                    if (v2 != null) {
                        try {
                            v2.close();
                        } catch (java.io.IOException v1_1) {
                            android.util.Log.e("DeviceAdminReceiver", "Unable to close failed password attempts log file", v1_1);
                        }
                    }
                }
                while(true) {
                    String v4 = v0_1.readLine();
                    if ((v4 == null) || (v4.length() <= 0)) {
                        break;
                    }
                    v6_1.add(new java.util.Date(Long.parseLong(v4)));
                }
                v0_1.close();
                if (v3_1 != null) {
                    try {
                        v3_1.close();
                    } catch (java.io.IOException v1_3) {
                        android.util.Log.e("DeviceAdminReceiver", "Unable to close failed password attempts log file", v1_3);
                    }
                }
            } catch (String v7_4) {
            } catch (java.io.IOException v1_0) {
            }
        }
        return v6_1;
    }

    private void handleUserAction(android.content.Context p7, android.os.UserHandle p8, int p9, int p10, int p11)
    {
        String v2_3 = new Object[1];
        v2_3[0] = Long.valueOf(((android.os.UserManager) p7.getSystemService("user")).getSerialNumberForUser(p8));
        String v0 = p7.getString(p10, v2_3);
        android.util.Log.i("DeviceAdminReceiver", v0);
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p7, p9, v0, p11);
        return;
    }

    private static Boolean isUsingUnifiedPassword(android.content.Context p3)
    {
        Boolean v1_2;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 28) {
            v1_2 = Boolean.valueOf(((android.app.admin.DevicePolicyManager) p3.getSystemService(android.app.admin.DevicePolicyManager)).isUsingUnifiedPassword(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p3)));
        } else {
            v1_2 = Boolean.valueOf(0);
        }
        return v1_2;
    }

    private static java.io.File logFile(android.content.Context p3)
    {
        return new java.io.File(p3.getDir("logs", 0), "failed_pw_attempts_timestamps.log");
    }

    private void onDeviceOwnerChanged(android.content.Context p4)
    {
        android.util.Log.i("DeviceAdminReceiver", "onDeviceOwnerChanged");
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p4, 2131690318, p4.getString(2131690318), 9);
        return;
    }

    private void onProfileOwnerChanged(android.content.Context p4)
    {
        android.util.Log.i("DeviceAdminReceiver", "onProfileOwnerChanged");
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p4, 2131690321, p4.getString(2131690321), 8);
        return;
    }

    private static void saveFailedPasswordAttempts(android.content.Context p8, java.util.ArrayList p9)
    {
        java.io.File v3 = com.afwsamples.testdpc.DeviceAdminReceiver.logFile(p8);
        if (!v3.exists()) {
            v3.createNewFile();
        }
        java.io.BufferedWriter v0_0 = new java.io.BufferedWriter(new java.io.OutputStreamWriter(new java.io.FileOutputStream(v3)));
        java.util.Iterator v4_1 = p9.iterator();
        while (v4_1.hasNext()) {
            v0_0.write(Long.toString(((java.util.Date) v4_1.next()).getTime()));
            v0_0.newLine();
        }
        v0_0.close();
        return;
    }

    public static void sendPasswordRequirementsChanged(android.content.Context p2)
    {
        android.content.Intent v0_1 = new android.content.Intent("com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED");
        v0_1.setComponent(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p2));
        p2.sendBroadcast(v0_1);
        return;
    }

    private void showToast(android.content.Context p2, int p3)
    {
        this.showToast(p2, p2.getString(p3));
        return;
    }

    private void showToast(android.content.Context p4, String p5)
    {
        android.util.Log.v("DeviceAdminReceiver", new StringBuilder().append("showToast():").append(p5).toString());
        android.widget.Toast.makeText(p4, p5, 1).show();
        return;
    }

    private static void updatePasswordConstraintNotification(android.content.Context p12)
    {
        android.app.admin.DevicePolicyManager v0_1 = ((android.app.admin.DevicePolicyManager) p12.getSystemService("device_policy"));
        android.os.UserManager v5_1 = ((android.os.UserManager) p12.getSystemService("user"));
        if ((v0_1.isProfileOwnerApp(p12.getPackageName())) || (v0_1.isDeviceOwnerApp(p12.getPackageName()))) {
            android.app.NotificationManager v1_1 = ((android.app.NotificationManager) p12.getSystemService("notification"));
            java.util.ArrayList v3_1 = new java.util.ArrayList();
            if (!v0_1.isActivePasswordSufficient()) {
                v3_1.add(p12.getText(2131690049));
            }
            if ((v5_1.hasUserRestriction("no_unified_password")) && ((com.afwsamples.testdpc.common.Util.isManagedProfileOwner(p12)) && (com.afwsamples.testdpc.DeviceAdminReceiver.isUsingUnifiedPassword(p12).booleanValue()))) {
                v3_1.add(p12.getText(2131690185));
            }
            if (v3_1.isEmpty()) {
                v1_1.cancel(101);
            } else {
                androidx.core.app.NotificationCompat$InboxStyle v4_1 = new androidx.core.app.NotificationCompat$InboxStyle();
                v4_1.setBigContentTitle(p12.getText(2131690213));
                android.app.Notification v7_20 = v3_1.iterator();
                while (v7_20.hasNext()) {
                    v4_1.addLine(((CharSequence) v7_20.next()));
                }
                androidx.core.app.NotificationCompat$Builder v6 = com.afwsamples.testdpc.common.NotificationUtil.getNotificationBuilder(p12);
                v6.setOngoing(1).setSmallIcon(2131230834).setStyle(v4_1).setContentIntent(android.app.PendingIntent.getActivity(p12, -1, new android.content.Intent("android.app.action.SET_NEW_PASSWORD"), 0));
                v1_1.notify(101, v6.getNotification());
            }
        }
        return;
    }

    public void onBugreportFailed(android.content.Context p7, android.content.Intent p8, int p9)
    {
        String v0;
        switch (p9) {
            case 1:
                v0 = p7.getString(2131689596);
                break;
            default:
                v0 = p7.getString(2131689595);
        }
        android.util.Log.i("DeviceAdminReceiver", new StringBuilder().append("Bugreport failed: ").append(v0).toString());
        Object[] v3_1 = new Object[1];
        v3_1[0] = v0;
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p7, 2131689600, p7.getString(2131689597, v3_1), 1);
        return;
    }

    public void onBugreportShared(android.content.Context p7, android.content.Intent p8, String p9)
    {
        android.util.Log.i("DeviceAdminReceiver", new StringBuilder().append("Bugreport shared, hash: ").append(p9).toString());
        android.net.Uri v3 = p8.getData();
        android.util.Log.i("DeviceAdminReceiver", new StringBuilder().append("Bugreport URI: ").append(v3).toString());
        Void[] v1_9 = new Void[0];
        new com.afwsamples.testdpc.DeviceAdminReceiver$1(this, p7, v3, p9, this.goAsync()).execute(v1_9);
        return;
    }

    public void onBugreportSharingDeclined(android.content.Context p4, android.content.Intent p5)
    {
        android.util.Log.i("DeviceAdminReceiver", "Bugreport sharing declined");
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p4, 2131689600, p4.getString(2131689599), 1);
        return;
    }

    public String onChoosePrivateKeyAlias(android.content.Context p2, android.content.Intent p3, int p4, android.net.Uri p5, String p6)
    {
        return com.afwsamples.testdpc.CommonReceiverOperations.onChoosePrivateKeyAlias(p2, p4);
    }

    public void onEnabled(android.content.Context p7, android.content.Intent p8)
    {
        android.util.Log.i("DeviceAdminReceiver", new StringBuilder().append("Device admin enabled in user with serial number: ").append(((android.os.UserManager) p7.getSystemService("user")).getSerialNumberForUser(android.os.Binder.getCallingUserHandle())).toString());
        return;
    }

    public void onNetworkLogsAvailable(android.content.Context p2, android.content.Intent p3, long p4, int p6)
    {
        com.afwsamples.testdpc.CommonReceiverOperations.onNetworkLogsAvailable(p2, com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p2), p4, p6);
        return;
    }

    public void onOperationSafetyStateChanged(android.content.Context p7, int p8, boolean p9)
    {
        String v2;
        android.util.Log.d("DeviceAdminReceiver", new StringBuilder().append("onOperationSafetyStateChanged(): ").append(p8).append(" = ").append(p9).toString());
        if (!p9) {
            v2 = p7.getString(2131690338);
        } else {
            v2 = p7.getString(2131690164);
        }
        String v1;
        switch (p8) {
            case 1:
                v1 = p7.getString(2131690339);
                break;
            default:
                v1 = p7.getString(2131690340);
        }
        Object[] v4_6 = new Object[2];
        v4_6[0] = v1;
        v4_6[1] = v2;
        this.showToast(p7, p7.getString(2131690165, v4_6));
        return;
    }

    public void onPasswordChanged(android.content.Context p2, android.content.Intent p3)
    {
        this.onPasswordChanged(p2, p3, android.os.Process.myUserHandle());
        return;
    }

    public void onPasswordChanged(android.content.Context p2, android.content.Intent p3, android.os.UserHandle p4)
    {
        if (android.os.Process.myUserHandle().equals(p4)) {
            com.afwsamples.testdpc.DeviceAdminReceiver.updatePasswordConstraintNotification(p2);
        }
        return;
    }

    public void onPasswordExpiring(android.content.Context p2, android.content.Intent p3)
    {
        this.onPasswordExpiring(p2, p3, android.os.Process.myUserHandle());
        return;
    }

    public void onPasswordExpiring(android.content.Context p10, android.content.Intent p11, android.os.UserHandle p12)
    {
        if (android.os.Process.myUserHandle().equals(p12)) {
            int v1;
            android.app.admin.DevicePolicyManager v0_1 = ((android.app.admin.DevicePolicyManager) p10.getSystemService("device_policy"));
            long v4 = System.currentTimeMillis();
            long v2 = v0_1.getPasswordExpiration(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p10));
            if ((v4 < v2) || (v2 == 0)) {
                v1 = 0;
            } else {
                v1 = 1;
            }
            String v6_5;
            if (v1 == 0) {
                v6_5 = 2131690037;
            } else {
                v6_5 = 2131690038;
            }
            com.afwsamples.testdpc.common.NotificationUtil.showNotification(p10, 2131690039, p10.getString(v6_5), 2);
        }
        return;
    }

    public void onPasswordFailed(android.content.Context p2, android.content.Intent p3)
    {
        this.onPasswordFailed(p2, p3, android.os.Process.myUserHandle());
        return;
    }

    public void onPasswordFailed(android.content.Context p23, android.content.Intent p24, android.os.UserHandle p25)
    {
        if (android.os.Process.myUserHandle().equals(p25)) {
            android.app.admin.DevicePolicyManager v9_1 = ((android.app.admin.DevicePolicyManager) p23.getSystemService("device_policy"));
            int v4 = v9_1.getCurrentFailedPasswordAttempts();
            int v12 = v9_1.getMaximumFailedPasswordsForWipe(0);
            int v17_5 = p23.getResources();
            int v0_7 = new Object[1];
            android.content.Intent v19_1 = v0_7;
            v19_1[0] = Integer.valueOf(v4);
            String v15 = v17_5.getQuantityString(2131558401, v4, v19_1);
            java.util.ArrayList v14 = com.afwsamples.testdpc.DeviceAdminReceiver.getFailedPasswordAttempts(p23);
            v14.add(new java.util.Date());
            java.util.Collections.sort(v14, java.util.Collections.reverseOrder());
            try {
                com.afwsamples.testdpc.DeviceAdminReceiver.saveFailedPasswordAttempts(p23, v14);
            } catch (java.io.IOException v10) {
                android.util.Log.e("DeviceAdminReceiver", "Unable to save failed password attempts", v10);
            }
            String v5;
            if (v12 != 0) {
                int v17_9 = p23.getResources();
                int v0_13 = new Object[1];
                android.content.Intent v19_3 = v0_13;
                v19_3[0] = Integer.valueOf(v12);
                v5 = v17_9.getQuantityString(2131558400, v12, v19_3);
            } else {
                v5 = p23.getString(2131690040);
            }
            androidx.core.app.NotificationCompat$Builder v16 = com.afwsamples.testdpc.common.NotificationUtil.getNotificationBuilder(p23);
            v16.setSmallIcon(2131230834).setTicker(v15).setContentTitle(v15).setContentText(v5).setContentIntent(android.app.PendingIntent.getActivity(p23, -1, new android.content.Intent("android.app.action.SET_NEW_PASSWORD"), 0));
            androidx.core.app.NotificationCompat$InboxStyle v11_1 = new androidx.core.app.NotificationCompat$InboxStyle();
            v11_1.setBigContentTitle(v15);
            java.text.DateFormat v8 = java.text.SimpleDateFormat.getDateTimeInstance();
            int v17_1 = v14.iterator();
            while (v17_1.hasNext()) {
                v11_1.addLine(v8.format(((java.util.Date) v17_1.next())));
            }
            v16.setStyle(v11_1);
            ((android.app.NotificationManager) p23.getSystemService("notification")).notify(102, v16.build());
        }
        return;
    }

    public void onPasswordSucceeded(android.content.Context p2, android.content.Intent p3)
    {
        this.onPasswordSucceeded(p2, p3, android.os.Process.myUserHandle());
        return;
    }

    public void onPasswordSucceeded(android.content.Context p2, android.content.Intent p3, android.os.UserHandle p4)
    {
        if (android.os.Process.myUserHandle().equals(p4)) {
            com.afwsamples.testdpc.DeviceAdminReceiver.logFile(p2).delete();
        }
        return;
    }

    public void onProfileProvisioningComplete(android.content.Context p5, android.content.Intent p6)
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 26) {
            com.afwsamples.testdpc.provision.PostProvisioningTask v1_1 = new com.afwsamples.testdpc.provision.PostProvisioningTask(p5);
            if (v1_1.performPostProvisioningOperations(p6)) {
                android.content.Intent v0 = v1_1.getPostProvisioningLaunchIntent(p6);
                if (v0 == null) {
                    android.util.Log.e("DeviceAdminReceiver", "DeviceAdminReceiver.onProvisioningComplete() invoked, but ownership not assigned");
                    this.showToast(p5, 2131689694);
                } else {
                    p5.startActivity(v0);
                }
            }
        }
        return;
    }

    public void onReceive(android.content.Context p4, android.content.Intent p5)
    {
        boolean v1_0 = p5.getAction();
        int v0 = -1;
        switch (v1_0.hashCode()) {
            case -1543079098:
                if (!v1_0.equals("android.app.action.PROFILE_OWNER_CHANGED")) {
                } else {
                    v0 = 2;
                }
                break;
            case -1413766560:
                if (!v1_0.equals("com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED")) {
                } else {
                    v0 = 0;
                }
                break;
            case 370775467:
                if (!v1_0.equals("android.app.action.DEVICE_OWNER_CHANGED")) {
                } else {
                    v0 = 3;
                }
                break;
            case 798292259:
                if (!v1_0.equals("android.intent.action.BOOT_COMPLETED")) {
                } else {
                    v0 = 1;
                }
                break;
        }
        switch (v0) {
            case 0:
            case 1:
                com.afwsamples.testdpc.DeviceAdminReceiver.updatePasswordConstraintNotification(p4);
                break;
            case 2:
                this.onProfileOwnerChanged(p4);
                break;
            case 3:
                this.onDeviceOwnerChanged(p4);
                break;
            default:
                super.onReceive(p4, p5);
        }
        return;
    }

    public void onSecurityLogsAvailable(android.content.Context p3, android.content.Intent p4)
    {
        android.util.Log.i("DeviceAdminReceiver", "onSecurityLogsAvailable() called");
        this.showToast(p3, 2131690002);
        return;
    }

    public void onSystemUpdatePending(android.content.Context p6, android.content.Intent p7, long p8)
    {
        if (p8 != -1) {
            this.showToast(p6, new StringBuilder().append("System update received at: ").append(new java.text.SimpleDateFormat("hh:mm:ss dd/MM/yyyy").format(new java.util.Date(p8))).toString());
        }
        return;
    }

    public void onTransferAffiliatedProfileOwnershipComplete(android.content.Context p5, android.os.UserHandle p6)
    {
        android.util.Log.i("DeviceAdminReceiver", "onTransferAffiliatedProfileOwnershipComplete");
        int v2_2 = new Object[1];
        v2_2[0] = p6;
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p5, 2131690314, p5.getString(2131690313, v2_2), 11);
        return;
    }

    public void onTransferOwnershipComplete(android.content.Context p6, android.os.PersistableBundle p7)
    {
        android.util.Log.i("DeviceAdminReceiver", "onTransferOwnershipComplete");
        int v2_2 = new Object[1];
        v2_2[0] = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p6);
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(p6, 2131690316, p6.getString(2131690315, v2_2), 10);
        return;
    }

    public void onUserAdded(android.content.Context p7, android.content.Intent p8, android.os.UserHandle p9)
    {
        this.handleUserAction(p7, p9, 2131690004, 2131690003, 3);
        return;
    }

    public void onUserRemoved(android.content.Context p7, android.content.Intent p8, android.os.UserHandle p9)
    {
        this.handleUserAction(p7, p9, 2131690006, 2131690005, 4);
        return;
    }

    public void onUserStarted(android.content.Context p7, android.content.Intent p8, android.os.UserHandle p9)
    {
        this.handleUserAction(p7, p9, 2131690008, 2131690007, 5);
        return;
    }

    public void onUserStopped(android.content.Context p7, android.content.Intent p8, android.os.UserHandle p9)
    {
        this.handleUserAction(p7, p9, 2131690010, 2131690009, 6);
        return;
    }

    public void onUserSwitched(android.content.Context p7, android.content.Intent p8, android.os.UserHandle p9)
    {
        this.handleUserAction(p7, p9, 2131690012, 2131690011, 7);
        return;
    }
}
