package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$6 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic com.afwsamples.testdpc.policy.locktask.LockTaskAppInfoArrayAdapter val$appInfoArrayAdapter;
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment$ManageLockTaskListCallback val$callback;

    PolicyManagementFragment$6(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, com.afwsamples.testdpc.policy.locktask.LockTaskAppInfoArrayAdapter p2, com.afwsamples.testdpc.policy.PolicyManagementFragment$ManageLockTaskListCallback p3)
    {
        this.this$0 = p1;
        this.val$appInfoArrayAdapter = p2;
        this.val$callback = p3;
        return;
    }

    public void onClick(android.content.DialogInterface p3, int p4)
    {
        this.val$callback.onPositiveButtonClicked(this.val$appInfoArrayAdapter.getLockTaskList());
        return;
    }
}
