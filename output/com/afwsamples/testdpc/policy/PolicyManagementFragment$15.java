package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$15 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.EditText val$input;

    PolicyManagementFragment$15(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2)
    {
        this.this$0 = p1;
        this.val$input = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p5, int p6)
    {
        try {
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1000(this.this$0, com.afwsamples.testdpc.policy.PolicyManagementFragment.access$300(this.this$0).getUserHandle(Long.parseLong(this.val$input.getText().toString())));
        } catch (NumberFormatException v2) {
        }
        return;
    }
}
