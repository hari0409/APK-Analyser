package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$4 implements android.widget.AdapterView$OnItemClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic com.afwsamples.testdpc.policy.locktask.LockTaskAppInfoArrayAdapter val$appInfoArrayAdapter;

    PolicyManagementFragment$4(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, com.afwsamples.testdpc.policy.locktask.LockTaskAppInfoArrayAdapter p2)
    {
        this.this$0 = p1;
        this.val$appInfoArrayAdapter = p2;
        return;
    }

    public void onItemClick(android.widget.AdapterView p7, android.view.View p8, int p9, long p10)
    {
        this.val$appInfoArrayAdapter.onItemClick(p7, p8, p9, p10);
        return;
    }
}
