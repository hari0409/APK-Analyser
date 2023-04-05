package com.afwsamples.testdpc.policy.blockuninstallation;
 class BlockUninstallationInfoArrayAdapter$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter this$0;
    final synthetic int val$position;

    BlockUninstallationInfoArrayAdapter$1(com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter p1, int p2)
    {
        this.this$0 = p1;
        this.val$position = p2;
        return;
    }

    public void onClick(android.view.View p6)
    {
        boolean v0 = ((android.widget.CheckBox) p6).isChecked();
        com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter.access$000(this.this$0).set(this.val$position, Boolean.valueOf(v0));
        com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter.access$200(this.this$0).setUninstallBlocked(com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter.access$100(this.this$0), ((android.content.pm.ResolveInfo) this.this$0.getItem(this.val$position)).resolvePackageName, v0);
        return;
    }
}
