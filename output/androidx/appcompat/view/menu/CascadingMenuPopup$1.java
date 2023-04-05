package androidx.appcompat.view.menu;
 class CascadingMenuPopup$1 implements android.view.ViewTreeObserver$OnGlobalLayoutListener {
    final synthetic androidx.appcompat.view.menu.CascadingMenuPopup this$0;

    CascadingMenuPopup$1(androidx.appcompat.view.menu.CascadingMenuPopup p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onGlobalLayout()
    {
        if ((this.this$0.isShowing()) && ((this.this$0.mShowingMenus.size() > 0) && (!((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.this$0.mShowingMenus.get(0)).window.isModal()))) {
            android.view.View v0 = this.this$0.mShownAnchorView;
            if ((v0 != null) && (v0.isShown())) {
                java.util.Iterator v2_11 = this.this$0.mShowingMenus.iterator();
                while (v2_11.hasNext()) {
                    ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) v2_11.next()).window.show();
                }
            } else {
                this.this$0.dismiss();
            }
        }
        return;
    }
}
