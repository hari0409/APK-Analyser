package androidx.appcompat.widget;
 class ActionMenuPresenter$PopupPresenterCallback implements androidx.appcompat.view.menu.MenuPresenter$Callback {
    final synthetic androidx.appcompat.widget.ActionMenuPresenter this$0;

    ActionMenuPresenter$PopupPresenterCallback(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p4, boolean p5)
    {
        if ((p4 instanceof androidx.appcompat.view.menu.SubMenuBuilder)) {
            p4.getRootMenu().close(0);
        }
        androidx.appcompat.view.menu.MenuPresenter$Callback v0 = this.this$0.getCallback();
        if (v0 != null) {
            v0.onCloseMenu(p4, p5);
        }
        return;
    }

    public boolean onOpenSubMenu(androidx.appcompat.view.menu.MenuBuilder p5)
    {
        int v2 = 0;
        if (p5 != null) {
            int v1_1;
            this.this$0.mOpenSubMenuId = ((androidx.appcompat.view.menu.SubMenuBuilder) p5).getItem().getItemId();
            androidx.appcompat.view.menu.MenuPresenter$Callback v0 = this.this$0.getCallback();
            if (v0 == null) {
                v1_1 = 0;
            } else {
                v1_1 = v0.onOpenSubMenu(p5);
            }
            v2 = v1_1;
        }
        return v2;
    }
}
