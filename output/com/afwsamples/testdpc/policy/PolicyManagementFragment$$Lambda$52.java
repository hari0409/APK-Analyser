package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$52 implements android.app.admin.DevicePolicyManager$OnClearApplicationUserDataListener {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;
    private final String arg$2;

    PolicyManagementFragment$$Lambda$52(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, String p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onApplicationUserDataCleared(String p3, boolean p4)
    {
        this.arg$1.lambda$clearApplicationUserData$158$PolicyManagementFragment(this.arg$2, p3, p4);
        return;
    }
}
