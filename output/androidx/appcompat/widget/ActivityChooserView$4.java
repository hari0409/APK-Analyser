package androidx.appcompat.widget;
 class ActivityChooserView$4 extends androidx.appcompat.widget.ForwardingListener {
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$4(androidx.appcompat.widget.ActivityChooserView p1, android.view.View p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public androidx.appcompat.view.menu.ShowableListMenu getPopup()
    {
        return this.this$0.getListPopupWindow();
    }

    protected boolean onForwardingStarted()
    {
        this.this$0.showPopup();
        return 1;
    }

    protected boolean onForwardingStopped()
    {
        this.this$0.dismissPopup();
        return 1;
    }
}
