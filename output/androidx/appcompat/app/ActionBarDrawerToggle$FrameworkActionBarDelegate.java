package androidx.appcompat.app;
 class ActionBarDrawerToggle$FrameworkActionBarDelegate implements androidx.appcompat.app.ActionBarDrawerToggle$Delegate {
    private final android.app.Activity mActivity;
    private androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo mSetIndicatorInfo;

    ActionBarDrawerToggle$FrameworkActionBarDelegate(android.app.Activity p1)
    {
        this.mActivity = p1;
        return;
    }

    public android.content.Context getActionBarThemedContext()
    {
        android.app.Activity v1_1;
        android.app.ActionBar v0 = this.mActivity.getActionBar();
        if (v0 == null) {
            v1_1 = this.mActivity;
        } else {
            v1_1 = v0.getThemedContext();
        }
        return v1_1;
    }

    public android.graphics.drawable.Drawable getThemeUpIndicator()
    {
        android.graphics.drawable.Drawable v1;
        if (android.os.Build$VERSION.SDK_INT < 18) {
            v1 = androidx.appcompat.app.ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(this.mActivity);
        } else {
            android.app.Activity v2_2 = this.getActionBarThemedContext();
            int[] v4_1 = new int[1];
            v4_1[0] = 16843531;
            android.content.res.TypedArray v0 = v2_2.obtainStyledAttributes(0, v4_1, 16843470, 0);
            v1 = v0.getDrawable(0);
            v0.recycle();
        }
        return v1;
    }

    public boolean isNavigationVisible()
    {
        int v1_3;
        android.app.ActionBar v0 = this.mActivity.getActionBar();
        if ((v0 == null) || ((v0.getDisplayOptions() & 4) == 0)) {
            v1_3 = 0;
        } else {
            v1_3 = 1;
        }
        return v1_3;
    }

    public void setActionBarDescription(int p4)
    {
        if (android.os.Build$VERSION.SDK_INT < 18) {
            this.mSetIndicatorInfo = androidx.appcompat.app.ActionBarDrawerToggleHoneycomb.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, p4);
        } else {
            android.app.ActionBar v0 = this.mActivity.getActionBar();
            if (v0 != null) {
                v0.setHomeActionContentDescription(p4);
            }
        }
        return;
    }

    public void setActionBarUpIndicator(android.graphics.drawable.Drawable p4, int p5)
    {
        android.app.ActionBar v0 = this.mActivity.getActionBar();
        if (v0 != null) {
            if (android.os.Build$VERSION.SDK_INT < 18) {
                v0.setDisplayShowHomeEnabled(1);
                this.mSetIndicatorInfo = androidx.appcompat.app.ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, p4, p5);
                v0.setDisplayShowHomeEnabled(0);
            } else {
                v0.setHomeAsUpIndicator(p4);
                v0.setHomeActionContentDescription(p5);
            }
        }
        return;
    }
}
