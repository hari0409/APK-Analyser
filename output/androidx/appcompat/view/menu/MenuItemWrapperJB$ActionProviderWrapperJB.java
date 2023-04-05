package androidx.appcompat.view.menu;
 class MenuItemWrapperJB$ActionProviderWrapperJB extends androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper implements android.view.ActionProvider$VisibilityListener {
    androidx.core.view.ActionProvider$VisibilityListener mListener;
    final synthetic androidx.appcompat.view.menu.MenuItemWrapperJB this$0;

    public MenuItemWrapperJB$ActionProviderWrapperJB(androidx.appcompat.view.menu.MenuItemWrapperJB p1, android.content.Context p2, android.view.ActionProvider p3)
    {
        this.this$0 = p1;
        super(p1, p2, p3);
        return;
    }

    public boolean isVisible()
    {
        return this.mInner.isVisible();
    }

    public void onActionProviderVisibilityChanged(boolean p2)
    {
        if (this.mListener != null) {
            this.mListener.onActionProviderVisibilityChanged(p2);
        }
        return;
    }

    public android.view.View onCreateActionView(android.view.MenuItem p2)
    {
        return this.mInner.onCreateActionView(p2);
    }

    public boolean overridesItemVisibility()
    {
        return this.mInner.overridesItemVisibility();
    }

    public void refreshVisibility()
    {
        this.mInner.refreshVisibility();
        return;
    }

    public void setVisibilityListener(androidx.core.view.ActionProvider$VisibilityListener p2)
    {
        this.mListener = p2;
        android.view.ActionProvider v0 = this.mInner;
        if (p2 == null) {
            this = 0;
        }
        v0.setVisibilityListener(this);
        return;
    }
}
