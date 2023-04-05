package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$9 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.CheckBox val$dontRequireOnBoot;
    final synthetic android.widget.EditText val$passwordView;
    final synthetic android.widget.CheckBox val$requireEntry;

    PolicyManagementFragment$9(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2, android.widget.CheckBox p3, android.widget.CheckBox p4)
    {
        this.this$0 = p1;
        this.val$passwordView = p2;
        this.val$requireEntry = p3;
        this.val$dontRequireOnBoot = p4;
        return;
    }

    public void onClick(android.content.DialogInterface p8, int p9)
    {
        int v3 = this.val$passwordView.getText().toString();
        if (android.text.TextUtils.isEmpty(v3)) {
            v3 = 0;
        }
        int v4_3;
        if (!this.val$requireEntry.isChecked()) {
            v4_3 = 0;
        } else {
            v4_3 = 1;
        }
        int v4_6;
        if (!this.val$dontRequireOnBoot.isChecked()) {
            v4_6 = 0;
        } else {
            v4_6 = 2;
        }
        try {
            boolean v2 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).resetPassword(v3, ((0 | v4_3) | v4_6));
        } catch (SecurityException v0) {
            android.util.Log.w("PolicyManagement", "Failed to reset password", v0);
        } catch (SecurityException v0) {
        } catch (SecurityException v0) {
        }
        int v4_11;
        if (!v2) {
            v4_11 = 2131690057;
        } else {
            v4_11 = 2131690058;
        }
        Object[] v5_1 = new Object[0];
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, v4_11, v5_1);
        return;
    }
}
