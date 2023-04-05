package androidx.appcompat.app;
 class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHC";
    private static final int[] THEME_ATTRS;

    static ActionBarDrawerToggleHoneycomb()
    {
        int[] v0_1 = new int[1];
        v0_1[0] = 16843531;
        androidx.appcompat.app.ActionBarDrawerToggleHoneycomb.THEME_ATTRS = v0_1;
        return;
    }

    private ActionBarDrawerToggleHoneycomb()
    {
        return;
    }

    public static android.graphics.drawable.Drawable getThemeUpIndicator(android.app.Activity p3)
    {
        android.content.res.TypedArray v0 = p3.obtainStyledAttributes(androidx.appcompat.app.ActionBarDrawerToggleHoneycomb.THEME_ATTRS);
        android.graphics.drawable.Drawable v1 = v0.getDrawable(0);
        v0.recycle();
        return v1;
    }

    public static androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo setActionBarDescription(androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo p6, android.app.Activity p7, int p8)
    {
        if (p6 == null) {
            p6 = new androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(p7);
        }
        if (p6.setHomeAsUpIndicator != null) {
            try {
                android.app.ActionBar v0 = p7.getActionBar();
                CharSequence v2_4 = p6.setHomeActionContentDescription;
                String v3_3 = new Object[1];
                v3_3[0] = Integer.valueOf(p8);
                v2_4.invoke(v0, v3_3);
            } catch (Exception v1) {
                android.util.Log.w("ActionBarDrawerToggleHC", "Couldn\'t set content description via JB-MR2 API", v1);
            }
            if (android.os.Build$VERSION.SDK_INT <= 19) {
                v0.setSubtitle(v0.getSubtitle());
            }
        }
        return p6;
    }

    public static androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo setActionBarUpIndicator(androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo p6, android.app.Activity p7, android.graphics.drawable.Drawable p8, int p9)
    {
        androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo v6_1 = new androidx.appcompat.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo(p7);
        if (v6_1.setHomeAsUpIndicator == null) {
            if (v6_1.upIndicatorView == null) {
                android.util.Log.w("ActionBarDrawerToggleHC", "Couldn\'t set home-as-up indicator");
            } else {
                v6_1.upIndicatorView.setImageDrawable(p8);
            }
        } else {
            try {
                android.app.ActionBar v0 = p7.getActionBar();
                String v2_0 = v6_1.setHomeAsUpIndicator;
                String v3_1 = new Object[1];
                v3_1[0] = p8;
                v2_0.invoke(v0, v3_1);
                String v2_1 = v6_1.setHomeActionContentDescription;
                String v3_3 = new Object[1];
                v3_3[0] = Integer.valueOf(p9);
                v2_1.invoke(v0, v3_3);
            } catch (Exception v1) {
                android.util.Log.w("ActionBarDrawerToggleHC", "Couldn\'t set home-as-up indicator via JB-MR2 API", v1);
            }
        }
        return v6_1;
    }
}
