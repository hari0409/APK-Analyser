package androidx.appcompat.app;
 class ActionBarDrawerToggle$1 implements android.view.View$OnClickListener {
    final synthetic androidx.appcompat.app.ActionBarDrawerToggle this$0;

    ActionBarDrawerToggle$1(androidx.appcompat.app.ActionBarDrawerToggle p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p2)
    {
        if (!this.this$0.mDrawerIndicatorEnabled) {
            if (this.this$0.mToolbarNavigationClickListener != null) {
                this.this$0.mToolbarNavigationClickListener.onClick(p2);
            }
        } else {
            this.this$0.toggle();
        }
        return;
    }
}
