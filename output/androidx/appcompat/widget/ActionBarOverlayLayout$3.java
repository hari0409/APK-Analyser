package androidx.appcompat.widget;
 class ActionBarOverlayLayout$3 implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ActionBarOverlayLayout this$0;

    ActionBarOverlayLayout$3(androidx.appcompat.widget.ActionBarOverlayLayout p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        this.this$0.haltActionBarHideOffsetAnimations();
        this.this$0.mCurrentActionBarTopAnimator = this.this$0.mActionBarTop.animate().translationY(((float) (- this.this$0.mActionBarTop.getHeight()))).setListener(this.this$0.mTopAnimatorListener);
        return;
    }
}
