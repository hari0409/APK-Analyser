package androidx.appcompat.app;
 class WindowDecorActionBar$1 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    final synthetic androidx.appcompat.app.WindowDecorActionBar this$0;

    WindowDecorActionBar$1(androidx.appcompat.app.WindowDecorActionBar p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onAnimationEnd(android.view.View p3)
    {
        if ((this.this$0.mContentAnimations) && (this.this$0.mContentView != null)) {
            this.this$0.mContentView.setTranslationY(0);
            this.this$0.mContainerView.setTranslationY(0);
        }
        this.this$0.mContainerView.setVisibility(8);
        this.this$0.mContainerView.setTransitioning(0);
        this.this$0.mCurrentShowAnim = 0;
        this.this$0.completeDeferredDestroyActionMode();
        if (this.this$0.mOverlayLayout != null) {
            androidx.core.view.ViewCompat.requestApplyInsets(this.this$0.mOverlayLayout);
        }
        return;
    }
}
