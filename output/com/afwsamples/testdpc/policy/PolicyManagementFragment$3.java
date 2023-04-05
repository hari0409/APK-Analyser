package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$3 implements android.security.KeyChainAliasCallback {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    PolicyManagementFragment$3(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void alias(String p4)
    {
        if (p4 != null) {
            com.afwsamples.testdpc.policy.keymanagement.SignAndVerifyTask v0_2 = new com.afwsamples.testdpc.policy.keymanagement.SignAndVerifyTask(this.this$0.getContext(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$3$$Lambda$0(this));
            String[] v1_4 = new String[1];
            v1_4[0] = p4;
            v0_2.execute(v1_4);
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment.access$100(this.this$0, "No key chosen.");
        }
        return;
    }

    final synthetic void lambda$alias$107$PolicyManagementFragment$3(int p2, Object[] p3)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, p2, p3);
        return;
    }
}
