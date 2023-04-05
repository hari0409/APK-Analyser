package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$24$1 implements java.lang.Runnable {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment$24 this$1;
    final synthetic boolean val$removed;

    PolicyManagementFragment$24$1(com.afwsamples.testdpc.policy.PolicyManagementFragment$24 p1, boolean p2)
    {
        this.this$1 = p1;
        this.val$removed = p2;
        return;
    }

    public void run()
    {
        if (!this.val$removed) {
            Object[] v2_2 = new Object[0];
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$1.this$0, 2131690112, v2_2);
        } else {
            Object[] v2_1 = new Object[0];
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$1.this$0, 2131690113, v2_1);
        }
        return;
    }
}
