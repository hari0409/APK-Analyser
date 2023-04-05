package androidx.appcompat.widget;
 class AppCompatSpinner$1 extends androidx.appcompat.widget.ForwardingListener {
    final synthetic androidx.appcompat.widget.AppCompatSpinner this$0;
    final synthetic androidx.appcompat.widget.AppCompatSpinner$DropdownPopup val$popup;

    AppCompatSpinner$1(androidx.appcompat.widget.AppCompatSpinner p1, android.view.View p2, androidx.appcompat.widget.AppCompatSpinner$DropdownPopup p3)
    {
        this.this$0 = p1;
        this.val$popup = p3;
        super(p2);
        return;
    }

    public androidx.appcompat.view.menu.ShowableListMenu getPopup()
    {
        return this.val$popup;
    }

    public boolean onForwardingStarted()
    {
        if (!this.this$0.mPopup.isShowing()) {
            this.this$0.mPopup.show();
        }
        return 1;
    }
}
