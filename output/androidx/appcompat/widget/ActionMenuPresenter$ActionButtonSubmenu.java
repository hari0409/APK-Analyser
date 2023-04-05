package androidx.appcompat.widget;
 class ActionMenuPresenter$ActionButtonSubmenu extends androidx.appcompat.view.menu.MenuPopupHelper {
    final synthetic androidx.appcompat.widget.ActionMenuPresenter this$0;

    public ActionMenuPresenter$ActionButtonSubmenu(androidx.appcompat.widget.ActionMenuPresenter p8, android.content.Context p9, androidx.appcompat.view.menu.SubMenuBuilder p10, android.view.View p11)
    {
        this.this$0 = p8;
        super(p9, p10, p11, 0, androidx.appcompat.R$attr.actionOverflowMenuStyle);
        if (!((androidx.appcompat.view.menu.MenuItemImpl) p10.getItem()).isActionButton()) {
            androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton v0_2;
            if (p8.mOverflowButton != null) {
                v0_2 = p8.mOverflowButton;
            } else {
                v0_2 = ((android.view.View) androidx.appcompat.widget.ActionMenuPresenter.access$200(p8));
            }
            super.setAnchorView(v0_2);
        }
        super.setPresenterCallback(p8.mPopupPresenterCallback);
        return;
    }

    protected void onDismiss()
    {
        this.this$0.mActionButtonPopup = 0;
        this.this$0.mOpenSubMenuId = 0;
        super.onDismiss();
        return;
    }
}
