package androidx.appcompat.widget;
 class ActionMenuPresenter$ActionMenuPopupCallback extends androidx.appcompat.view.menu.ActionMenuItemView$PopupCallback {
    final synthetic androidx.appcompat.widget.ActionMenuPresenter this$0;

    ActionMenuPresenter$ActionMenuPopupCallback(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        this.this$0 = p1;
        return;
    }

    public androidx.appcompat.view.menu.ShowableListMenu getPopup()
    {
        int v0_2;
        if (this.this$0.mActionButtonPopup == null) {
            v0_2 = 0;
        } else {
            v0_2 = this.this$0.mActionButtonPopup.getPopup();
        }
        return v0_2;
    }
}
