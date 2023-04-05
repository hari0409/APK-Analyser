package androidx.appcompat.widget;
 class PopupMenu$3 extends androidx.appcompat.widget.ForwardingListener {
    final synthetic androidx.appcompat.widget.PopupMenu this$0;

    PopupMenu$3(androidx.appcompat.widget.PopupMenu p1, android.view.View p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public androidx.appcompat.view.menu.ShowableListMenu getPopup()
    {
        return this.this$0.mPopup.getPopup();
    }

    protected boolean onForwardingStarted()
    {
        this.this$0.show();
        return 1;
    }

    protected boolean onForwardingStopped()
    {
        this.this$0.dismiss();
        return 1;
    }
}
