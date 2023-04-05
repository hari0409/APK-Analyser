package androidx.appcompat.view.menu;
 class StandardMenuPopup$1 implements android.view.ViewTreeObserver$OnGlobalLayoutListener {
    final synthetic androidx.appcompat.view.menu.StandardMenuPopup this$0;

    StandardMenuPopup$1(androidx.appcompat.view.menu.StandardMenuPopup p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onGlobalLayout()
    {
        if ((this.this$0.isShowing()) && (!this.this$0.mPopup.isModal())) {
            android.view.View v0 = this.this$0.mShownAnchorView;
            if ((v0 != null) && (v0.isShown())) {
                this.this$0.mPopup.show();
            } else {
                this.this$0.dismiss();
            }
        }
        return;
    }
}
