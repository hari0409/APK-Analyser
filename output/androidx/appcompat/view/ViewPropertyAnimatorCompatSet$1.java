package androidx.appcompat.view;
 class ViewPropertyAnimatorCompatSet$1 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    private int mProxyEndCount;
    private boolean mProxyStarted;
    final synthetic androidx.appcompat.view.ViewPropertyAnimatorCompatSet this$0;

    ViewPropertyAnimatorCompatSet$1(androidx.appcompat.view.ViewPropertyAnimatorCompatSet p2)
    {
        this.this$0 = p2;
        this.mProxyStarted = 0;
        this.mProxyEndCount = 0;
        return;
    }

    public void onAnimationEnd(android.view.View p3)
    {
        androidx.core.view.ViewPropertyAnimatorListener v0_1 = (this.mProxyEndCount + 1);
        this.mProxyEndCount = v0_1;
        if (v0_1 == this.this$0.mAnimators.size()) {
            if (this.this$0.mListener != null) {
                this.this$0.mListener.onAnimationEnd(0);
            }
            this.onEnd();
        }
        return;
    }

    public void onAnimationStart(android.view.View p3)
    {
        if (!this.mProxyStarted) {
            this.mProxyStarted = 1;
            if (this.this$0.mListener != null) {
                this.this$0.mListener.onAnimationStart(0);
            }
        }
        return;
    }

    void onEnd()
    {
        this.mProxyEndCount = 0;
        this.mProxyStarted = 0;
        this.this$0.onAnimationsEnded();
        return;
    }
}
