package androidx.appcompat.view.menu;
public class SubMenuBuilder extends androidx.appcompat.view.menu.MenuBuilder implements android.view.SubMenu {
    private androidx.appcompat.view.menu.MenuItemImpl mItem;
    private androidx.appcompat.view.menu.MenuBuilder mParentMenu;

    public SubMenuBuilder(android.content.Context p1, androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        super(p1);
        super.mParentMenu = p2;
        super.mItem = p3;
        return;
    }

    public boolean collapseItemActionView(androidx.appcompat.view.menu.MenuItemImpl p2)
    {
        return this.mParentMenu.collapseItemActionView(p2);
    }

    boolean dispatchMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        if ((!super.dispatchMenuItemSelected(p2, p3)) && (!this.mParentMenu.dispatchMenuItemSelected(p2, p3))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean expandItemActionView(androidx.appcompat.view.menu.MenuItemImpl p2)
    {
        return this.mParentMenu.expandItemActionView(p2);
    }

    public String getActionViewStatesKey()
    {
        int v0;
        if (this.mItem == null) {
            v0 = 0;
        } else {
            v0 = this.mItem.getItemId();
        }
        String v1_4;
        if (v0 != 0) {
            v1_4 = new StringBuilder().append(super.getActionViewStatesKey()).append(":").append(v0).toString();
        } else {
            v1_4 = 0;
        }
        return v1_4;
    }

    public android.view.MenuItem getItem()
    {
        return this.mItem;
    }

    public android.view.Menu getParentMenu()
    {
        return this.mParentMenu;
    }

    public androidx.appcompat.view.menu.MenuBuilder getRootMenu()
    {
        return this.mParentMenu.getRootMenu();
    }

    public boolean isGroupDividerEnabled()
    {
        return this.mParentMenu.isGroupDividerEnabled();
    }

    public boolean isQwertyMode()
    {
        return this.mParentMenu.isQwertyMode();
    }

    public boolean isShortcutsVisible()
    {
        return this.mParentMenu.isShortcutsVisible();
    }

    public void setCallback(androidx.appcompat.view.menu.MenuBuilder$Callback p2)
    {
        this.mParentMenu.setCallback(p2);
        return;
    }

    public void setGroupDividerEnabled(boolean p2)
    {
        this.mParentMenu.setGroupDividerEnabled(p2);
        return;
    }

    public android.view.SubMenu setHeaderIcon(int p2)
    {
        return ((android.view.SubMenu) super.setHeaderIconInt(p2));
    }

    public android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable p2)
    {
        return ((android.view.SubMenu) super.setHeaderIconInt(p2));
    }

    public android.view.SubMenu setHeaderTitle(int p2)
    {
        return ((android.view.SubMenu) super.setHeaderTitleInt(p2));
    }

    public android.view.SubMenu setHeaderTitle(CharSequence p2)
    {
        return ((android.view.SubMenu) super.setHeaderTitleInt(p2));
    }

    public android.view.SubMenu setHeaderView(android.view.View p2)
    {
        return ((android.view.SubMenu) super.setHeaderViewInt(p2));
    }

    public android.view.SubMenu setIcon(int p2)
    {
        this.mItem.setIcon(p2);
        return this;
    }

    public android.view.SubMenu setIcon(android.graphics.drawable.Drawable p2)
    {
        this.mItem.setIcon(p2);
        return this;
    }

    public void setQwertyMode(boolean p2)
    {
        this.mParentMenu.setQwertyMode(p2);
        return;
    }

    public void setShortcutsVisible(boolean p2)
    {
        this.mParentMenu.setShortcutsVisible(p2);
        return;
    }
}
