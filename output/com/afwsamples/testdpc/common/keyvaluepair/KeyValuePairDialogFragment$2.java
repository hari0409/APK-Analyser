package com.afwsamples.testdpc.common.keyvaluepair;
 class KeyValuePairDialogFragment$2 extends android.widget.ArrayAdapter {
    final synthetic com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment this$0;

    KeyValuePairDialogFragment$2(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1, android.content.Context p2, int p3, String[] p4)
    {
        this.this$0 = p1;
        super(p2, p3, p4);
        return;
    }

    public android.view.View getDropDownView(int p3, android.view.View p4, android.view.ViewGroup p5)
    {
        android.widget.TextView v0_1 = ((android.widget.TextView) super.getDropDownView(p3, p4, p5));
        if (!this.isEnabled(p3)) {
            v0_1.setTextColor(-3355444);
        } else {
            v0_1.setTextColor(-16777216);
        }
        return v0_1;
    }

    public boolean isEnabled(int p3)
    {
        return com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$600(this.this$0).contains(Integer.valueOf(p3));
    }
}
