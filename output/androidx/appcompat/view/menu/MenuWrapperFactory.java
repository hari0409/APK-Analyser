package androidx.appcompat.view.menu;
public final class MenuWrapperFactory {

    private MenuWrapperFactory()
    {
        return;
    }

    public static android.view.Menu wrapSupportMenu(android.content.Context p1, androidx.core.internal.view.SupportMenu p2)
    {
        return new androidx.appcompat.view.menu.MenuWrapperICS(p1, p2);
    }

    public static android.view.MenuItem wrapSupportMenuItem(android.content.Context p2, androidx.core.internal.view.SupportMenuItem p3)
    {
        androidx.appcompat.view.menu.MenuItemWrapperICS v0_2;
        if (android.os.Build$VERSION.SDK_INT < 16) {
            v0_2 = new androidx.appcompat.view.menu.MenuItemWrapperICS(p2, p3);
        } else {
            v0_2 = new androidx.appcompat.view.menu.MenuItemWrapperJB(p2, p3);
        }
        return v0_2;
    }

    public static android.view.SubMenu wrapSupportSubMenu(android.content.Context p1, androidx.core.internal.view.SupportSubMenu p2)
    {
        return new androidx.appcompat.view.menu.SubMenuWrapperICS(p1, p2);
    }
}
