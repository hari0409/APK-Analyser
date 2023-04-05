package androidx.appcompat.app;
 class AppCompatDelegateImpl$ActionBarDrawableToggleImpl implements androidx.appcompat.app.ActionBarDrawerToggle$Delegate {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$ActionBarDrawableToggleImpl(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public android.content.Context getActionBarThemedContext()
    {
        return this.this$0.getActionBarThemedContext();
    }

    public android.graphics.drawable.Drawable getThemeUpIndicator()
    {
        android.content.Context v2 = this.getActionBarThemedContext();
        int[] v4_1 = new int[1];
        v4_1[0] = androidx.appcompat.R$attr.homeAsUpIndicator;
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(v2, 0, v4_1);
        android.graphics.drawable.Drawable v1 = v0.getDrawable(0);
        v0.recycle();
        return v1;
    }

    public boolean isNavigationVisible()
    {
        int v1_3;
        androidx.appcompat.app.ActionBar v0 = this.this$0.getSupportActionBar();
        if ((v0 == null) || ((v0.getDisplayOptions() & 4) == 0)) {
            v1_3 = 0;
        } else {
            v1_3 = 1;
        }
        return v1_3;
    }

    public void setActionBarDescription(int p3)
    {
        androidx.appcompat.app.ActionBar v0 = this.this$0.getSupportActionBar();
        if (v0 != null) {
            v0.setHomeActionContentDescription(p3);
        }
        return;
    }

    public void setActionBarUpIndicator(android.graphics.drawable.Drawable p3, int p4)
    {
        androidx.appcompat.app.ActionBar v0 = this.this$0.getSupportActionBar();
        if (v0 != null) {
            v0.setHomeAsUpIndicator(p3);
            v0.setHomeActionContentDescription(p4);
        }
        return;
    }
}
