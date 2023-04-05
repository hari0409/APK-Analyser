package com.afwsamples.testdpc.common;
 class BaseSearchablePolicyPreferenceFragment$1 implements java.lang.Runnable {
    final synthetic com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment this$0;
    final synthetic int val$position;

    BaseSearchablePolicyPreferenceFragment$1(com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment p1, int p2)
    {
        this.this$0 = p1;
        this.val$position = p2;
        return;
    }

    public void run()
    {
        com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment.access$100(this.this$0).highlight(this.val$position);
        return;
    }
}
