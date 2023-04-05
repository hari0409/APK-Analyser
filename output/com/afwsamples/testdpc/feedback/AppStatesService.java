package com.afwsamples.testdpc.feedback;
public class AppStatesService extends androidx.enterprise.feedback.KeyedAppStatesService {
    private static final String CHANNEL_ID = "KeyedAppStates";
    private static final String CHANNEL_NAME = "Keyed App States";
    static final String TAG = "KeyedAppStates";
    private java.util.Map idMapping;
    private int nextNotificationId;

    public AppStatesService()
    {
        this.nextNotificationId = 0;
        this.idMapping = new java.util.HashMap();
        return;
    }

    private void createNotificationChannel()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
            ((android.app.NotificationManager) this.getSystemService(android.app.NotificationManager)).createNotificationChannel(new android.app.NotificationChannel("KeyedAppStates", "Keyed App States", 3));
        }
        return;
    }

    private int getIdForState(androidx.enterprise.feedback.ReceivedKeyedAppState p5)
    {
        String v0 = new StringBuilder().append(p5.getPackageName()).append(":").append(p5.getKey()).toString();
        if (!this.idMapping.containsKey(v0)) {
            int v1_5 = this.idMapping;
            Integer v2_1 = this.nextNotificationId;
            this.nextNotificationId = (v2_1 + 1);
            v1_5.put(v0, Integer.valueOf(v2_1));
        }
        return ((Integer) this.idMapping.get(v0)).intValue();
    }

    private void showNotification(androidx.enterprise.feedback.ReceivedKeyedAppState p10, boolean p11)
    {
        int v4_16;
        StringBuilder vtmp15 = new StringBuilder().append(p10.getTimestamp()).append(" ").append(p10.getPackageName()).append(":").append(p10.getKey()).append("=").append(p10.getData()).append(" (").append(p10.getMessage()).append(")");
        if (!p11) {
            v4_16 = "";
        } else {
            v4_16 = " - SYNC REQUESTED";
        }
        String v0 = vtmp15.append(v4_16).toString();
        if (p10.getSeverity() != 2) {
            android.util.Log.i("KeyedAppStates", v0);
        } else {
            android.util.Log.e("KeyedAppStates", v0);
        }
        String v3;
        if (p10.getSeverity() != 2) {
            if (p10.getSeverity() != 1) {
                v3 = "UNKNOWN";
            } else {
                v3 = "INFO";
            }
        } else {
            v3 = "ERROR";
        }
        int v4_4;
        android.app.Notification v5_22 = new androidx.core.app.NotificationCompat$Builder(this, "KeyedAppStates").setSmallIcon(2131230829).setContentTitle(new StringBuilder().append(p10.getPackageName()).append(":").append(p10.getKey()).append(" ").append(v3).toString());
        StringBuilder vtmp41 = new StringBuilder().append(p10.getTimestamp()).append(" ").append(p10.getData()).append(" (").append(p10.getMessage()).append(")");
        if (!p11) {
            v4_4 = "";
        } else {
            v4_4 = "\nSYNC REQUESTED";
        }
        androidx.core.app.NotificationManagerCompat.from(this).notify(this.getIdForState(p10), v5_22.setContentText(vtmp41.append(v4_4).toString()).build());
        return;
    }

    public void onReceive(java.util.Collection p6, boolean p7)
    {
        if (androidx.preference.PreferenceManager.getDefaultSharedPreferences(this).getBoolean(this.getString(2131689572), 0)) {
            this.createNotificationChannel();
            java.util.Iterator v2_1 = p6.iterator();
            while (v2_1.hasNext()) {
                this.showNotification(((androidx.enterprise.feedback.ReceivedKeyedAppState) v2_1.next()), p7);
            }
        }
        return;
    }
}
