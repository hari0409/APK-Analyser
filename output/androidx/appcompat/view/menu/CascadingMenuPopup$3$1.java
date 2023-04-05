package androidx.appcompat.view.menu;
 class CascadingMenuPopup$3$1 implements java.lang.Runnable {
    final synthetic androidx.appcompat.view.menu.CascadingMenuPopup$3 this$1;
    final synthetic android.view.MenuItem val$item;
    final synthetic androidx.appcompat.view.menu.MenuBuilder val$menu;
    final synthetic androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo val$nextInfo;

    CascadingMenuPopup$3$1(androidx.appcompat.view.menu.CascadingMenuPopup$3 p1, androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo p2, android.view.MenuItem p3, androidx.appcompat.view.menu.MenuBuilder p4)
    {
        this.this$1 = p1;
        this.val$nextInfo = p2;
        this.val$item = p3;
        this.val$menu = p4;
        return;
    }

    public void run()
    {
        if (this.val$nextInfo != null) {
            this.this$1.this$0.mShouldCloseImmediately = 1;
            this.val$nextInfo.menu.close(0);
            this.this$1.this$0.mShouldCloseImmediately = 0;
        }
        if ((this.val$item.isEnabled()) && (this.val$item.hasSubMenu())) {
            this.val$menu.performItemAction(this.val$item, 4);
        }
        return;
    }
}
