package com.afwsamples.testdpc.policy.resetpassword;
public class ResetPasswordService extends android.app.Service {
    private static final String ACTION_RESET_PASSWORD = "com.afwsamples.testdpc.RESET_PASSWORD";
    private static final String NOTIFICATION_CHANNEL = "reset-password-notification";
    private static final int NOTIFICATION_FOREGROUND = 3;
    private static final int NOTIFICATION_RESET_RESULT = 2;
    private static final int NOTIFICATION_TAP_TO_RESET = 1;
    private static final String TAG = "ResetPasswordService";
    private android.app.admin.DevicePolicyManager mDpm;
    private android.app.NotificationManager mNm;
    private android.content.BroadcastReceiver receiver;

    public ResetPasswordService()
    {
        this.receiver = new com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService$1(this);
        return;
    }

    static synthetic void access$000(com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService p0)
    {
        p0.dismissNotification();
        return;
    }

    static synthetic android.content.BroadcastReceiver access$100(com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService p1)
    {
        return p1.receiver;
    }

    static synthetic void access$200(com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService p0)
    {
        p0.doResetPassword();
        return;
    }

    private void createNotificationChannel()
    {
        this.mNm.createNotificationChannel(new android.app.NotificationChannel("reset-password-notification", this.getString(2131689573), 3));
        return;
    }

    private void dismissNotification()
    {
        this.mNm.cancel(1);
        this.mNm.cancel(2);
        return;
    }

    private void doResetPassword()
    {
        int v2;
        byte[] v3 = this.getActiveResetPasswordToken();
        if (v3 == null) {
            android.util.Log.e("ResetPasswordService", "Cannot reset password without token");
            v2 = 0;
        } else {
            v2 = this.mDpm.resetPasswordWithToken(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this), "1234", v3, 0);
        }
        android.app.Notification$Builder v0 = new android.app.Notification$Builder(this).setContentTitle(this.getString(2131689573)).setSmallIcon(2131230834).setChannelId("reset-password-notification");
        if (v2 == 0) {
            v0.setContentText(this.getString(2131690159));
        } else {
            int v5_5 = new Object[1];
            v5_5[0] = "1234";
            v0.setContentText(this.getString(2131690160, v5_5));
            v0.setOngoing(1);
        }
        this.mNm.notify(2, v0.build());
        return;
    }

    private byte[] getActiveResetPasswordToken()
    {
        int v0 = com.afwsamples.testdpc.policy.resetpassword.ResetPasswordWithTokenFragment.loadPasswordResetTokenFromPreference(this);
        if (v0 != 0) {
            if (!this.mDpm.isResetPasswordTokenActive(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this))) {
                android.util.Log.i("ResetPasswordService", "Token exists but is not activated.");
                v0 = 0;
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    private void showNotification()
    {
        android.app.PendingIntent v0 = android.app.PendingIntent.getBroadcast(this, 0, new android.content.Intent("com.afwsamples.testdpc.RESET_PASSWORD"), 0);
        this.mNm.notify(1, new android.app.Notification$Builder(this).setContentTitle(this.getString(2131689573)).setContentText(this.getString(2131690155)).setContentIntent(v0).setDeleteIntent(v0).setSmallIcon(2131230834).setChannelId("reset-password-notification").build());
        return;
    }

    private void startForeground()
    {
        this.startForeground(3, new android.app.Notification$Builder(this).setContentTitle(this.getString(2131689573)).setContentText(this.getString(2131690145)).setSmallIcon(2131230834).setChannelId("reset-password-notification").build());
        return;
    }

    public android.os.IBinder onBind(android.content.Intent p2)
    {
        return 0;
    }

    public void onCreate()
    {
        super.onCreate();
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getSystemService(android.app.admin.DevicePolicyManager));
        this.mNm = ((android.app.NotificationManager) this.getSystemService(android.app.NotificationManager));
        return;
    }

    public int onStartCommand(android.content.Intent p4, int p5, int p6)
    {
        int v1_4;
        this.createNotificationChannel();
        this.startForeground();
        if ((!((android.os.UserManager) this.getSystemService(android.os.UserManager)).isUserUnlocked()) && (this.getActiveResetPasswordToken() != null)) {
            android.content.IntentFilter v0_1 = new android.content.IntentFilter();
            v0_1.addAction("android.intent.action.USER_UNLOCKED");
            v0_1.addAction("com.afwsamples.testdpc.RESET_PASSWORD");
            this.registerReceiver(this.receiver, v0_1);
            this.showNotification();
            v1_4 = 3;
        } else {
            this.stopSelf();
            this.mNm.cancel(3);
            v1_4 = 2;
        }
        return v1_4;
    }
}
