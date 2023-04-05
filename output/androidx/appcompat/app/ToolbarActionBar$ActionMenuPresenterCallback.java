package androidx.appcompat.app;
final class ToolbarActionBar$ActionMenuPresenterCallback implements androidx.appcompat.view.menu.MenuPresenter$Callback {
    private boolean mClosingActionMenu;
    final synthetic androidx.appcompat.app.ToolbarActionBar this$0;

    ToolbarActionBar$ActionMenuPresenterCallback(androidx.appcompat.app.ToolbarActionBar p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p3, boolean p4)
    {
        if (!this.mClosingActionMenu) {
            this.mClosingActionMenu = 1;
            this.this$0.mDecorToolbar.dismissPopupMenus();
            if (this.this$0.mWindowCallback != null) {
                this.this$0.mWindowCallback.onPanelClosed(108, p3);
            }
            this.mClosingActionMenu = 0;
        }
        return;
    }

    public boolean onOpenSubMenu(androidx.appcompat.view.menu.MenuBuilder p3)
    {
        int v0_2;
        if (this.this$0.mWindowCallback == null) {
            v0_2 = 0;
        } else {
            this.this$0.mWindowCallback.onMenuOpened(108, p3);
            v0_2 = 1;
        }
        return v0_2;
    }
}
