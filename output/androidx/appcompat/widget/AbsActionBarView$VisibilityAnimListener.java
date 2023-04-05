package androidx.appcompat.widget;
public class AbsActionBarView$VisibilityAnimListener implements androidx.core.view.ViewPropertyAnimatorListener {
    private boolean mCanceled;
    int mFinalVisibility;
    final synthetic androidx.appcompat.widget.AbsActionBarView this$0;

    protected AbsActionBarView$VisibilityAnimListener(androidx.appcompat.widget.AbsActionBarView p2)
    {
        this.this$0 = p2;
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
            this.this$0.mVisibilityAnim = 0;
            androidx.appcompat.widget.AbsActionBarView.access$101(this.this$0, this.mFinalVisibility);
        }
        return;
    }

    public void onAnimationStart(android.view.View p3)
    {
        androidx.appcompat.widget.AbsActionBarView.access$001(this.this$0, 0);
        this.mCanceled = 0;
        return;
    }

    public androidx.appcompat.widget.AbsActionBarView$VisibilityAnimListener withFinalVisibility(androidx.core.view.ViewPropertyAnimatorCompat p2, int p3)
    {
        this.this$0.mVisibilityAnim = p2;
        this.mFinalVisibility = p3;
        return this;
    }
}
