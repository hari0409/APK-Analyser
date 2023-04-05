package androidx.appcompat.widget;
 class ActivityChooserView$5 extends android.database.DataSetObserver {
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$5(androidx.appcompat.widget.ActivityChooserView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onChanged()
    {
        super.onChanged();
        this.this$0.updateAppearance();
        return;
    }
}
