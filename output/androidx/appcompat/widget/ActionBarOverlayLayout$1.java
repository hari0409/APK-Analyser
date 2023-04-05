package androidx.appcompat.widget;
 class ActionBarOverlayLayout$1 extends android.animation.AnimatorListenerAdapter {
    final synthetic androidx.appcompat.widget.ActionBarOverlayLayout this$0;

    ActionBarOverlayLayout$1(androidx.appcompat.widget.ActionBarOverlayLayout p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onAnimationCancel(android.animation.Animator p3)
    {
        this.this$0.mCurrentActionBarTopAnimator = 0;
        this.this$0.mAnimatingForFling = 0;
        return;
    }

    public void onAnimationEnd(android.animation.Animator p3)
    {
        this.this$0.mCurrentActionBarTopAnimator = 0;
        this.this$0.mAnimatingForFling = 0;
        return;
    }
}
