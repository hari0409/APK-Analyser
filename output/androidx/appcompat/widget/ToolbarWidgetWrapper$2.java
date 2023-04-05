package androidx.appcompat.widget;
 class ToolbarWidgetWrapper$2 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    private boolean mCanceled;
    final synthetic androidx.appcompat.widget.ToolbarWidgetWrapper this$0;
    final synthetic int val$visibility;

    ToolbarWidgetWrapper$2(androidx.appcompat.widget.ToolbarWidgetWrapper p2, int p3)
    {
        this.this$0 = p2;
        this.val$visibility = p3;
        this.mCanceled = 0;
        return;
    }

    public void onAnimationCancel(android.view.View p2)
    {
        this.mCanceled = 1;
        return;
    }

    public void onAnimationEnd(android.view.View p3)
    {
        if (!this.mCanceled) {
            this.this$0.mToolbar.setVisibility(this.val$visibility);
        }
        return;
    }

    public void onAnimationStart(android.view.View p3)
    {
        this.this$0.mToolbar.setVisibility(0);
        return;
    }
}
