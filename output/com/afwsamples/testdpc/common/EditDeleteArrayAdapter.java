package com.afwsamples.testdpc.common;
public abstract class EditDeleteArrayAdapter extends android.widget.ArrayAdapter implements android.view.View$OnClickListener {
    private java.util.List mEntries;
    private com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener mOnDeleteButtonClickListener;
    private com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener mOnEditButtonClickListener;

    public EditDeleteArrayAdapter(android.content.Context p2, java.util.List p3, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener p4, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener p5)
    {
        super(p2, 0, p3);
        super.mEntries = p3;
        super.mOnEditButtonClickListener = p4;
        super.mOnDeleteButtonClickListener = p5;
        return;
    }

    protected abstract String getDisplayName();

    public android.view.View getView(int p5, android.view.View p6, android.view.ViewGroup p7)
    {
        com.afwsamples.testdpc.common.EditDeleteArrayAdapter$RowViewHolder v0_2;
        if (p6 != null) {
            v0_2 = ((com.afwsamples.testdpc.common.EditDeleteArrayAdapter$RowViewHolder) p6.getTag());
        } else {
            p6 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427377, p7, 0);
            p6.findViewById(2131296418).setOnClickListener(this);
            p6.findViewById(2131296401).setOnClickListener(this);
            v0_2 = new com.afwsamples.testdpc.common.EditDeleteArrayAdapter$RowViewHolder(0);
            p6.setTag(v0_2);
            v0_2.restrictionKeyText = ((android.widget.TextView) p6.findViewById(2131296572));
        }
        v0_2.entry = this.getItem(p5);
        v0_2.restrictionKeyText.setText(this.getDisplayName(v0_2.entry));
        v0_2.entryPosition = p5;
        return p6;
    }

    public void notifyDataSetChanged()
    {
        if (this.mEntries != null) {
            java.util.Collections.sort(this.mEntries, new com.afwsamples.testdpc.common.EditDeleteArrayAdapter$1(this));
        }
        super.notifyDataSetChanged();
        return;
    }

    public void onClick(android.view.View p6)
    {
        android.view.View v1_0 = p6.getParent();
        if (((v1_0 instanceof android.view.View)) && (((android.view.View) v1_0).getTag() != null)) {
            Object v0 = ((com.afwsamples.testdpc.common.EditDeleteArrayAdapter$RowViewHolder) ((android.view.View) v1_0).getTag()).entry;
            if (p6.getId() != 2131296418) {
                if (p6.getId() == 2131296401) {
                    this.remove(v0);
                    if (this.mOnDeleteButtonClickListener != null) {
                        this.mOnDeleteButtonClickListener.onDeleteButtonClick(v0);
                    }
                }
            } else {
                this.mOnEditButtonClickListener.onEditButtonClick(v0);
            }
        }
        return;
    }

    public void set(int p2, Object p3)
    {
        this.mEntries.set(p2, p3);
        this.notifyDataSetChanged();
        return;
    }
}
