package com.afwsamples.testdpc.policy.wifimanagement;
 class WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener implements android.view.View$OnClickListener {
    private String mMimeType;
    private int mRequestCode;
    final synthetic com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment this$0;

    public WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener(com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment p1, int p2, String p3)
    {
        this.this$0 = p1;
        this.mRequestCode = p2;
        this.mMimeType = p3;
        return;
    }

    public void onClick(android.view.View p5)
    {
        android.content.Intent v0_1 = new android.content.Intent("android.intent.action.GET_CONTENT");
        v0_1.setTypeAndNormalize(this.mMimeType);
        try {
            this.this$0.startActivityForResult(v0_1, this.mRequestCode);
        } catch (android.content.ActivityNotFoundException v1) {
            android.util.Log.e("wifi_eap_tls", "no file picker: ", v1);
        }
        return;
    }
}
