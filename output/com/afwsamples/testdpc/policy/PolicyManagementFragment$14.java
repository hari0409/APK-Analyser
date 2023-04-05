package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$14 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.CheckBox val$leaveAllSystemAppsEnabled;
    final synthetic android.widget.CheckBox val$makeUserEphemeralCheckBox;
    final synthetic android.widget.CheckBox val$skipSetupWizardCheckBox;
    final synthetic android.widget.EditText val$userNameEditText;

    PolicyManagementFragment$14(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2, android.widget.CheckBox p3, android.widget.CheckBox p4, android.widget.CheckBox p5)
    {
        this.this$0 = p1;
        this.val$userNameEditText = p2;
        this.val$skipSetupWizardCheckBox = p3;
        this.val$makeUserEphemeralCheckBox = p4;
        this.val$leaveAllSystemAppsEnabled = p5;
        return;
    }

    final synthetic void lambda$onClick$128$PolicyManagementFragment$14(android.os.UserHandle p7)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment v0 = this.this$0;
        Object[] v2_1 = new Object[1];
        v2_1[0] = Long.valueOf(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$900(this.this$0).getSerialNumberForUser(p7));
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(v0, 2131690355, v2_1);
        return;
    }

    final synthetic void lambda$onClick$129$PolicyManagementFragment$14(Exception p4)
    {
        Object[] v2_1 = new Object[0];
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, 2131689822, v2_1);
        return;
    }

    public void onClick(android.content.DialogInterface p6, int p7)
    {
        String v1 = this.val$userNameEditText.getText().toString();
        if (!android.text.TextUtils.isEmpty(v1)) {
            int v0 = 0;
            if (this.val$skipSetupWizardCheckBox.isChecked()) {
                v0 = (0 | 1);
            }
            if (this.val$makeUserEphemeralCheckBox.isChecked()) {
                v0 |= 2;
            }
            if (this.val$leaveAllSystemAppsEnabled.isChecked()) {
                v0 |= 16;
            }
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$300(this.this$0).createAndManageUser(v1, v0, new com.afwsamples.testdpc.policy.PolicyManagementFragment$14$$Lambda$0(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$14$$Lambda$1(this));
        }
        return;
    }
}
