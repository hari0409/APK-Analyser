package androidx.appcompat.app;
 class ToolbarActionBar extends androidx.appcompat.app.ActionBar {
    androidx.appcompat.widget.DecorToolbar mDecorToolbar;
    private boolean mLastMenuVisibility;
    private boolean mMenuCallbackSet;
    private final androidx.appcompat.widget.Toolbar$OnMenuItemClickListener mMenuClicker;
    private final Runnable mMenuInvalidator;
    private java.util.ArrayList mMenuVisibilityListeners;
    boolean mToolbarMenuPrepared;
    android.view.Window$Callback mWindowCallback;

    ToolbarActionBar(androidx.appcompat.widget.Toolbar p3, CharSequence p4, android.view.Window$Callback p5)
    {
        this.mMenuVisibilityListeners = new java.util.ArrayList();
        this.mMenuInvalidator = new androidx.appcompat.app.ToolbarActionBar$1(this);
        this.mMenuClicker = new androidx.appcompat.app.ToolbarActionBar$2(this);
        this.mDecorToolbar = new androidx.appcompat.widget.ToolbarWidgetWrapper(p3, 0);
        this.mWindowCallback = new androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper(this, p5);
        this.mDecorToolbar.setWindowCallback(this.mWindowCallback);
        p3.setOnMenuItemClickListener(this.mMenuClicker);
        this.mDecorToolbar.setWindowTitle(p4);
        return;
    }

    private android.view.Menu getMenu()
    {
        if (!this.mMenuCallbackSet) {
            this.mDecorToolbar.setMenuCallbacks(new androidx.appcompat.app.ToolbarActionBar$ActionMenuPresenterCallback(this), new androidx.appcompat.app.ToolbarActionBar$MenuBuilderCallback(this));
            this.mMenuCallbackSet = 1;
        }
        return this.mDecorToolbar.getMenu();
    }

    public void addOnMenuVisibilityListener(androidx.appcompat.app.ActionBar$OnMenuVisibilityListener p2)
    {
        this.mMenuVisibilityListeners.add(p2);
        return;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p3)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p3, int p4)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p3, int p4, boolean p5)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p3, boolean p4)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public boolean closeOptionsMenu()
    {
        return this.mDecorToolbar.hideOverflowMenu();
    }

    public boolean collapseActionView()
    {
        int v0_2;
        if (!this.mDecorToolbar.hasExpandedActionView()) {
            v0_2 = 0;
        } else {
            this.mDecorToolbar.collapseActionView();
            v0_2 = 1;
        }
        return v0_2;
    }

    public void dispatchMenuVisibilityChanged(boolean p4)
    {
        if (p4 != this.mLastMenuVisibility) {
            this.mLastMenuVisibility = p4;
            int v0 = this.mMenuVisibilityListeners.size();
            int v1 = 0;
            while (v1 < v0) {
                ((androidx.appcompat.app.ActionBar$OnMenuVisibilityListener) this.mMenuVisibilityListeners.get(v1)).onMenuVisibilityChanged(p4);
                v1++;
            }
        }
        return;
    }

    public android.view.View getCustomView()
    {
        return this.mDecorToolbar.getCustomView();
    }

    public int getDisplayOptions()
    {
        return this.mDecorToolbar.getDisplayOptions();
    }

    public float getElevation()
    {
        return androidx.core.view.ViewCompat.getElevation(this.mDecorToolbar.getViewGroup());
    }

    public int getHeight()
    {
        return this.mDecorToolbar.getHeight();
    }

    public int getNavigationItemCount()
    {
        return 0;
    }

    public int getNavigationMode()
    {
        return 0;
    }

    public int getSelectedNavigationIndex()
    {
        return -1;
    }

    public androidx.appcompat.app.ActionBar$Tab getSelectedTab()
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public CharSequence getSubtitle()
    {
        return this.mDecorToolbar.getSubtitle();
    }

    public androidx.appcompat.app.ActionBar$Tab getTabAt(int p3)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public int getTabCount()
    {
        return 0;
    }

    public android.content.Context getThemedContext()
    {
        return this.mDecorToolbar.getContext();
    }

    public CharSequence getTitle()
    {
        return this.mDecorToolbar.getTitle();
    }

    public android.view.Window$Callback getWrappedWindowCallback()
    {
        return this.mWindowCallback;
    }

    public void hide()
    {
        this.mDecorToolbar.setVisibility(8);
        return;
    }

    public boolean invalidateOptionsMenu()
    {
        this.mDecorToolbar.getViewGroup().removeCallbacks(this.mMenuInvalidator);
        androidx.core.view.ViewCompat.postOnAnimation(this.mDecorToolbar.getViewGroup(), this.mMenuInvalidator);
        return 1;
    }

    public boolean isShowing()
    {
        int v0_2;
        if (this.mDecorToolbar.getVisibility() != 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isTitleTruncated()
    {
        return super.isTitleTruncated();
    }

    public androidx.appcompat.app.ActionBar$Tab newTab()
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void onConfigurationChanged(android.content.res.Configuration p1)
    {
        super.onConfigurationChanged(p1);
        return;
    }

    void onDestroy()
    {
        this.mDecorToolbar.getViewGroup().removeCallbacks(this.mMenuInvalidator);
        return;
    }

    public boolean onKeyShortcut(int p6, android.view.KeyEvent p7)
    {
        boolean v4 = 0;
        android.view.Menu v1 = this.getMenu();
        if (v1 != null) {
            int v2_2;
            if (p7 == null) {
                v2_2 = -1;
            } else {
                v2_2 = p7.getDeviceId();
            }
            int v2_1;
            if (android.view.KeyCharacterMap.load(v2_2).getKeyboardType() == 1) {
                v2_1 = 0;
            } else {
                v2_1 = 1;
            }
            v1.setQwertyMode(v2_1);
            v4 = v1.performShortcut(p6, p7, 0);
        }
        return v4;
    }

    public boolean onMenuKeyEvent(android.view.KeyEvent p3)
    {
        if (p3.getAction() == 1) {
            this.openOptionsMenu();
        }
        return 1;
    }

    public boolean openOptionsMenu()
    {
        return this.mDecorToolbar.showOverflowMenu();
    }

    void populateOptionsMenu()
    {
        androidx.appcompat.view.menu.MenuBuilder v0 = 0;
        android.view.Menu v1 = this.getMenu();
        if ((v1 instanceof androidx.appcompat.view.menu.MenuBuilder)) {
            v0 = ((androidx.appcompat.view.menu.MenuBuilder) v1);
        }
        if (v0 != null) {
            v0.stopDispatchingItemsChanged();
        }
        try {
            v1.clear();
        } catch (boolean v2_4) {
            if (v0 != null) {
                v0.startDispatchingItemsChanged();
            }
            throw v2_4;
        }
        if ((!this.mWindowCallback.onCreatePanelMenu(0, v1)) || (!this.mWindowCallback.onPreparePanel(0, 0, v1))) {
            v1.clear();
        }
        if (v0 != null) {
            v0.startDispatchingItemsChanged();
        }
        return;
    }

    public void removeAllTabs()
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void removeOnMenuVisibilityListener(androidx.appcompat.app.ActionBar$OnMenuVisibilityListener p2)
    {
        this.mMenuVisibilityListeners.remove(p2);
        return;
    }

    public void removeTab(androidx.appcompat.app.ActionBar$Tab p3)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void removeTabAt(int p3)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public boolean requestFocus()
    {
        int v1_2;
        android.view.ViewGroup v0 = this.mDecorToolbar.getViewGroup();
        if ((v0 == null) || (v0.hasFocus())) {
            v1_2 = 0;
        } else {
            v0.requestFocus();
            v1_2 = 1;
        }
        return v1_2;
    }

    public void selectTab(androidx.appcompat.app.ActionBar$Tab p3)
    {
        throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
    }

    public void setBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setBackgroundDrawable(p2);
        return;
    }

    public void setCustomView(int p4)
    {
        this.setCustomView(android.view.LayoutInflater.from(this.mDecorToolbar.getContext()).inflate(p4, this.mDecorToolbar.getViewGroup(), 0));
        return;
    }

    public void setCustomView(android.view.View p3)
    {
        this.setCustomView(p3, new androidx.appcompat.app.ActionBar$LayoutParams(-2, -2));
        return;
    }

    public void setCustomView(android.view.View p2, androidx.appcompat.app.ActionBar$LayoutParams p3)
    {
        if (p2 != null) {
            p2.setLayoutParams(p3);
        }
        this.mDecorToolbar.setCustomView(p2);
        return;
    }

    public void setDefaultDisplayHomeAsUpEnabled(boolean p1)
    {
        return;
    }

    public void setDisplayHomeAsUpEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 4;
        }
        this.setDisplayOptions(v0, 4);
        return;
    }

    public void setDisplayOptions(int p2)
    {
        this.setDisplayOptions(p2, -1);
        return;
    }

    public void setDisplayOptions(int p5, int p6)
    {
        this.mDecorToolbar.setDisplayOptions(((p5 & p6) | ((p6 ^ -1) & this.mDecorToolbar.getDisplayOptions())));
        return;
    }

    public void setDisplayShowCustomEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 16;
        }
        this.setDisplayOptions(v0, 16);
        return;
    }

    public void setDisplayShowHomeEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 2;
        }
        this.setDisplayOptions(v0, 2);
        return;
    }

    public void setDisplayShowTitleEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 8;
        }
        this.setDisplayOptions(v0, 8);
        return;
    }

    public void setDisplayUseLogoEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        this.setDisplayOptions(v0, 1);
        return;
    }

    public void setElevation(float p2)
    {
        androidx.core.view.ViewCompat.setElevation(this.mDecorToolbar.getViewGroup(), p2);
        return;
    }

    public void setHomeActionContentDescription(int p2)
    {
        this.mDecorToolbar.setNavigationContentDescription(p2);
        return;
    }

    public void setHomeActionContentDescription(CharSequence p2)
    {
        this.mDecorToolbar.setNavigationContentDescription(p2);
        return;
    }

    public void setHomeAsUpIndicator(int p2)
    {
        this.mDecorToolbar.setNavigationIcon(p2);
        return;
    }

    public void setHomeAsUpIndicator(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setNavigationIcon(p2);
        return;
    }

    public void setHomeButtonEnabled(boolean p1)
    {
        return;
    }

    public void setIcon(int p2)
    {
        this.mDecorToolbar.setIcon(p2);
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setIcon(p2);
        return;
    }

    public void setListNavigationCallbacks(android.widget.SpinnerAdapter p3, androidx.appcompat.app.ActionBar$OnNavigationListener p4)
    {
        this.mDecorToolbar.setDropdownParams(p3, new androidx.appcompat.app.NavItemSelectedListener(p4));
        return;
    }

    public void setLogo(int p2)
    {
        this.mDecorToolbar.setLogo(p2);
        return;
    }

    public void setLogo(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setLogo(p2);
        return;
    }

    public void setNavigationMode(int p3)
    {
        if (p3 != 2) {
            this.mDecorToolbar.setNavigationMode(p3);
            return;
        } else {
            throw new IllegalArgumentException("Tabs not supported in this configuration");
        }
    }

    public void setSelectedNavigationItem(int p3)
    {
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                this.mDecorToolbar.setDropdownSelectedPosition(p3);
                return;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
    }

    public void setShowHideAnimationEnabled(boolean p1)
    {
        return;
    }

    public void setSplitBackgroundDrawable(android.graphics.drawable.Drawable p1)
    {
        return;
    }

    public void setStackedBackgroundDrawable(android.graphics.drawable.Drawable p1)
    {
        return;
    }

    public void setSubtitle(int p3)
    {
        int v0_0;
        androidx.appcompat.widget.DecorToolbar v1 = this.mDecorToolbar;
        if (p3 == 0) {
            v0_0 = 0;
        } else {
            v0_0 = this.mDecorToolbar.getContext().getText(p3);
        }
        v1.setSubtitle(v0_0);
        return;
    }

    public void setSubtitle(CharSequence p2)
    {
        this.mDecorToolbar.setSubtitle(p2);
        return;
    }

    public void setTitle(int p3)
    {
        int v0_0;
        androidx.appcompat.widget.DecorToolbar v1 = this.mDecorToolbar;
        if (p3 == 0) {
            v0_0 = 0;
        } else {
            v0_0 = this.mDecorToolbar.getContext().getText(p3);
        }
        v1.setTitle(v0_0);
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.mDecorToolbar.setTitle(p2);
        return;
    }

    public void setWindowTitle(CharSequence p2)
    {
        this.mDecorToolbar.setWindowTitle(p2);
        return;
    }

    public void show()
    {
        this.mDecorToolbar.setVisibility(0);
        return;
    }
}
