package androidx.appcompat.app;
public abstract class ActionBar {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_USE_LOGO = 1;
    public static final int NAVIGATION_MODE_LIST = 1;
    public static final int NAVIGATION_MODE_STANDARD = 0;
    public static final int NAVIGATION_MODE_TABS = 2;

    public ActionBar()
    {
        return;
    }

    public abstract void addOnMenuVisibilityListener();

    public abstract void addTab();

    public abstract void addTab();

    public abstract void addTab();

    public abstract void addTab();

    public boolean closeOptionsMenu()
    {
        return 0;
    }

    public boolean collapseActionView()
    {
        return 0;
    }

    public void dispatchMenuVisibilityChanged(boolean p1)
    {
        return;
    }

    public abstract android.view.View getCustomView();

    public abstract int getDisplayOptions();

    public float getElevation()
    {
        return 0;
    }

    public abstract int getHeight();

    public int getHideOffset()
    {
        return 0;
    }

    public abstract int getNavigationItemCount();

    public abstract int getNavigationMode();

    public abstract int getSelectedNavigationIndex();

    public abstract androidx.appcompat.app.ActionBar$Tab getSelectedTab();

    public abstract CharSequence getSubtitle();

    public abstract androidx.appcompat.app.ActionBar$Tab getTabAt();

    public abstract int getTabCount();

    public android.content.Context getThemedContext()
    {
        return 0;
    }

    public abstract CharSequence getTitle();

    public abstract void hide();

    public boolean invalidateOptionsMenu()
    {
        return 0;
    }

    public boolean isHideOnContentScrollEnabled()
    {
        return 0;
    }

    public abstract boolean isShowing();

    public boolean isTitleTruncated()
    {
        return 0;
    }

    public abstract androidx.appcompat.app.ActionBar$Tab newTab();

    public void onConfigurationChanged(android.content.res.Configuration p1)
    {
        return;
    }

    void onDestroy()
    {
        return;
    }

    public boolean onKeyShortcut(int p2, android.view.KeyEvent p3)
    {
        return 0;
    }

    public boolean onMenuKeyEvent(android.view.KeyEvent p2)
    {
        return 0;
    }

    public boolean openOptionsMenu()
    {
        return 0;
    }

    public abstract void removeAllTabs();

    public abstract void removeOnMenuVisibilityListener();

    public abstract void removeTab();

    public abstract void removeTabAt();

    boolean requestFocus()
    {
        return 0;
    }

    public abstract void selectTab();

    public abstract void setBackgroundDrawable();

    public abstract void setCustomView();

    public abstract void setCustomView();

    public abstract void setCustomView();

    public void setDefaultDisplayHomeAsUpEnabled(boolean p1)
    {
        return;
    }

    public abstract void setDisplayHomeAsUpEnabled();

    public abstract void setDisplayOptions();

    public abstract void setDisplayOptions();

    public abstract void setDisplayShowCustomEnabled();

    public abstract void setDisplayShowHomeEnabled();

    public abstract void setDisplayShowTitleEnabled();

    public abstract void setDisplayUseLogoEnabled();

    public void setElevation(float p3)
    {
        if (p3 == 0) {
            return;
        } else {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    public void setHideOffset(int p3)
    {
        if (p3 == 0) {
            return;
        } else {
            throw new UnsupportedOperationException("Setting an explicit action bar hide offset is not supported in this action bar configuration.");
        }
    }

    public void setHideOnContentScrollEnabled(boolean p3)
    {
        if (!p3) {
            return;
        } else {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    public void setHomeActionContentDescription(int p1)
    {
        return;
    }

    public void setHomeActionContentDescription(CharSequence p1)
    {
        return;
    }

    public void setHomeAsUpIndicator(int p1)
    {
        return;
    }

    public void setHomeAsUpIndicator(android.graphics.drawable.Drawable p1)
    {
        return;
    }

    public void setHomeButtonEnabled(boolean p1)
    {
        return;
    }

    public abstract void setIcon();

    public abstract void setIcon();

    public abstract void setListNavigationCallbacks();

    public abstract void setLogo();

    public abstract void setLogo();

    public abstract void setNavigationMode();

    public abstract void setSelectedNavigationItem();

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

    public abstract void setSubtitle();

    public abstract void setSubtitle();

    public abstract void setTitle();

    public abstract void setTitle();

    public void setWindowTitle(CharSequence p1)
    {
        return;
    }

    public abstract void show();

    public androidx.appcompat.view.ActionMode startActionMode(androidx.appcompat.view.ActionMode$Callback p2)
    {
        return 0;
    }
}
