package com.afwsamples.testdpc.common;
public class BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter extends androidx.preference.PreferenceGroupAdapter {
    private int mHighlightPosition;

    public BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter(androidx.preference.PreferenceGroup p2)
    {
        super(p2);
        super.mHighlightPosition = -1;
        return;
    }

    static synthetic int access$000(com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter p1)
    {
        return p1.mHighlightPosition;
    }

    public void highlight(int p1)
    {
        this.mHighlightPosition = p1;
        this.notifyDataSetChanged();
        return;
    }

    public void onBindViewHolder(androidx.preference.PreferenceViewHolder p7, int p8)
    {
        super.onBindViewHolder(p7, p8);
        if (p8 == this.mHighlightPosition) {
            android.view.View v2 = p7.itemView;
            if (v2.getBackground() != null) {
                v2.getBackground().setHotspot(((float) (v2.getWidth() / 2)), ((float) (v2.getHeight() / 2)));
            }
            v2.setPressed(1);
            v2.setPressed(0);
            this.mHighlightPosition = -1;
        }
        return;
    }

    public bridge synthetic void onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder p1, int p2)
    {
        this.onBindViewHolder(((androidx.preference.PreferenceViewHolder) p1), p2);
        return;
    }
}
