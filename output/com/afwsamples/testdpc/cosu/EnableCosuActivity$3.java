package com.afwsamples.testdpc.cosu;
 class EnableCosuActivity$3 extends android.content.BroadcastReceiver {
    final synthetic com.afwsamples.testdpc.cosu.EnableCosuActivity this$0;

    EnableCosuActivity$3(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onReceive(android.content.Context p7, android.content.Intent p8)
    {
        if ("com.afwsamples.testdpc.INSTALL_COMPLETE".equals(p8.getAction())) {
            int v2 = p8.getIntExtra("android.content.pm.extra.STATUS", 1);
            String v1 = p8.getStringExtra("android.content.pm.extra.PACKAGE_NAME");
            switch (v2) {
                case -1:
                    android.util.Log.e("CosuSetup", new StringBuilder().append("Install requires user action with intent ").append(((android.content.Intent) p8.getParcelableExtra("android.intent.extra.INTENT"))).toString());
                    com.afwsamples.testdpc.cosu.EnableCosuActivity.access$500(this.this$0);
                    break;
                case 0:
                    com.afwsamples.testdpc.cosu.EnableCosuActivity.access$600(this.this$0).sendMessage(com.afwsamples.testdpc.cosu.EnableCosuActivity.access$600(this.this$0).obtainMessage(3, v1));
                    break;
                default:
                    android.util.Log.e("CosuSetup", "Install failed.");
                    com.afwsamples.testdpc.cosu.EnableCosuActivity.access$500(this.this$0);
            }
        }
        return;
    }
}
