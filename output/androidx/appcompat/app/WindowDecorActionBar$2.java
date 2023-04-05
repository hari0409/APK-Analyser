package androidx.appcompat.app;
 class WindowDecorActionBar$2 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    final synthetic androidx.appcompat.app.WindowDecorActionBar this$0;

    WindowDecorActionBar$2(androidx.appcompat.app.WindowDecorActionBar p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onAnimationEnd(android.view.View p3)
    {
        this.this$0.mCurrentShowAnim = 0;
        this.this$0.mContainerView.requestLayout();
        return;
    }
}
