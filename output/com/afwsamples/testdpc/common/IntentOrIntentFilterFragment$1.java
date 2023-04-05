package com.afwsamples.testdpc.common;
 class IntentOrIntentFilterFragment$1 implements android.content.DialogInterface$OnCancelListener {
    final synthetic com.afwsamples.testdpc.common.IntentOrIntentFilterFragment this$0;
    final synthetic int val$customInputType;

    IntentOrIntentFilterFragment$1(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment p1, int p2)
    {
        this.this$0 = p1;
        this.val$customInputType = p2;
        return;
    }

    public void onCancel(android.content.DialogInterface p3)
    {
        com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.access$000(this.this$0, this.val$customInputType);
        p3.dismiss();
        return;
    }
}
