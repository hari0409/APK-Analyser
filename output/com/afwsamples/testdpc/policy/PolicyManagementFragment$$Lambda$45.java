package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$45 implements android.content.DialogInterface$OnClickListener {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;
    private final java.util.List arg$2;

    PolicyManagementFragment$$Lambda$45(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, java.util.List p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p3, int p4)
    {
        this.arg$1.lambda$showEnableSystemAppsPrompt$149$PolicyManagementFragment(this.arg$2, p3, p4);
        return;
    }
}
