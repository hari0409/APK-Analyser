package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$27 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic int val$failureResId;
    final synthetic java.util.List val$showApps;
    final synthetic boolean val$showHiddenApps;
    final synthetic int val$successResId;

    PolicyManagementFragment$27(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, java.util.List p2, boolean p3, int p4, int p5)
    {
        this.this$0 = p1;
        this.val$showApps = p2;
        this.val$showHiddenApps = p3;
        this.val$successResId = p4;
        this.val$failureResId = p5;
        return;
    }

    public void onClick(android.content.DialogInterface p8, int p9)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment v1_1;
        String v0_1 = ((String) this.val$showApps.get(p9));
        com.afwsamples.testdpc.policy.PolicyManagementFragment v4_2 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0);
        android.content.ComponentName vtmp3 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0);
        if (this.val$showHiddenApps) {
            v1_1 = 0;
        } else {
            v1_1 = 1;
        }
        if (!v4_2.setApplicationHidden(vtmp3, v0_1, v1_1)) {
            com.afwsamples.testdpc.policy.PolicyManagementFragment v1_3 = this.this$0;
            com.afwsamples.testdpc.policy.PolicyManagementFragment v4_0 = this.this$0;
            int v5_1 = this.val$failureResId;
            Object[] v6 = new Object[1];
            v6[0] = v0_1;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1600(v1_3, v4_0.getString(v5_1, v6), 1);
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment v1_5 = this.this$0;
            com.afwsamples.testdpc.policy.PolicyManagementFragment v4_1 = this.val$successResId;
            Object[] v2_1 = new Object[1];
            v2_1[0] = v0_1;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(v1_5, v4_1, v2_1);
        }
        return;
    }
}
