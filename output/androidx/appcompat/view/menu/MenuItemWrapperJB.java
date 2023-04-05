package androidx.appcompat.view.menu;
 class MenuItemWrapperJB extends androidx.appcompat.view.menu.MenuItemWrapperICS {

    MenuItemWrapperJB(android.content.Context p1, androidx.core.internal.view.SupportMenuItem p2)
    {
        super(p1, p2);
        return;
    }

    androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper createActionProviderWrapper(android.view.ActionProvider p3)
    {
        return new androidx.appcompat.view.menu.MenuItemWrapperJB$ActionProviderWrapperJB(this, this.mContext, p3);
    }
}
