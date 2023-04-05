package com.afwsamples.testdpc.policy.wifimanagement;
 class WifiModificationFragment$2 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment this$0;

    WifiModificationFragment$2(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p9)
    {
        android.net.wifi.WifiConfiguration v1 = com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$100(this.this$0);
        try {
            if (v1 != null) {
                if (com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$300(this.this$0).removeNetwork(v1.networkId)) {
                    com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$400(this.this$0);
                } else {
                    com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment v2_2 = this.this$0;
                    String v3_0 = this.this$0;
                    Object[] v5_1 = new Object[2];
                    v5_1[0] = v1.SSID;
                    v5_1[1] = Integer.valueOf(v1.networkId);
                    com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$200(v2_2, v3_0.getString(2131690388, v5_1));
                }
            }
        } catch (SecurityException v0) {
            com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$200(this.this$0, v0.getMessage());
        }
        return;
    }
}
