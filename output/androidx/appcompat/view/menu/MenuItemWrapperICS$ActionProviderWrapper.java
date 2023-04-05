package androidx.appcompat.view.menu;
 class MenuItemWrapperICS$ActionProviderWrapper extends androidx.core.view.ActionProvider {
    final android.view.ActionProvider mInner;
    final synthetic androidx.appcompat.view.menu.MenuItemWrapperICS this$0;

    public MenuItemWrapperICS$ActionProviderWrapper(androidx.appcompat.view.menu.MenuItemWrapperICS p1, android.content.Context p2, android.view.ActionProvider p3)
    {
        this.this$0 = p1;
        super(p2);
        super.mInner = p3;
        return;
    }

    public boolean hasSubMenu()
    {
        return this.mInner.hasSubMenu();
    }

    public android.view.View onCreateActionView()
    {
        return this.mInner.onCreateActionView();
    }

    public boolean onPerformDefaultAction()
    {
        return this.mInner.onPerformDefaultAction();
    }

    public void onPrepareSubMenu(android.view.SubMenu p3)
    {
        this.mInner.onPrepareSubMenu(this.this$0.getSubMenuWrapper(p3));
        return;
    }
}
