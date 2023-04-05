package androidx.appcompat.app;
 class ActionBarDrawerToggle$ToolbarCompatDelegate implements androidx.appcompat.app.ActionBarDrawerToggle$Delegate {
    final CharSequence mDefaultContentDescription;
    final android.graphics.drawable.Drawable mDefaultUpIndicator;
    final androidx.appcompat.widget.Toolbar mToolbar;

    ActionBarDrawerToggle$ToolbarCompatDelegate(androidx.appcompat.widget.Toolbar p2)
    {
        this.mToolbar = p2;
        this.mDefaultUpIndicator = p2.getNavigationIcon();
        this.mDefaultContentDescription = p2.getNavigationContentDescription();
        return;
    }

    public android.content.Context getActionBarThemedContext()
    {
        return this.mToolbar.getContext();
    }

    public android.graphics.drawable.Drawable getThemeUpIndicator()
    {
        return this.mDefaultUpIndicator;
    }

    public boolean isNavigationVisible()
    {
        return 1;
    }

    public void setActionBarDescription(int p3)
    {
        if (p3 != 0) {
            this.mToolbar.setNavigationContentDescription(p3);
        } else {
            this.mToolbar.setNavigationContentDescription(this.mDefaultContentDescription);
        }
        return;
    }

    public void setActionBarUpIndicator(android.graphics.drawable.Drawable p2, int p3)
    {
        this.mToolbar.setNavigationIcon(p2);
        this.setActionBarDescription(p3);
        return;
    }
}
