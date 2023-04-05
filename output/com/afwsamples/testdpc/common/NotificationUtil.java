package com.afwsamples.testdpc.common;
public class NotificationUtil {
    public static final int BUGREPORT_NOTIFICATION_ID = 1;
    private static final String DEFAULT_CHANNEL_ID = "default_testdpc_channel";
    public static final int DEVICE_OWNER_CHANGED_ID = 9;
    public static final int PASSWORD_EXPIRATION_NOTIFICATION_ID = 2;
    public static final int PROFILE_OWNER_CHANGED_ID = 8;
    private static final String TAG = "NotificationUtil";
    public static final int TRANSFER_AFFILIATED_PROFILE_OWNERSHIP_COMPLETE_ID = 11;
    public static final int TRANSFER_OWNERSHIP_COMPLETE_ID = 10;
    public static final int USER_ADDED_NOTIFICATION_ID = 3;
    public static final int USER_REMOVED_NOTIFICATION_ID = 4;
    public static final int USER_STARTED_NOTIFICATION_ID = 5;
    public static final int USER_STOPPED_NOTIFICATION_ID = 6;
    public static final int USER_SWITCHED_NOTIFICATION_ID = 7;

    public NotificationUtil()
    {
        return;
    }

    private static void createDefaultNotificationChannel(android.content.Context p5)
    {
        android.app.NotificationManager v2_1 = ((android.app.NotificationManager) p5.getSystemService("notification"));
        android.app.NotificationChannel v1_0 = new android.app.NotificationChannel("default_testdpc_channel", p5.getString(2131689573), 3);
        v1_0.setImportance(2);
        v2_1.createNotificationChannel(v1_0);
        return;
    }

    public static androidx.core.app.NotificationCompat$Builder getNotificationBuilder(android.content.Context p3)
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
            com.afwsamples.testdpc.common.NotificationUtil.createDefaultNotificationChannel(p3);
        }
        return new androidx.core.app.NotificationCompat$Builder(p3, "default_testdpc_channel");
    }

    public static void showNotification(android.content.Context p4, int p5, String p6, int p7)
    {
        ((android.app.NotificationManager) p4.getSystemService("notification")).notify(p7, com.afwsamples.testdpc.common.NotificationUtil.getNotificationBuilder(p4).setSmallIcon(2131230834).setContentTitle(p4.getString(p5)).setContentText(p6).setStyle(new androidx.core.app.NotificationCompat$BigTextStyle().bigText(p6)).build());
        return;
    }
}
