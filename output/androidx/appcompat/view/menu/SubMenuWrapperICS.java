package androidx.appcompat.view.menu;
 class SubMenuWrapperICS extends androidx.appcompat.view.menu.MenuWrapperICS implements android.view.SubMenu {

    SubMenuWrapperICS(android.content.Context p1, androidx.core.internal.view.SupportSubMenu p2)
    {
        super(p1, p2);
        return;
    }

    public void clearHeader()
    {
        this.getWrappedObject().clearHeader();
        return;
    }

    public android.view.MenuItem getItem()
    {
        return this.getMenuItemWrapper(this.getWrappedObject().getItem());
    }

    public androidx.core.internal.view.SupportSubMenu getWrappedObject()
    {
        return ((androidx.core.internal.view.SupportSubMenu) this.mWrappedObject);
    }

    public bridge synthetic Object getWrappedObject()
    {
        return this.getWrappedObject();
    }

    public android.view.SubMenu setHeaderIcon(int p2)
    {
        this.getWrappedObject().setHeaderIcon(p2);
        return this;
    }

    public android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable p2)
    {
        this.getWrappedObject().setHeaderIcon(p2);
        return this;
    }

    public android.view.SubMenu setHeaderTitle(int p2)
    {
        this.getWrappedObject().setHeaderTitle(p2);
        return this;
    }

    public android.view.SubMenu setHeaderTitle(CharSequence p2)
    {
        this.getWrappedObject().setHeaderTitle(p2);
        return this;
    }

    public android.view.SubMenu setHeaderView(android.view.View p2)
    {
        this.getWrappedObject().setHeaderView(p2);
        return this;
    }

    public android.view.SubMenu setIcon(int p2)
    {
        this.getWrappedObject().setIcon(p2);
        return this;
    }

    public android.view.SubMenu setIcon(android.graphics.drawable.Drawable p2)
    {
        this.getWrappedObject().setIcon(p2);
        return this;
    }
}
