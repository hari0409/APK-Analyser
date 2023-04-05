package com.afwsamples.testdpc.common.keyvaluepair;
 class KeyValuePairDialogFragment$1 implements android.content.DialogInterface$OnShowListener {
    final synthetic com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment this$0;
    final synthetic android.app.AlertDialog val$dialog;

    KeyValuePairDialogFragment$1(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1, android.app.AlertDialog p2)
    {
        this.this$0 = p1;
        this.val$dialog = p2;
        return;
    }

    public void onShow(android.content.DialogInterface p3)
    {
        this.val$dialog.getButton(-1).setOnClickListener(new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$1$1(this));
        return;
    }
}
