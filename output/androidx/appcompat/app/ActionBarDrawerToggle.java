package androidx.appcompat.app;
public class ActionBarDrawerToggle implements androidx.drawerlayout.widget.DrawerLayout$DrawerListener {
    private final androidx.appcompat.app.ActionBarDrawerToggle$Delegate mActivityImpl;
    private final int mCloseDrawerContentDescRes;
    boolean mDrawerIndicatorEnabled;
    private final androidx.drawerlayout.widget.DrawerLayout mDrawerLayout;
    private boolean mDrawerSlideAnimationEnabled;
    private boolean mHasCustomUpIndicator;
    private android.graphics.drawable.Drawable mHomeAsUpIndicator;
    private final int mOpenDrawerContentDescRes;
    private androidx.appcompat.graphics.drawable.DrawerArrowDrawable mSlider;
    android.view.View$OnClickListener mToolbarNavigationClickListener;
    private boolean mWarnedForDisplayHomeAsUp;

    ActionBarDrawerToggle(android.app.Activity p3, androidx.appcompat.widget.Toolbar p4, androidx.drawerlayout.widget.DrawerLayout p5, androidx.appcompat.graphics.drawable.DrawerArrowDrawable p6, int p7, int p8)
    {
        this.mDrawerSlideAnimationEnabled = 1;
        this.mDrawerIndicatorEnabled = 1;
        this.mWarnedForDisplayHomeAsUp = 0;
        if (p4 == null) {
            if (!(p3 instanceof androidx.appcompat.app.ActionBarDrawerToggle$DelegateProvider)) {
                this.mActivityImpl = new androidx.appcompat.app.ActionBarDrawerToggle$FrameworkActionBarDelegate(p3);
            } else {
                this.mActivityImpl = ((androidx.appcompat.app.ActionBarDrawerToggle$DelegateProvider) p3).getDrawerToggleDelegate();
            }
        } else {
            this.mActivityImpl = new androidx.appcompat.app.ActionBarDrawerToggle$ToolbarCompatDelegate(p4);
            p4.setNavigationOnClickListener(new androidx.appcompat.app.ActionBarDrawerToggle$1(this));
        }
        this.mDrawerLayout = p5;
        this.mOpenDrawerContentDescRes = p7;
        this.mCloseDrawerContentDescRes = p8;
        if (p6 != null) {
            this.mSlider = p6;
        } else {
            this.mSlider = new androidx.appcompat.graphics.drawable.DrawerArrowDrawable(this.mActivityImpl.getActionBarThemedContext());
        }
        this.mHomeAsUpIndicator = this.getThemeUpIndicator();
        return;
    }

    public ActionBarDrawerToggle(android.app.Activity p8, androidx.drawerlayout.widget.DrawerLayout p9, int p10, int p11)
    {
        this(p8, 0, p9, 0, p10, p11);
        return;
    }

    public ActionBarDrawerToggle(android.app.Activity p8, androidx.drawerlayout.widget.DrawerLayout p9, androidx.appcompat.widget.Toolbar p10, int p11, int p12)
    {
        this(p8, p10, p9, 0, p11, p12);
        return;
    }

    private void setPosition(float p3)
    {
        if (p3 != 1065353216) {
            if (p3 == 0) {
                this.mSlider.setVerticalMirror(0);
            }
        } else {
            this.mSlider.setVerticalMirror(1);
        }
        this.mSlider.setProgress(p3);
        return;
    }

    public androidx.appcompat.graphics.drawable.DrawerArrowDrawable getDrawerArrowDrawable()
    {
        return this.mSlider;
    }

    android.graphics.drawable.Drawable getThemeUpIndicator()
    {
        return this.mActivityImpl.getThemeUpIndicator();
    }

    public android.view.View$OnClickListener getToolbarNavigationClickListener()
    {
        return this.mToolbarNavigationClickListener;
    }

    public boolean isDrawerIndicatorEnabled()
    {
        return this.mDrawerIndicatorEnabled;
    }

    public boolean isDrawerSlideAnimationEnabled()
    {
        return this.mDrawerSlideAnimationEnabled;
    }

    public void onConfigurationChanged(android.content.res.Configuration p2)
    {
        if (!this.mHasCustomUpIndicator) {
            this.mHomeAsUpIndicator = this.getThemeUpIndicator();
        }
        this.syncState();
        return;
    }

    public void onDrawerClosed(android.view.View p2)
    {
        this.setPosition(0);
        if (this.mDrawerIndicatorEnabled) {
            this.setActionBarDescription(this.mOpenDrawerContentDescRes);
        }
        return;
    }

