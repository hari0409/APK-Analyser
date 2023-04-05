package androidx.appcompat.view.menu;
 class MenuItemImpl$1 implements androidx.core.view.ActionProvider$VisibilityListener {
    final synthetic androidx.appcompat.view.menu.MenuItemImpl this$0;

    MenuItemImpl$1(androidx.appcompat.view.menu.MenuItemImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onActionProviderVisibilityChanged(boolean p3)
    {
        this.this$0.mMenu.onItemVisibleChanged(this.this$0);
        return;
    }
}
