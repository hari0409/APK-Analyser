package com.afwsamples.testdpc.common;
public class StringArrayTypeInputAdapter extends androidx.recyclerview.widget.RecyclerView$Adapter {
    private java.util.List mStringList;

    public StringArrayTypeInputAdapter()
    {
        this.mStringList = new java.util.ArrayList();
        return;
    }

    static synthetic java.util.List access$000(com.afwsamples.testdpc.common.StringArrayTypeInputAdapter p1)
    {
        return p1.mStringList;
    }

    private android.text.TextWatcher createEditTextTextWatcher(com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder p2)
    {
        return new com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$2(this, p2);
    }

    public int getItemCount()
    {
        return this.mStringList.size();
    }

    public java.util.List getStringList()
    {
        return this.mStringList;
    }

    public bridge synthetic void onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder p1, int p2)
    {
        this.onBindViewHolder(((com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder) p1), p2);
        return;
    }

    public void onBindViewHolder(com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder p3, int p4)
    {
        p3.stringValue.setText(((CharSequence) this.mStringList.get(p4)));
        if (p3.textWatcher != null) {
            p3.stringValue.removeTextChangedListener(p3.textWatcher);
        }
        p3.textWatcher = this.createEditTextTextWatcher(p3);
        p3.stringValue.addTextChangedListener(p3.textWatcher);
        p3.delete.setOnClickListener(new com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$1(this, p3));
        return;
    }

    public bridge synthetic androidx.recyclerview.widget.RecyclerView$ViewHolder onCreateViewHolder(android.view.ViewGroup p2, int p3)
    {
        return this.onCreateViewHolder(p2, p3);
    }

    public com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder onCreateViewHolder(android.view.ViewGroup p5, int p6)
    {
        return new com.afwsamples.testdpc.common.StringArrayTypeInputAdapter$ViewHolder(this, android.view.LayoutInflater.from(p5.getContext()).inflate(2131427447, p5, 0));
    }

    public void setStringList(java.util.List p1)
    {
        this.mStringList = p1;
        this.notifyDataSetChanged();
        return;
    }
}
