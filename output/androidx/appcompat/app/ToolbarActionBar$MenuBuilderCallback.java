package androidx.appcompat.app;
final class ToolbarActionBar$MenuBuilderCallback implements androidx.appcompat.view.menu.MenuBuilder$Callback {
    final synthetic androidx.appcompat.app.ToolbarActionBar this$0;

    ToolbarActionBar$MenuBuilderCallback(androidx.appcompat.app.ToolbarActionBar p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        return 0;
    }

    public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder p5)
    {
        if (this.this$0.mWindowCallback != null) {
            if (!this.this$0.mDecorToolbar.isOverflowMenuShowing()) {
                if (this.this$0.mWindowCallback.onPreparePanel(0, 0, p5)) {
                    this.this$0.mWindowCallback.onMenuOpened(108, p5);
                }
            } else {
                this.this$0.mWindowCallback.onPanelClosed(108, p5);
            }
        }
        return;
    }
}
