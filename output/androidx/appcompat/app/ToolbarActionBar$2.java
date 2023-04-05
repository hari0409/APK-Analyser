package androidx.appcompat.app;
 class ToolbarActionBar$2 implements androidx.appcompat.widget.Toolbar$OnMenuItemClickListener {
    final synthetic androidx.appcompat.app.ToolbarActionBar this$0;

    ToolbarActionBar$2(androidx.appcompat.app.ToolbarActionBar p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemClick(android.view.MenuItem p3)
    {
        return this.this$0.mWindowCallback.onMenuItemSelected(0, p3);
    }
}
