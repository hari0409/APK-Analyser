package androidx.appcompat.app;
 class AppCompatDelegateImpl$ActionModeCallbackWrapperV9 implements androidx.appcompat.view.ActionMode$Callback {
    private androidx.appcompat.view.ActionMode$Callback mWrapped;
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    public AppCompatDelegateImpl$ActionModeCallbackWrapperV9(androidx.appcompat.app.AppCompatDelegateImpl p1, androidx.appcompat.view.ActionMode$Callback p2)
    {
        this.this$0 = p1;
        this.mWrapped = p2;
        return;
    }

    public boolean onActionItemClicked(androidx.appcompat.view.ActionMode p2, android.view.MenuItem p3)
    {
        return this.mWrapped.onActionItemClicked(p2, p3);
    }

    public boolean onCreateActionMode(androidx.appcompat.view.ActionMode p2, android.view.Menu p3)
    {
        return this.mWrapped.onCreateActionMode(p2, p3);
    }

    public void onDestroyActionMode(androidx.appcompat.view.ActionMode p4)
    {
        this.mWrapped.onDestroyActionMode(p4);
        if (this.this$0.mActionModePopup != null) {
            this.this$0.mWindow.getDecorView().removeCallbacks(this.this$0.mShowActionModePopup);
        }
        if (this.this$0.mActionModeView != null) {
            this.this$0.endOnGoingFadeAnimation();
            this.this$0.mFadeAnim = androidx.core.view.ViewCompat.animate(this.this$0.mActionModeView).alpha(0);
            this.this$0.mFadeAnim.setListener(new androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1(this));
        }
        if (this.this$0.mAppCompatCallback != null) {
            this.this$0.mAppCompatCallback.onSupportActionModeFinished(this.this$0.mActionMode);
        }
        this.this$0.mActionMode = 0;
        return;
    }

    public boolean onPrepareActionMode(androidx.appcompat.view.ActionMode p2, android.view.Menu p3)
    {
        return this.mWrapped.onPrepareActionMode(p2, p3);
    }
}
