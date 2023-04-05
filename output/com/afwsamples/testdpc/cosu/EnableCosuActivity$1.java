package com.afwsamples.testdpc.cosu;
 class EnableCosuActivity$1 extends android.os.Handler {
    final synthetic com.afwsamples.testdpc.cosu.EnableCosuActivity this$0;

    EnableCosuActivity$1(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        this.this$0 = p1;
        return;
    }

    public void handleMessage(android.os.Message p8)
    {
        switch (p8.what) {
            case 1:
                if (!com.afwsamples.testdpc.cosu.EnableCosuActivity.access$000(this.this$0).equals(p8.obj)) {
                    Long v0_1 = com.afwsamples.testdpc.cosu.EnableCosuActivity.access$200(this.this$0).onDownloadComplete(((Long) p8.obj));
                    if (v0_1 != null) {
                        this.removeMessages(2, v0_1);
                    }
                    if (!com.afwsamples.testdpc.cosu.EnableCosuActivity.access$200(this.this$0).areAllInstallsFinished()) {
                    } else {
                        com.afwsamples.testdpc.cosu.EnableCosuActivity.access$300(this.this$0);
                    }
                } else {
                    com.afwsamples.testdpc.cosu.EnableCosuActivity.access$100(this.this$0);
                    this.removeMessages(2, com.afwsamples.testdpc.cosu.EnableCosuActivity.access$000(this.this$0));
                }
                break;
            case 2:
                Long v0_0 = ((Long) p8.obj).longValue();
                if (v0_0 != com.afwsamples.testdpc.cosu.EnableCosuActivity.access$000(this.this$0).longValue()) {
                    com.afwsamples.testdpc.cosu.EnableCosuActivity v2_12 = com.afwsamples.testdpc.cosu.EnableCosuActivity.access$400(this.this$0);
                    String v3_0 = new long[1];
                    v3_0[0] = v0_0;
                    v2_12.remove(v3_0);
                    android.util.Log.e("CosuSetup", new StringBuilder().append("Time out during app download with id: ").append(v0_0).toString());
                } else {
                    android.util.Log.e("CosuSetup", "Time out during download of config file");
                    com.afwsamples.testdpc.cosu.EnableCosuActivity v2_17 = com.afwsamples.testdpc.cosu.EnableCosuActivity.access$400(this.this$0);
                    String v3_7 = new long[1];
                    v3_7[0] = com.afwsamples.testdpc.cosu.EnableCosuActivity.access$000(this.this$0).longValue();
                    v2_17.remove(v3_7);
                }
                com.afwsamples.testdpc.cosu.EnableCosuActivity.access$500(this.this$0);
                break;
            case 3:
                com.afwsamples.testdpc.cosu.EnableCosuActivity.access$200(this.this$0).onInstallComplete(((String) p8.obj));
                if (!com.afwsamples.testdpc.cosu.EnableCosuActivity.access$200(this.this$0).areAllInstallsFinished()) {
                } else {
                    com.afwsamples.testdpc.cosu.EnableCosuActivity.access$300(this.this$0);
                }
                break;
        }
        return;
    }
}
