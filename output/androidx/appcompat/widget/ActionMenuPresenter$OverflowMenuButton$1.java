package androidx.appcompat.widget;
 class ActionMenuPresenter$OverflowMenuButton$1 extends androidx.appcompat.widget.ForwardingListener {
    final synthetic androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton this$1;
    final synthetic androidx.appcompat.widget.ActionMenuPresenter val$this$0;

    ActionMenuPresenter$OverflowMenuButton$1(androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton p1, android.view.View p2, androidx.appcompat.widget.ActionMenuPresenter p3)
    {
        this.this$1 = p1;
        this.val$this$0 = p3;
        super(p2);
        return;
    }

    public androidx.appcompat.view.menu.ShowableListMenu getPopup()
    {
        androidx.appcompat.view.menu.MenuPopup v0_6;
        if (this.this$1.this$0.mOverflowPopup != null) {
            v0_6 = this.this$1.this$0.mOverflowPopup.getPopup();
        } else {
            v0_6 = 0;
        }
        return v0_6;
    }

    public boolean onForwardingStarted()
    {
        this.this$1.this$0.showOverflowMenu();
        return 1;
    }

    public boolean onForwardingStopped()
    {
        int v0_5;
        if (this.this$1.this$0.mPostedOpenRunnable == null) {
            this.this$1.this$0.hideOverflowMenu();
            v0_5 = 1;
        } else {
            v0_5 = 0;
        }
        return v0_5;
    }
}
