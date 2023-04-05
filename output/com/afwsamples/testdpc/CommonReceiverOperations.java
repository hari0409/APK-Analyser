package com.afwsamples.testdpc;
public class CommonReceiverOperations {
    public static final String NETWORK_LOGS_FILE_PREFIX = "network_logs_";
    private static final String TAG = "AdminReceiver";

    public CommonReceiverOperations()
    {
        return;
    }

    static final synthetic void lambda$onNetworkLogsAvailable$195$CommonReceiverOperations(java.util.ArrayList p1, android.app.admin.NetworkEvent p2)
    {
        p1.add(p2.toString());
        return;
    }

    public static String onChoosePrivateKeyAlias(android.content.Context p4, int p5)
    {
        String v0;
        if (p5 != android.os.Process.myUid()) {
            v0 = android.preference.PreferenceManager.getDefaultSharedPreferences(p4).getString("override_key_selection", 0);
            if (android.text.TextUtils.isEmpty(v0)) {
                v0 = 0;
            } else {
                com.afwsamples.testdpc.CommonReceiverOperations.showToast(p4, new StringBuilder().append("Substituting private key alias: \"").append(v0).append("\"").toString());
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    public static void onNetworkLogsAvailable(android.content.Context p10, android.content.ComponentName p11, long p12, int p14)
    {
        android.util.Log.i("AdminReceiver", new StringBuilder().append("onNetworkLogsAvailable(), batchToken: ").append(p12).append(", event count: ").append(p14).toString());
        try {
            java.util.List v3 = ((android.app.admin.DevicePolicyManager) p10.getSystemService("device_policy")).retrieveNetworkLogs(p11, p12);
        } catch (SecurityException v1) {
            android.util.Log.e("AdminReceiver", new StringBuilder().append("Exception while retrieving network logs batch with batchToken: ").append(p12).toString(), v1);
        }
        if (v3 != null) {
            String v6_9 = new Object[1];
            v6_9[0] = Long.valueOf(p12);
            com.afwsamples.testdpc.CommonReceiverOperations.showToast(p10, p10.getString(2131690000, v6_9));
            java.util.ArrayList v4_1 = new java.util.ArrayList();
            if (com.afwsamples.testdpc.common.Util.SDK_INT < 28) {
                v3.forEach(new com.afwsamples.testdpc.CommonReceiverOperations$$Lambda$0(v4_1));
            } else {
                com.afwsamples.testdpc.CommonReceiverOperations$EventSavingTask v5_8 = v3.iterator();
                while (v5_8.hasNext()) {
                    v4_1.add(((android.app.admin.NetworkEvent) v5_8.next()).toString());
                }
            }
            String v6_13 = new Void[0];
            new com.afwsamples.testdpc.CommonReceiverOperations$EventSavingTask(p10, p12, v4_1).execute(v6_13);
        } else {
            android.util.Log.e("AdminReceiver", new StringBuilder().append("Failed to retrieve network logs batch with batchToken: ").append(p12).toString());
            String v6_21 = new Object[1];
            v6_21[0] = Long.valueOf(p12);
            com.afwsamples.testdpc.CommonReceiverOperations.showToast(p10, p10.getString(2131690001, v6_21));
        }
        return;
    }

    private static void showToast(android.content.Context p5, String p6)
    {
        Object[] v2_1 = new Object[2];
        v2_1[0] = p5.getString(2131689573);
        v2_1[1] = p6;
        android.widget.Toast.makeText(p5, String.format("[%s] %s", v2_1), 1).show();
        return;
    }
}
