package com.afwsamples.testdpc.common;
 class IntentOrIntentFilterFragment$2 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.IntentOrIntentFilterFragment this$0;
    final synthetic android.widget.EditText val$customInputEditText;
    final synthetic int val$customInputType;

    IntentOrIntentFilterFragment$2(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment p1, int p2, android.widget.EditText p3)
    {
        this.this$0 = p1;
        this.val$customInputType = p2;
        this.val$customInputEditText = p3;
        return;
    }

    public void onClick(android.content.DialogInterface p3, int p4)
    {
        switch (this.val$customInputType) {
            case 0:
                this.this$0.mActions.add(this.val$customInputEditText.getText().toString());
                break;
            case 1:
                this.this$0.mCategories.add(this.val$customInputEditText.getText().toString());
                break;
            case 2:
                this.this$0.mDataSchemes.add(this.val$customInputEditText.getText().toString());
                break;
            case 3:
                this.this$0.mDataTypes.add(this.val$customInputEditText.getText().toString());
                break;
        }
        com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.access$000(this.this$0, this.val$customInputType);
        p3.dismiss();
        this.this$0.updateStatusTextView();
        return;
    }
}
