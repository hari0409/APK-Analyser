package androidx.appcompat.view.menu;
 class CascadingMenuPopup$3 implements androidx.appcompat.widget.MenuItemHoverListener {
    final synthetic androidx.appcompat.view.menu.CascadingMenuPopup this$0;

    CascadingMenuPopup$3(androidx.appcompat.view.menu.CascadingMenuPopup p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onItemHoverEnter(androidx.appcompat.view.menu.MenuBuilder p13, android.view.MenuItem p14)
    {
        this.this$0.mSubMenuHoverHandler.removeCallbacksAndMessages(0);
        int v2 = -1;
        int v1 = 0;
        int v0 = this.this$0.mShowingMenus.size();
        while (v1 < v0) {
            if (p13 != ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.this$0.mShowingMenus.get(v1)).menu) {
                v1++;
            } else {
                v2 = v1;
                break;
            }
        }
        if (v2 != -1) {
            int v4_0;
            int v3 = (v2 + 1);
            if (v3 >= this.this$0.mShowingMenus.size()) {
                v4_0 = 0;
            } else {
                v4_0 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.this$0.mShowingMenus.get(v3));
            }
            this.this$0.mSubMenuHoverHandler.postAtTime(new androidx.appcompat.view.menu.CascadingMenuPopup$3$1(this, v4_0, p14, p13), p13, (android.os.SystemClock.uptimeMillis() + 200));
        }
        return;
    }

    public void onItemHoverExit(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        this.this$0.mSubMenuHoverHandler.removeCallbacksAndMessages(p2);
        return;
    }
}
