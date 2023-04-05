package androidx.appcompat.app;
 class AppCompatDelegateImpl$7 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$7(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onAnimationEnd(android.view.View p4)
    {
        this.this$0.mActionModeView.setAlpha(1065353216);
        this.this$0.mFadeAnim.setListener(0);
        this.this$0.mFadeAnim = 0;
        return;
    }

    public void onAnimationStart(android.view.View p3)
    {
        this.this$0.mActionModeView.setVisibility(0);
        this.this$0.mActionModeView.sendAccessibilityEvent(32);
        if ((this.this$0.mActionModeView.getParent() instanceof android.view.View)) {
            androidx.core.view.ViewCompat.requestApplyInsets(((android.view.View) this.this$0.mActionModeView.getParent()));
        }
        return;
    }
}
