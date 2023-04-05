package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$20 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic int val$attempts;
    final synthetic android.widget.EditText val$input;
    final synthetic android.content.Intent val$intent;

    PolicyManagementFragment$20(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2, android.content.Intent p3, int p4)
    {
        this.this$0 = p1;
        this.val$input = p2;
        this.val$intent = p3;
        this.val$attempts = p4;
        return;
    }

    public void onClick(android.content.DialogInterface p5, int p6)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1200(this.this$0, this.val$intent, this.val$input.getText().toString(), this.val$attempts);
        p5.dismiss();
        return;
    }
}
