package androidx.appcompat.view.menu;
 class MenuItemWrapperICS$OnMenuItemClickListenerWrapper extends androidx.appcompat.view.menu.BaseWrapper implements android.view.MenuItem$OnMenuItemClickListener {
    final synthetic androidx.appcompat.view.menu.MenuItemWrapperICS this$0;

    MenuItemWrapperICS$OnMenuItemClickListenerWrapper(androidx.appcompat.view.menu.MenuItemWrapperICS p1, android.view.MenuItem$OnMenuItemClickListener p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public boolean onMenuItemClick(android.view.MenuItem p3)
    {
        return ((android.view.MenuItem$OnMenuItemClickListener) this.mWrappedObject).onMenuItemClick(this.this$0.getMenuItemWrapper(p3));
    }
}
