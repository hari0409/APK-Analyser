package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$11 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.RadioGroup val$permissionGroup;

    PolicyManagementFragment$11(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.RadioGroup p2)
    {
        this.this$0 = p1;
        this.val$permissionGroup = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p5, int p6)
    {
        int v1 = 0;
        switch (this.val$permissionGroup.getCheckedRadioButtonId()) {
            case 2131296271:
                v1 = 1;
                break;
            case 2131296402:
                v1 = 2;
                break;
            case 2131296559:
                v1 = 0;
                break;
        }
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).setPermissionPolicy(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0), v1);
        p5.dismiss();
        return;
    }
}
