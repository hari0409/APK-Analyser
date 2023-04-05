package androidx.appcompat.app;
 class AppCompatDelegateImpl$6 implements java.lang.Runnable {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$6(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        this.this$0.mActionModePopup.showAtLocation(this.this$0.mActionModeView, 55, 0, 0);
        this.this$0.endOnGoingFadeAnimation();
        if (!this.this$0.shouldAnimateActionModeView()) {
            this.this$0.mActionModeView.setAlpha(1065353216);
            this.this$0.mActionModeView.setVisibility(0);
        } else {
            this.this$0.mActionModeView.setAlpha(0);
            this.this$0.mFadeAnim = androidx.core.view.ViewCompat.animate(this.this$0.mActionModeView).alpha(1065353216);
            this.this$0.mFadeAnim.setListener(new androidx.appcompat.app.AppCompatDelegateImpl$6$1(this));
        }
        return;
    }
}
