package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$18 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.EditText val$editText;

    PolicyManagementFragment$18(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2)
    {
        this.this$0 = p1;
        this.val$editText = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p4, int p5)
    {
        String v1 = this.val$editText.getText().toString();
        if (android.text.TextUtils.isEmpty(v1)) {
            v1 = "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias";
        }
        try {
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1100(this.this$0, v1);
            android.content.SharedPreferences$Editor v0 = androidx.preference.PreferenceManager.getDefaultSharedPreferences(this.this$0.getActivity()).edit();
            v0.putString("appUriPolicy", v1);
            v0.commit();
            p4.dismiss();
            return;
        } catch (Throwable v2_6) {
            p4.dismiss();
            throw v2_6;
        }
    }
}
