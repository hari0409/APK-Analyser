package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$66 implements android.accounts.AccountManagerCallback {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;
    private final android.accounts.Account arg$2;

    PolicyManagementFragment$$Lambda$66(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.accounts.Account p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void run(android.accounts.AccountManagerFuture p3)
    {
        this.arg$1.lambda$removeAccount$172$PolicyManagementFragment(this.arg$2, p3);
        return;
    }
}
