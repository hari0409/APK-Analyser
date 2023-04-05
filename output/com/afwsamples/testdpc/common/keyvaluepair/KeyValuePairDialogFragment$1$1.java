package com.afwsamples.testdpc.common.keyvaluepair;
 class KeyValuePairDialogFragment$1$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$1 this$1;

    KeyValuePairDialogFragment$1$1(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$1 p1)
    {
        this.this$1 = p1;
        return;
    }

    public void onClick(android.view.View p7)
    {
        String v0 = com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$200(this.this$1.this$0).getText().toString();
        if (!android.text.TextUtils.isEmpty(v0)) {
            android.content.Intent v1_1 = new android.content.Intent();
            v1_1.putExtra("type", com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$400(this.this$1.this$0));
            v1_1.putExtra("key", v0);
            if (!com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$500(this.this$1.this$0, v1_1)) {
                com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$300(this.this$1.this$0, 2131690372);
            } else {
                this.this$1.this$0.getTargetFragment().onActivityResult(this.this$1.this$0.getTargetRequestCode(), -1, v1_1);
                this.this$1.val$dialog.dismiss();
            }
        } else {
            com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$300(this.this$1.this$0, 2131689881);
        }
        return;
    }
}
