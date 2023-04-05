package com.afwsamples.testdpc.common;
 class StringArrayTypeInputAdapter$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.StringArrayTypeInputAdapter this$0;
    final synthetic com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder val$holder;

    StringArrayTypeInputAdapter$1(com.afwsamples.testdpc.common.StringArrayTypeInputAdapter p1, com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder p2)
    {
        this.this$0 = p1;
        this.val$holder = p2;
        return;
    }

    public void onClick(android.view.View p3)
    {
        int v0 = this.val$holder.getAdapterPosition();
        if (v0 != -1) {
            com.afwsamples.testdpc.common.StringArrayTypeInputAdapter.access$000(this.this$0).remove(v0);
            this.this$0.notifyItemRemoved(v0);
        }
        return;
    }
}
