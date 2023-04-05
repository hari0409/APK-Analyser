package androidx.appcompat.app;
final class AppCompatDelegateImpl$PanelMenuPresenterCallback implements androidx.appcompat.view.menu.MenuPresenter$Callback {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$PanelMenuPresenterCallback(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p7, boolean p8)
    {
        int v0;
        androidx.appcompat.view.menu.MenuBuilder v2 = p7.getRootMenu();
        if (v2 == p7) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        if (v0 != 0) {
            p7 = v2;
        }
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1 = this.this$0.findMenuPanel(p7);
        if (v1 != null) {
            if (v0 == 0) {
                this.this$0.closePanel(v1, p8);
            } else {
                this.this$0.callOnPanelClosed(v1.featureId, v1, v2);
                this.this$0.closePanel(v1, 1);
            }
        }
        return;
    }

    public boolean onOpenSubMenu(androidx.appcompat.view.menu.MenuBuilder p3)
    {
        if ((p3 == null) && (this.this$0.mHasActionBar)) {
            android.view.Window$Callback v0 = this.this$0.getWindowCallback();
            if ((v0 != null) && (!this.this$0.mIsDestroyed)) {
                v0.onMenuOpened(108, p3);
            }
        }
        return 1;
    }
}
