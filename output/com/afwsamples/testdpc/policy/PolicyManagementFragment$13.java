package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$13 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.EditText val$input;

    PolicyManagementFragment$13(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2)
    {
        this.this$0 = p1;
        this.val$input = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p4, int p5)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$800(this.this$0, this.val$input.getText().toString(), 1);
        return;
    }
}
