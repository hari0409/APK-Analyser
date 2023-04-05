package com.afwsamples.testdpc.common;
 class StringArrayTypeInputAdapter$2 implements android.text.TextWatcher {
    final synthetic com.afwsamples.testdpc.common.StringArrayTypeInputAdapter this$0;
    final synthetic com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder val$viewHolder;

    StringArrayTypeInputAdapter$2(com.afwsamples.testdpc.common.StringArrayTypeInputAdapter p1, com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder p2)
    {
        this.this$0 = p1;
        this.val$viewHolder = p2;
        return;
    }

    public void afterTextChanged(android.text.Editable p4)
    {
        com.afwsamples.testdpc.common.StringArrayTypeInputAdapter.access$000(this.this$0).set(this.val$viewHolder.getAdapterPosition(), p4.toString());
        return;
    }

    public void beforeTextChanged(CharSequence p1, int p2, int p3, int p4)
    {
        return;
    }

    public void onTextChanged(CharSequence p1, int p2, int p3, int p4)
    {
        return;
    }
}