    public void onDrawerOpened(android.view.View p2)
    {
        this.setPosition(1065353216);
        if (this.mDrawerIndicatorEnabled) {
            this.setActionBarDescription(this.mCloseDrawerContentDescRes);
        }
        return;
    }

    public void onDrawerSlide(android.view.View p3, float p4)
    {
        if (!this.mDrawerSlideAnimationEnabled) {
            this.setPosition(0);
        } else {
            this.setPosition(Math.min(1065353216, Math.max(0, p4)));
        }
        return;
    }

    public void onDrawerStateChanged(int p1)
    {
        return;
    }

    public boolean onOptionsItemSelected(android.view.MenuItem p3)
    {
        if ((p3 == null) || ((p3.getItemId() != 16908332) || (!this.mDrawerIndicatorEnabled))) {
            int v0_2 = 0;
        } else {
            this.toggle();
            v0_2 = 1;
        }
        return v0_2;
    }

    void setActionBarDescription(int p2)
    {
        this.mActivityImpl.setActionBarDescription(p2);
        return;
    }

    void setActionBarUpIndicator(android.graphics.drawable.Drawable p3, int p4)
    {
        if ((!this.mWarnedForDisplayHomeAsUp) && (!this.mActivityImpl.isNavigationVisible())) {
            android.util.Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.mWarnedForDisplayHomeAsUp = 1;
        }
        this.mActivityImpl.setActionBarUpIndicator(p3, p4);
        return;
    }

    public void setDrawerArrowDrawable(androidx.appcompat.graphics.drawable.DrawerArrowDrawable p1)
    {
        this.mSlider = p1;
        this.syncState();
        return;
    }

    public void setDrawerIndicatorEnabled(boolean p4)
    {
        if (p4 != this.mDrawerIndicatorEnabled) {
            if (!p4) {
                this.setActionBarUpIndicator(this.mHomeAsUpIndicator, 0);
            } else {
                int v0_2;
                if (!this.mDrawerLayout.isDrawerOpen(8388611)) {
                    v0_2 = this.mOpenDrawerContentDescRes;
                } else {
                    v0_2 = this.mCloseDrawerContentDescRes;
                }
                this.setActionBarUpIndicator(this.mSlider, v0_2);
            }
            this.mDrawerIndicatorEnabled = p4;
        }
        return;
    }

    public void setDrawerSlideAnimationEnabled(boolean p2)
    {
        this.mDrawerSlideAnimationEnabled = p2;
        if (!p2) {
            this.setPosition(0);
        }
        return;
    }

    public void setHomeAsUpIndicator(int p3)
    {
        android.graphics.drawable.Drawable v0 = 0;
        if (p3 != 0) {
            v0 = this.mDrawerLayout.getResources().getDrawable(p3);
        }
        this.setHomeAsUpIndicator(v0);
        return;
    }

    public void setHomeAsUpIndicator(android.graphics.drawable.Drawable p3)
    {
        if (p3 != null) {
            this.mHomeAsUpIndicator = p3;
            this.mHasCustomUpIndicator = 1;
        } else {
            this.mHomeAsUpIndicator = this.getThemeUpIndicator();
            this.mHasCustomUpIndicator = 0;
        }
        if (!this.mDrawerIndicatorEnabled) {
            this.setActionBarUpIndicator(this.mHomeAsUpIndicator, 0);
        }
        return;
    }

    public void setToolbarNavigationClickListener(android.view.View$OnClickListener p1)
    {
        this.mToolbarNavigationClickListener = p1;
        return;
    }

    public void syncState()
    {
        if (!this.mDrawerLayout.isDrawerOpen(8388611)) {
            this.setPosition(0);
        } else {
            this.setPosition(1065353216);
        }
        if (this.mDrawerIndicatorEnabled) {
            int v0_3;
            if (!this.mDrawerLayout.isDrawerOpen(8388611)) {
                v0_3 = this.mOpenDrawerContentDescRes;
            } else {
                v0_3 = this.mCloseDrawerContentDescRes;
            }
            this.setActionBarUpIndicator(this.mSlider, v0_3);
        }
        return;
    }

    void toggle()
    {
        int v0 = this.mDrawerLayout.getDrawerLockMode(8388611);
        if ((!this.mDrawerLayout.isDrawerVisible(8388611)) || (v0 == 2)) {
            if (v0 != 1) {
                this.mDrawerLayout.openDrawer(8388611);
            }
        } else {
            this.mDrawerLayout.closeDrawer(8388611);
        }
        return;
    }
}
