package androidx.appcompat.widget;
 class PopupMenu$1 implements androidx.appcompat.view.menu.MenuBuilder$Callback {
    final synthetic androidx.appcompat.widget.PopupMenu this$0;

    PopupMenu$1(androidx.appcompat.widget.PopupMenu p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        int v0_2;
        if (this.this$0.mMenuItemClickListener == null) {
            v0_2 = 0;
        } else {
            v0_2 = this.this$0.mMenuItemClickListener.onMenuItemClick(p3);
        }
        return v0_2;
    }

    public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder p1)
    {
        return;
    }
}
