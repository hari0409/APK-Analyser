package com.afwsamples.testdpc.policy.wifimanagement;
 class WifiModificationFragment$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment this$0;

    WifiModificationFragment$1(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p6)
    {
        android.net.wifi.WifiConfiguration v2 = com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$100(this.this$0);
        if (v2 != null) {
            try {
                if ((v2.enterpriseConfig != null) && (v2.enterpriseConfig.getEapMethod() != -1)) {
                    com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment v0 = com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment.newInstance(v2);
                } else {
                    v0 = com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog.newInstance(v2, this.this$0);
                }
            } catch (SecurityException v1) {
                com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$200(this.this$0, v1.getMessage());
            }
            v0.show(this.this$0.getFragmentManager(), "wifi_config_modification");
        }
        return;
    }
}
