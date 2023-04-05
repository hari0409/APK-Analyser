package androidx.appcompat.app;
final class AppCompatDelegateImpl$ActionMenuPresenterCallback implements androidx.appcompat.view.menu.MenuPresenter$Callback {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$ActionMenuPresenterCallback(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p2, boolean p3)
    {
        this.this$0.checkCloseActionMenu(p2);
        return;
    }

    public boolean onOpenSubMenu(androidx.appcompat.view.menu.MenuBuilder p3)
    {
        android.view.Window$Callback v0 = this.this$0.getWindowCallback();
        if (v0 != null) {
            v0.onMenuOpened(108, p3);
        }
        return 1;
    }
}
