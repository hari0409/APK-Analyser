package com.afwsamples.testdpc.search;
 class SearchItemAdapter$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.search.SearchItemAdapter this$0;
    final synthetic com.afwsamples.testdpc.search.SearchItemAdapter$SearchItemViewHolder val$holder;

    SearchItemAdapter$1(com.afwsamples.testdpc.search.SearchItemAdapter p1, com.afwsamples.testdpc.search.SearchItemAdapter$SearchItemViewHolder p2)
    {
        this.this$0 = p1;
        this.val$holder = p2;
        return;
    }

    public void onClick(android.view.View p4)
    {
        com.afwsamples.testdpc.search.SearchItemAdapter.access$100(this.this$0).onItemClick(((com.afwsamples.testdpc.search.PreferenceIndex) com.afwsamples.testdpc.search.SearchItemAdapter.access$000(this.this$0).get(this.val$holder.getAdapterPosition())));
        return;
    }
}
