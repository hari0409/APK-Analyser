package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$24 implements android.security.KeyChainAliasCallback {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    PolicyManagementFragment$24(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void alias(String p4)
    {
        if (p4 != null) {
            this.this$0.getActivity().runOnUiThread(new com.afwsamples.testdpc.policy.PolicyManagementFragment$24$1(this, com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).removeKeyPair(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0), p4)));
        }
        return;
    }
}
