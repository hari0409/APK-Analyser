package com.afwsamples.testdpc.policy;
 class GetAvailableComponentsTask$1 implements android.widget.AdapterView$OnItemClickListener {
    final synthetic com.afwsamples.testdpc.policy.GetAvailableComponentsTask this$0;
    final synthetic com.afwsamples.testdpc.policy.AvailableComponentsInfoArrayAdapter val$availableComponentsInfoArrayAdapter;

    GetAvailableComponentsTask$1(com.afwsamples.testdpc.policy.GetAvailableComponentsTask p1, com.afwsamples.testdpc.policy.AvailableComponentsInfoArrayAdapter p2)
    {
        this.this$0 = p1;
        this.val$availableComponentsInfoArrayAdapter = p2;
        return;
    }

    public void onItemClick(android.widget.AdapterView p7, android.view.View p8, int p9, long p10)
    {
        this.val$availableComponentsInfoArrayAdapter.onItemClick(p7, p8, p9, p10);
        return;
    }
}
