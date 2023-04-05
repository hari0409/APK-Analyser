package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$38 implements com.afwsamples.testdpc.policy.PolicyManagementFragment$UserCallback {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;

    PolicyManagementFragment$$Lambda$38(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        this.arg$1 = p1;
        return;
    }

    public void onUserChosen(android.os.UserHandle p2)
    {
        this.arg$1.lambda$showRemoveUserPrompt$132$PolicyManagementFragment(p2);
        return;
    }
}
