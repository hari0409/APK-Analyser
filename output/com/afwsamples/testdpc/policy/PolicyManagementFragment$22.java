package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$22 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic java.security.cert.Certificate val$certificate;
    final synthetic android.widget.EditText val$input;
    final synthetic java.security.PrivateKey val$key;
    final synthetic android.widget.CheckBox val$userSelectableCheckbox;

    PolicyManagementFragment$22(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2, android.widget.CheckBox p3, java.security.PrivateKey p4, java.security.cert.Certificate p5)
    {
        this.this$0 = p1;
        this.val$input = p2;
        this.val$userSelectableCheckbox = p3;
        this.val$key = p4;
        this.val$certificate = p5;
        return;
    }

    public void onClick(android.content.DialogInterface p8, int p9)
    {
        String v0 = this.val$input.getText().toString();
        if (com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1300(this.this$0, this.val$key, this.val$certificate, v0, this.val$userSelectableCheckbox.isChecked()) != 1) {
            com.afwsamples.testdpc.policy.PolicyManagementFragment v2_2 = this.this$0;
            Object[] v4_1 = new Object[1];
            v4_1[0] = v0;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(v2_2, 2131689607, v4_1);
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment v2_4 = this.this$0;
            Object[] v4_2 = new Object[1];
            v4_2[0] = v0;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(v2_4, 2131689608, v4_2);
        }
        p8.dismiss();
        return;
    }
}
