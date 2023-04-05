package androidx.appcompat.app;
 class AppCompatDelegateImpl$6$1 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl$6 this$1;

    AppCompatDelegateImpl$6$1(androidx.appcompat.app.AppCompatDelegateImpl$6 p1)
    {
        this.this$1 = p1;
        return;
    }

    public void onAnimationEnd(android.view.View p4)
    {
        this.this$1.this$0.mActionModeView.setAlpha(1065353216);
        this.this$1.this$0.mFadeAnim.setListener(0);
        this.this$1.this$0.mFadeAnim = 0;
        return;
    }

    public void onAnimationStart(android.view.View p3)
    {
        this.this$1.this$0.mActionModeView.setVisibility(0);
        return;
    }
}
