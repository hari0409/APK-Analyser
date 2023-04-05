package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$28 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic int val$failureResId;
    final synthetic boolean val$forUnsuspending;
    final synthetic java.util.List val$showApps;
    final synthetic int val$successResId;

    PolicyManagementFragment$28(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, java.util.List p2, boolean p3, int p4, int p5)
    {
        this.this$0 = p1;
        this.val$showApps = p2;
        this.val$forUnsuspending = p3;
        this.val$successResId = p4;
        this.val$failureResId = p5;
        return;
    }

    final synthetic void lambda$onClick$153$PolicyManagementFragment$28(int p5, String p6, int p7, String[] p8)
    {
        if (p8.length != 0) {
            com.afwsamples.testdpc.policy.PolicyManagementFragment v0_1 = this.this$0;
            Object[] v2_2 = new Object[1];
            v2_2[0] = p6;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1900(v0_1, "setPackagesSuspended", p7, v2_2);
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment v0_2 = this.this$0;
            Object[] v2_1 = new Object[1];
            v2_1[0] = p6;
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1800(v0_2, "setPackagesSuspended", p5, v2_1);
        }
        return;
    }

    final synthetic void lambda$onClick$154$PolicyManagementFragment$28(int p5, String p6, Exception p7)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment v0 = this.this$0;
        Object[] v2_1 = new Object[1];
        v2_1[0] = p6;
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1700(v0, "setPackagesSuspended", p7, p5, v2_1);
        return;
    }

    public void onClick(android.content.DialogInterface p8, int p9)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment$28$$Lambda$0 v1 = 1;
        String v0_1 = ((String) this.val$showApps.get(p9));
        com.afwsamples.testdpc.DevicePolicyManagerGateway v3_2 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$300(this.this$0);
        String[] v4 = new String[1];
        v4[0] = v0_1;
        if (this.val$forUnsuspending) {
            v1 = 0;
        }
        v3_2.setPackagesSuspended(v4, v1, new com.afwsamples.testdpc.policy.PolicyManagementFragment$28$$Lambda$0(this, this.val$successResId, v0_1, this.val$failureResId), new com.afwsamples.testdpc.policy.PolicyManagementFragment$28$$Lambda$1(this, this.val$failureResId, v0_1));
        return;
    }
}
