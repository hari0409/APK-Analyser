package com.afwsamples.testdpc.cosu;
 class EnableCosuActivity$2 extends android.content.BroadcastReceiver {
    final synthetic com.afwsamples.testdpc.cosu.EnableCosuActivity this$0;

    EnableCosuActivity$2(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onReceive(android.content.Context p7, android.content.Intent p8)
    {
        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(p8.getAction())) {
            com.afwsamples.testdpc.cosu.EnableCosuActivity.access$600(this.this$0).sendMessage(com.afwsamples.testdpc.cosu.EnableCosuActivity.access$600(this.this$0).obtainMessage(1, new Long(p8.getLongExtra("extra_download_id", 0))));
        }
        return;
    }
}
