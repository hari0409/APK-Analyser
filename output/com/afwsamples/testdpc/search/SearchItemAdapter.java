package com.afwsamples.testdpc.search;
public class SearchItemAdapter extends androidx.recyclerview.widget.RecyclerView$Adapter {
    private com.afwsamples.testdpc.search.SearchItemAdapter$OnItemClickListener mOnItemClickListener;
    private java.util.List mPreferenceIndexList;

    public SearchItemAdapter(com.afwsamples.testdpc.search.SearchItemAdapter$OnItemClickListener p2)
    {
        this.mPreferenceIndexList = new java.util.ArrayList();
        this.mOnItemClickListener = p2;
        return;
    }

    static synthetic java.util.List access$000(com.afwsamples.testdpc.search.SearchItemAdapter p1)
    {
        return p1.mPreferenceIndexList;
    }

    static synthetic com.afwsamples.testdpc.search.SearchItemAdapter$OnItemClickListener access$100(com.afwsamples.testdpc.search.SearchItemAdapter p1)
    {
        return p1.mOnItemClickListener;
    }

    public int getItemCount()
    {
        return this.mPreferenceIndexList.size();
    }

    public bridge synthetic void onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder p1, int p2)
    {
        this.onBindViewHolder(((com.afwsamples.testdpc.search.SearchItemAdapter$SearchItemViewHolder) p1), p2);
        return;
    }

    public void onBindViewHolder(com.afwsamples.testdpc.search.SearchItemAdapter$SearchItemViewHolder p4, int p5)
    {
        p4.textView.setText(((com.afwsamples.testdpc.search.PreferenceIndex) this.mPreferenceIndexList.get(p5)).title);
        p4.textView.setOnClickListener(new com.afwsamples.testdpc.search.SearchItemAdapter$1(this, p4));
        return;
    }

    public bridge synthetic androidx.recyclerview.widget.RecyclerView$ViewHolder onCreateViewHolder(android.view.ViewGroup p2, int p3)
    {
        return this.onCreateViewHolder(p2, p3);
    }

    public com.afwsamples.testdpc.search.SearchItemAdapter$SearchItemViewHolder onCreateViewHolder(android.view.ViewGroup p5, int p6)
    {
        return new com.afwsamples.testdpc.search.SearchItemAdapter$SearchItemViewHolder(android.view.LayoutInflater.from(p5.getContext()).inflate(2131427436, p5, 0));
    }

    public void setSearchResult(java.util.List p1)
    {
        this.mPreferenceIndexList = p1;
        return;
    }
}
