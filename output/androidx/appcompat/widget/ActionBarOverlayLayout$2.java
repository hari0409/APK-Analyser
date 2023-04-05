package androidx.appcompat.widget;
 class ActionBarOverlayLayout$2 implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ActionBarOverlayLayout this$0;

    ActionBarOverlayLayout$2(androidx.appcompat.widget.ActionBarOverlayLayout p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        this.this$0.haltActionBarHideOffsetAnimations();
        this.this$0.mCurrentActionBarTopAnimator = this.this$0.mActionBarTop.animate().translationY(0).setListener(this.this$0.mTopAnimatorListener);
        return;
    }
}
