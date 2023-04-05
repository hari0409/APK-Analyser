package androidx.appcompat.widget;
 class ActivityChooserView$ActivityChooserViewAdapter extends android.widget.BaseAdapter {
    private static final int ITEM_VIEW_TYPE_ACTIVITY = 0;
    private static final int ITEM_VIEW_TYPE_COUNT = 3;
    private static final int ITEM_VIEW_TYPE_FOOTER = 1;
    public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
    public static final int MAX_ACTIVITY_COUNT_UNLIMITED = 2147483647;
    private androidx.appcompat.widget.ActivityChooserModel mDataModel;
    private boolean mHighlightDefaultActivity;
    private int mMaxActivityCount;
    private boolean mShowDefaultActivity;
    private boolean mShowFooterView;
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$ActivityChooserViewAdapter(androidx.appcompat.widget.ActivityChooserView p2)
    {
        this.this$0 = p2;
        this.mMaxActivityCount = 4;
        return;
    }

    public int getActivityCount()
    {
        return this.mDataModel.getActivityCount();
    }

    public int getCount()
    {
        int v0 = this.mDataModel.getActivityCount();
        if ((!this.mShowDefaultActivity) && (this.mDataModel.getDefaultActivity() != null)) {
            v0--;
        }
        int v1 = Math.min(v0, this.mMaxActivityCount);
        if (this.mShowFooterView) {
            v1++;
        }
        return v1;
    }

    public androidx.appcompat.widget.ActivityChooserModel getDataModel()
    {
        return this.mDataModel;
    }

    public android.content.pm.ResolveInfo getDefaultActivity()
    {
        return this.mDataModel.getDefaultActivity();
    }

    public int getHistorySize()
    {
        return this.mDataModel.getHistorySize();
    }

    public Object getItem(int p3)
    {
        android.content.pm.ResolveInfo v1_1;
        switch (this.getItemViewType(p3)) {
            case 0:
                if ((!this.mShowDefaultActivity) && (this.mDataModel.getDefaultActivity() != null)) {
                    p3++;
                }
                v1_1 = this.mDataModel.getActivity(p3);
                break;
            case 1:
                v1_1 = 0;
                break;
            default:
                throw new IllegalArgumentException();
        }
        return v1_1;
    }

    public long getItemId(int p3)
    {
        return ((long) p3);
    }

    public int getItemViewType(int p2)
    {
        if ((!this.mShowFooterView) || (p2 != (this.getCount() - 1))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean getShowDefaultActivity()
    {
        return this.mShowDefaultActivity;
    }

    public android.view.View getView(int p12, android.view.View p13, android.view.ViewGroup p14)
    {
        android.view.View v2;
        switch (this.getItemViewType(p12)) {
            case 0:
                if ((p13 == null) || (p13.getId() != androidx.appcompat.R$id.list_item)) {
                    p13 = android.view.LayoutInflater.from(this.this$0.getContext()).inflate(androidx.appcompat.R$layout.abc_activity_chooser_view_list_item, p14, 0);
                }
                android.content.pm.PackageManager v5 = this.this$0.getContext().getPackageManager();
                android.content.pm.ResolveInfo v0_1 = ((android.content.pm.ResolveInfo) this.getItem(p12));
                ((android.widget.ImageView) p13.findViewById(androidx.appcompat.R$id.icon)).setImageDrawable(v0_1.loadIcon(v5));
                ((android.widget.TextView) p13.findViewById(androidx.appcompat.R$id.title)).setText(v0_1.loadLabel(v5));
                if ((!this.mShowDefaultActivity) || ((p12 != 0) || (!this.mHighlightDefaultActivity))) {
                    p13.setActivated(0);
                } else {
                    p13.setActivated(1);
                }
                v2 = p13;
                break;
            case 1:
                if ((p13 == null) || (p13.getId() != 1)) {
                    p13 = android.view.LayoutInflater.from(this.this$0.getContext()).inflate(androidx.appcompat.R$layout.abc_activity_chooser_view_list_item, p14, 0);
                    p13.setId(1);
                    ((android.widget.TextView) p13.findViewById(androidx.appcompat.R$id.title)).setText(this.this$0.getContext().getString(androidx.appcompat.R$string.abc_activity_chooser_view_see_all));
                }
                v2 = p13;
                break;
            default:
                throw new IllegalArgumentException();
        }
        return v2;
    }

    public int getViewTypeCount()
    {
        return 3;
    }

    public int measureContentWidth()
    {
        int v5 = this.mMaxActivityCount;
        this.mMaxActivityCount = 2147483647;
        int v0 = 0;
        android.view.View v4 = 0;
        int v6 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
        int v2 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
        int v1 = this.getCount();
        int v3 = 0;
        while (v3 < v1) {
            v4 = this.getView(v3, v4, 0);
            v4.measure(v6, v2);
            v0 = Math.max(v0, v4.getMeasuredWidth());
            v3++;
        }
        this.mMaxActivityCount = v5;
        return v0;
    }

    public void setDataModel(androidx.appcompat.widget.ActivityChooserModel p3)
    {
        androidx.appcompat.widget.ActivityChooserModel v0 = this.this$0.mAdapter.getDataModel();
        if ((v0 != null) && (this.this$0.isShown())) {
            v0.unregisterObserver(this.this$0.mModelDataSetObserver);
        }
        this.mDataModel = p3;
        if ((p3 != null) && (this.this$0.isShown())) {
            p3.registerObserver(this.this$0.mModelDataSetObserver);
        }
        this.notifyDataSetChanged();
        return;
    }

    public void setMaxActivityCount(int p2)
    {
        if (this.mMaxActivityCount != p2) {
            this.mMaxActivityCount = p2;
            this.notifyDataSetChanged();
        }
        return;
    }

    public void setShowDefaultActivity(boolean p2, boolean p3)
    {
        if ((this.mShowDefaultActivity != p2) || (this.mHighlightDefaultActivity != p3)) {
            this.mShowDefaultActivity = p2;
            this.mHighlightDefaultActivity = p3;
            this.notifyDataSetChanged();
        }
        return;
    }

    public void setShowFooterView(boolean p2)
    {
        if (this.mShowFooterView != p2) {
            this.mShowFooterView = p2;
            this.notifyDataSetChanged();
        }
        return;
    }
}
