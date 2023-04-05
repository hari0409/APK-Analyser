package com.afwsamples.testdpc;
public class PackageMonitorReceiver extends android.content.BroadcastReceiver {
    private static final int PACKAGE_CHANGED_NOTIIFICATION_ID = 34857;
    private static final String TAG = "PackageMonitorReceiver";

    public PackageMonitorReceiver()
    {
        return;
    }

    private String buildNotificationText(android.content.Context p4, String p5, String p6)
    {
        int v0;
        if (!"android.intent.action.PACKAGE_ADDED".equals(p6)) {
            v0 = 2131690023;
        } else {
            v0 = 2131690018;
        }
        String v1_4 = new Object[1];
        v1_4[0] = p5;
        return p4.getString(v0, v1_4);
    }

    private String getPackageNameFromIntent(android.content.Intent p2)
    {
        String v0_2;
        if (p2.getData() != null) {
            v0_2 = p2.getData().getSchemeSpecificPart();
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public void onReceive(android.content.Context p9, android.content.Intent p10)
    {
        String v0 = p10.getAction();
        if (("android.intent.action.PACKAGE_ADDED".equals(v0)) || ("android.intent.action.PACKAGE_REMOVED".equals(v0))) {
            String v4 = this.getPackageNameFromIntent(p10);
            if ((!android.text.TextUtils.isEmpty(v4)) && (!p10.getBooleanExtra("android.intent.extra.REPLACING", 0))) {
                String v2 = this.buildNotificationText(p9, v4, v0);
                ((android.app.NotificationManager) p9.getSystemService("notification")).notify(34857, com.afwsamples.testdpc.common.NotificationUtil.getNotificationBuilder(p9).setSmallIcon(2131230834).setContentTitle(p9.getString(2131690019)).setContentText(v2).setStyle(new androidx.core.app.NotificationCompat$BigTextStyle().bigText(v2)).setDefaults(4).setOnlyAlertOnce(1).build());
            }
        }
        return;
    }
}
