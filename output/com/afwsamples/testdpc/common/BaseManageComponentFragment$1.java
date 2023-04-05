package com.afwsamples.testdpc.common;
 class BaseManageComponentFragment$1 implements android.widget.AdapterView$OnItemSelectedListener {
    final synthetic com.afwsamples.testdpc.common.BaseManageComponentFragment this$0;

    BaseManageComponentFragment$1(com.afwsamples.testdpc.common.BaseManageComponentFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        this.this$0.onSpinnerItemSelected(this.this$0.mManagedAppsSpinner.getSelectedItem());
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }
}
