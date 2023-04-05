package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$10 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.CheckBox val$externalStorageCheckBox;
    final synthetic android.widget.CheckBox val$resetProtectionCheckBox;

    PolicyManagementFragment$10(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.CheckBox p2, android.widget.CheckBox p3)
    {
        this.this$0 = p1;
        this.val$externalStorageCheckBox = p2;
        this.val$resetProtectionCheckBox = p3;
        return;
    }

    final synthetic void lambda$onClick$123$PolicyManagementFragment$10(Void p3)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$600(this.this$0, "wipeData");
        return;
    }

    final synthetic void lambda$onClick$124$PolicyManagementFragment$10(Exception p3)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$500(this.this$0, "wipeData", p3);
        return;
    }

    public void onClick(android.content.DialogInterface p5, int p6)
    {
        com.afwsamples.testdpc.DevicePolicyManagerGateway v1_5;
        com.afwsamples.testdpc.policy.PolicyManagementFragment$10$$Lambda$0 v2_0 = 0;
        if (!this.val$externalStorageCheckBox.isChecked()) {
            v1_5 = 0;
        } else {
            v1_5 = 1;
        }
        if (this.val$resetProtectionCheckBox.isChecked()) {
            v2_0 = 2;
        }
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$300(this.this$0).wipeData(((0 | v1_5) | v2_0), new com.afwsamples.testdpc.policy.PolicyManagementFragment$10$$Lambda$0(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$10$$Lambda$1(this));
        return;
    }
}
