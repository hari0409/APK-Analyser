package androidx.appcompat.widget;
 class ActionMenuView$MenuBuilderCallback implements androidx.appcompat.view.menu.MenuBuilder$Callback {
    final synthetic androidx.appcompat.widget.ActionMenuView this$0;

    ActionMenuView$MenuBuilderCallback(androidx.appcompat.widget.ActionMenuView p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        if ((this.this$0.mOnMenuItemClickListener == null) || (!this.this$0.mOnMenuItemClickListener.onMenuItemClick(p3))) {
            int v0_5 = 0;
        } else {
            v0_5 = 1;
        }
        return v0_5;
    }

    public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder p2)
    {
        if (this.this$0.mMenuBuilderCallback != null) {
            this.this$0.mMenuBuilderCallback.onMenuModeChange(p2);
        }
        return;
    }
}
