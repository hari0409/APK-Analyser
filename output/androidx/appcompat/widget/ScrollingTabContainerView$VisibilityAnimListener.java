package androidx.appcompat.widget;
public class ScrollingTabContainerView$VisibilityAnimListener extends android.animation.AnimatorListenerAdapter {
    private boolean mCanceled;
    private int mFinalVisibility;
    final synthetic androidx.appcompat.widget.ScrollingTabContainerView this$0;

    protected ScrollingTabContainerView$VisibilityAnimListener(androidx.appcompat.widget.ScrollingTabContainerView p2)
    {
        this.this$0 = p2;
        this.mCanceled = 0;
        return;
    }

    public void onAnimationCancel(android.animation.Animator p2)
    {
        this.mCanceled = 1;
        return;
    }

    public void onAnimationEnd(android.animation.Animator p3)
    {
        if (!this.mCanceled) {
            this.this$0.mVisibilityAnim = 0;
            this.this$0.setVisibility(this.mFinalVisibility);
        }
        return;
    }

    public void onAnimationStart(android.animation.Animator p3)
    {
        this.this$0.setVisibility(0);
        this.mCanceled = 0;
        return;
    }

    public androidx.appcompat.widget.ScrollingTabContainerView$VisibilityAnimListener withFinalVisibility(android.view.ViewPropertyAnimator p2, int p3)
    {
        this.mFinalVisibility = p3;
        this.this$0.mVisibilityAnim = p2;
        return this;
    }
}
