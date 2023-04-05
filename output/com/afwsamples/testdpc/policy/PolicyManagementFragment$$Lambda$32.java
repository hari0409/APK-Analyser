package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$32 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;
    private final boolean arg$2;

    PolicyManagementFragment$$Lambda$32(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, boolean p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void accept(Object p3)
    {
        this.arg$1.lambda$setKeyGuardDisabled$120$PolicyManagementFragment(this.arg$2, ((Exception) p3));
        return;
    }
}
