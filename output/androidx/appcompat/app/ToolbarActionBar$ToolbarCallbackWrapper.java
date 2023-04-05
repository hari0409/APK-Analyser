package androidx.appcompat.app;
 class ToolbarActionBar$ToolbarCallbackWrapper extends androidx.appcompat.view.WindowCallbackWrapper {
    final synthetic androidx.appcompat.app.ToolbarActionBar this$0;

    public ToolbarActionBar$ToolbarCallbackWrapper(androidx.appcompat.app.ToolbarActionBar p1, android.view.Window$Callback p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public android.view.View onCreatePanelView(int p3)
    {
        android.view.View v0_0;
        if (p3 != 0) {
            v0_0 = super.onCreatePanelView(p3);
        } else {
            v0_0 = new android.view.View(this.this$0.mDecorToolbar.getContext());
        }
        return v0_0;
    }

    public boolean onPreparePanel(int p4, android.view.View p5, android.view.Menu p6)
    {
        boolean v0 = super.onPreparePanel(p4, p5, p6);
        if ((v0) && (!this.this$0.mToolbarMenuPrepared)) {
            this.this$0.mDecorToolbar.setMenuPrepared();
            this.this$0.mToolbarMenuPrepared = 1;
        }
        return v0;
    }
}
