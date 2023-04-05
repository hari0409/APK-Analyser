package androidx.appcompat.view.menu;
 class ActionMenuItemView$ActionMenuItemForwardingListener extends androidx.appcompat.widget.ForwardingListener {
    final synthetic androidx.appcompat.view.menu.ActionMenuItemView this$0;

    public ActionMenuItemView$ActionMenuItemForwardingListener(androidx.appcompat.view.menu.ActionMenuItemView p1)
    {
        this.this$0 = p1;
        super(p1);
        return;
    }

    public androidx.appcompat.view.menu.ShowableListMenu getPopup()
    {
        int v0_2;
        if (this.this$0.mPopupCallback == null) {
            v0_2 = 0;
        } else {
            v0_2 = this.this$0.mPopupCallback.getPopup();
        }
        return v0_2;
    }

    protected boolean onForwardingStarted()
    {
        int v1 = 0;
        if ((this.this$0.mItemInvoker != null) && (this.this$0.mItemInvoker.invokeItem(this.this$0.mItemData))) {
            androidx.appcompat.view.menu.ShowableListMenu v0 = this.getPopup();
            if ((v0 != null) && (v0.isShowing())) {
                v1 = 1;
            }
        }
        return v1;
    }
}
