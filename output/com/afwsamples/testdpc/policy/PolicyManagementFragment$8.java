package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$8 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.EditText val$input;

    PolicyManagementFragment$8(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2)
    {
        this.this$0 = p1;
        this.val$input = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p6, int p7)
    {
        int v2_1;
        if (!com.afwsamples.testdpc.policy.PolicyManagementFragment.access$300(this.this$0).isLockTaskPermitted(this.val$input.getText().toString())) {
            v2_1 = 2131689616;
        } else {
            v2_1 = 2131689617;
        }
        Object[] v4_1 = new Object[0];
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, v2_1, v4_1);
        p6.dismiss();
        return;
    }
}
