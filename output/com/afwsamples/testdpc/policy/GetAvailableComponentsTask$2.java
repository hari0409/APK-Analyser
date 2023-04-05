package com.afwsamples.testdpc.policy;
 class GetAvailableComponentsTask$2 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.GetAvailableComponentsTask this$0;
    final synthetic com.afwsamples.testdpc.policy.AvailableComponentsInfoArrayAdapter val$availableComponentsInfoArrayAdapter;

    GetAvailableComponentsTask$2(com.afwsamples.testdpc.policy.GetAvailableComponentsTask p1, com.afwsamples.testdpc.policy.AvailableComponentsInfoArrayAdapter p2)
    {
        this.this$0 = p1;
        this.val$availableComponentsInfoArrayAdapter = p2;
        return;
    }

    public void onClick(android.view.View p3)
    {
        java.util.ArrayList v0 = this.val$availableComponentsInfoArrayAdapter.getSelectedComponents();
        if (v0 != null) {
            this.this$0.setPermittedComponentsList(v0);
        }
        com.afwsamples.testdpc.policy.GetAvailableComponentsTask.access$000(this.this$0).dismiss();
        return;
    }
}
