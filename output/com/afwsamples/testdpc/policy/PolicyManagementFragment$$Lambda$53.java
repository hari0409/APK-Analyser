package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$53 implements android.view.View$OnClickListener {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;
    private final com.afwsamples.testdpc.DevicePolicyManagerGateway arg$2;

    PolicyManagementFragment$$Lambda$53(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, com.afwsamples.testdpc.DevicePolicyManagerGateway p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onClick(android.view.View p3)
    {
        this.arg$1.lambda$setPermittedInputMethodsOnParent$159$PolicyManagementFragment(this.arg$2, p3);
        return;
    }
}
