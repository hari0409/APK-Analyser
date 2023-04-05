package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$28$$Lambda$1 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment$28 arg$1;
    private final int arg$2;
    private final String arg$3;

    PolicyManagementFragment$28$$Lambda$1(com.afwsamples.testdpc.policy.PolicyManagementFragment$28 p1, int p2, String p3)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        return;
    }

    public void accept(Object p4)
    {
        this.arg$1.lambda$onClick$154$PolicyManagementFragment$28(this.arg$2, this.arg$3, ((Exception) p4));
        return;
    }
}
