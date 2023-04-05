package com.afwsamples.testdpc.common.keyvaluepair;
 class KeyValuePairDialogFragment$4 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment this$0;

    KeyValuePairDialogFragment$4(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p3)
    {
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$800(this.this$0).getStringList().add("");
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$800(this.this$0).notifyItemInserted(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$800(this.this$0).getItemCount());
        return;
    }
}
