package androidx.appcompat.app;
 class AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1 extends androidx.core.view.ViewPropertyAnimatorListenerAdapter {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9 this$1;

    AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1(androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9 p1)
    {
        this.this$1 = p1;
        return;
    }

    public void onAnimationEnd(android.view.View p4)
    {
        this.this$1.this$0.mActionModeView.setVisibility(8);
        if (this.this$1.this$0.mActionModePopup == null) {
            if ((this.this$1.this$0.mActionModeView.getParent() instanceof android.view.View)) {
                androidx.core.view.ViewCompat.requestApplyInsets(((android.view.View) this.this$1.this$0.mActionModeView.getParent()));
            }
        } else {
            this.this$1.this$0.mActionModePopup.dismiss();
        }
        this.this$1.this$0.mActionModeView.removeAllViews();
        this.this$1.this$0.mFadeAnim.setListener(0);
        this.this$1.this$0.mFadeAnim = 0;
        return;
    }
}
