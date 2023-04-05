package androidx.appcompat.view.menu;
 class MenuDialogHelper implements android.content.DialogInterface$OnKeyListener, android.content.DialogInterface$OnClickListener, android.content.DialogInterface$OnDismissListener, androidx.appcompat.view.menu.MenuPresenter$Callback {
    private androidx.appcompat.app.AlertDialog mDialog;
    private androidx.appcompat.view.menu.MenuBuilder mMenu;
    androidx.appcompat.view.menu.ListMenuPresenter mPresenter;
    private androidx.appcompat.view.menu.MenuPresenter$Callback mPresenterCallback;

    public MenuDialogHelper(androidx.appcompat.view.menu.MenuBuilder p1)
    {
        this.mMenu = p1;
        return;
    }

    public void dismiss()
    {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
        }
        return;
    }

    public void onClick(android.content.DialogInterface p4, int p5)
    {
        this.mMenu.performItemAction(((androidx.appcompat.view.menu.MenuItemImpl) this.mPresenter.getAdapter().getItem(p5)), 0);
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p2, boolean p3)
    {
        if ((p3) || (p2 == this.mMenu)) {
            this.dismiss();
        }
        if (this.mPresenterCallback != null) {
            this.mPresenterCallback.onCloseMenu(p2, p3);
        }
        return;
    }

    public void onDismiss(android.content.DialogInterface p4)
    {
        this.mPresenter.onCloseMenu(this.mMenu, 1);
        return;
    }

    public boolean onKey(android.content.DialogInterface p6, int p7, android.view.KeyEvent p8)
    {
        boolean v3_0 = 1;
        if ((p7 != 82) && (p7 != 4)) {
            v3_0 = this.mMenu.performShortcut(p7, p8, 0);
        } else {
            if ((p8.getAction() != 0) || (p8.getRepeatCount() != 0)) {
                if ((p8.getAction() != 1) || (p8.isCanceled())) {
                } else {
                    android.view.Window v2_0 = this.mDialog.getWindow();
                    if (v2_0 == null) {
                    } else {
                        android.view.View v0_0 = v2_0.getDecorView();
                        if (v0_0 == null) {
                        } else {
                            android.view.KeyEvent$DispatcherState v1_0 = v0_0.getKeyDispatcherState();
                            if ((v1_0 == null) || (!v1_0.isTracking(p8))) {
                            } else {
                                this.mMenu.close(1);
                                p6.dismiss();
                            }
                        }
                    }
                }
            } else {
                android.view.Window v2_1 = this.mDialog.getWindow();
                if (v2_1 == null) {
                } else {
                    android.view.View v0_1 = v2_1.getDecorView();
                    if (v0_1 == null) {
                    } else {
                        android.view.KeyEvent$DispatcherState v1_1 = v0_1.getKeyDispatcherState();
                        if (v1_1 == null) {
                        } else {
                            v1_1.startTracking(p8, this);
                        }
                    }
                }
            }
        }
        return v3_0;
    }

    public boolean onOpenSubMenu(androidx.appcompat.view.menu.MenuBuilder p2)
    {
        int v0_1;
        if (this.mPresenterCallback == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mPresenterCallback.onOpenSubMenu(p2);
        }
        return v0_1;
    }

    public void setPresenterCallback(androidx.appcompat.view.menu.MenuPresenter$Callback p1)
    {
        this.mPresenterCallback = p1;
        return;
    }

    public void show(android.os.IBinder p8)
    {
        androidx.appcompat.view.menu.MenuBuilder v3 = this.mMenu;
        androidx.appcompat.app.AlertDialog$Builder v0_1 = new androidx.appcompat.app.AlertDialog$Builder(v3.getContext());
        this.mPresenter = new androidx.appcompat.view.menu.ListMenuPresenter(v0_1.getContext(), androidx.appcompat.R$layout.abc_list_menu_item_layout);
        this.mPresenter.setCallback(this);
        this.mMenu.addMenuPresenter(this.mPresenter);
        v0_1.setAdapter(this.mPresenter.getAdapter(), this);
        android.view.View v1 = v3.getHeaderView();
        if (v1 == null) {
            v0_1.setIcon(v3.getHeaderIcon()).setTitle(v3.getHeaderTitle());
        } else {
            v0_1.setCustomTitle(v1);
        }
        v0_1.setOnKeyListener(this);
        this.mDialog = v0_1.create();
        this.mDialog.setOnDismissListener(this);
        android.view.WindowManager$LayoutParams v2 = this.mDialog.getWindow().getAttributes();
        v2.type = 1003;
        if (p8 != null) {
            v2.token = p8;
        }
        v2.flags = (v2.flags | 131072);
        this.mDialog.show();
        return;
    }
}
