package androidx.appcompat.view.menu;
 class MenuItemWrapperICS$OnActionExpandListenerWrapper extends androidx.appcompat.view.menu.BaseWrapper implements android.view.MenuItem$OnActionExpandListener {
    final synthetic androidx.appcompat.view.menu.MenuItemWrapperICS this$0;

    MenuItemWrapperICS$OnActionExpandListenerWrapper(androidx.appcompat.view.menu.MenuItemWrapperICS p1, android.view.MenuItem$OnActionExpandListener p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public boolean onMenuItemActionCollapse(android.view.MenuItem p3)
    {
        return ((android.view.MenuItem$OnActionExpandListener) this.mWrappedObject).onMenuItemActionCollapse(this.this$0.getMenuItemWrapper(p3));
    }

    public boolean onMenuItemActionExpand(android.view.MenuItem p3)
    {
        return ((android.view.MenuItem$OnActionExpandListener) this.mWrappedObject).onMenuItemActionExpand(this.this$0.getMenuItemWrapper(p3));
    }
}
