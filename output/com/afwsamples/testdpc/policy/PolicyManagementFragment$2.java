package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$2 extends android.app.admin.DevicePolicyManager$InstallSystemUpdateCallback {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    PolicyManagementFragment$2(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onInstallUpdateError(int p4, String p5)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$100(this.this$0, new StringBuilder().append("Error code: ").append(p4).toString());
        return;
    }
}
