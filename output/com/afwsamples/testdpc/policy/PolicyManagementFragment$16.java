package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$16 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.EditText val$input;

    PolicyManagementFragment$16(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2)
    {
        this.this$0 = p1;
        this.val$input = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p6, int p7)
    {
        String v0 = this.val$input.getText().toString();
        if (android.text.TextUtils.isEmpty(v0)) {
            Object[] v3_0 = new Object[0];
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, 2131689590, v3_0);
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).setUninstallBlocked(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0), v0, 0);
            com.afwsamples.testdpc.policy.PolicyManagementFragment v1_3 = this.this$0;
            Object[] v3_2 = new Object[1];
            v3_2[0] = v0;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(v1_3, 2131690336, v3_2);
        }
        return;
    }
}
