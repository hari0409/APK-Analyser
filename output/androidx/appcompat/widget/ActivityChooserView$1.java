package androidx.appcompat.widget;
 class ActivityChooserView$1 extends android.database.DataSetObserver {
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$1(androidx.appcompat.widget.ActivityChooserView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onChanged()
    {
        super.onChanged();
        this.this$0.mAdapter.notifyDataSetChanged();
        return;
    }

    public void onInvalidated()
    {
        super.onInvalidated();
        this.this$0.mAdapter.notifyDataSetInvalidated();
        return;
    }
}
