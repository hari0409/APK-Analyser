package androidx.appcompat.widget;
 class ShareActionProvider$ShareActivityChooserModelPolicy implements androidx.appcompat.widget.ActivityChooserModel$OnChooseActivityListener {
    final synthetic androidx.appcompat.widget.ShareActionProvider this$0;

    ShareActionProvider$ShareActivityChooserModelPolicy(androidx.appcompat.widget.ShareActionProvider p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onChooseActivity(androidx.appcompat.widget.ActivityChooserModel p3, android.content.Intent p4)
    {
        if (this.this$0.mOnShareTargetSelectedListener != null) {
            this.this$0.mOnShareTargetSelectedListener.onShareTargetSelected(this.this$0, p4);
        }
        return 0;
    }
}
