package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$26 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic java.util.List val$installedApps;

    PolicyManagementFragment$26(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, java.util.List p2)
    {
        this.this$0 = p1;
        this.val$installedApps = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p3, int p4)
    {
        com.afwsamples.testdpc.common.PackageInstallationUtils.uninstallPackage(this.this$0.getContext(), ((String) this.val$installedApps.get(p4)));
        return;
    }
}
