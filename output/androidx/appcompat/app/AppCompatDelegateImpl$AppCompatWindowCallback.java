package androidx.appcompat.app;
 class AppCompatDelegateImpl$AppCompatWindowCallback extends androidx.appcompat.view.WindowCallbackWrapper {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$AppCompatWindowCallback(androidx.appcompat.app.AppCompatDelegateImpl p1, android.view.Window$Callback p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public boolean dispatchKeyEvent(android.view.KeyEvent p2)
    {
        if ((!this.this$0.dispatchKeyEvent(p2)) && (!super.dispatchKeyEvent(p2))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean dispatchKeyShortcutEvent(android.view.KeyEvent p3)
    {
        if ((!super.dispatchKeyShortcutEvent(p3)) && (!this.this$0.onKeyShortcut(p3.getKeyCode(), p3))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public void onContentChanged()
    {
        return;
    }

    public boolean onCreatePanelMenu(int p2, android.view.Menu p3)
    {
        if ((p2 != 0) || ((p3 instanceof androidx.appcompat.view.menu.MenuBuilder))) {
            int v0_1 = super.onCreatePanelMenu(p2, p3);
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    public boolean onMenuOpened(int p2, android.view.Menu p3)
    {
        super.onMenuOpened(p2, p3);
        this.this$0.onMenuOpened(p2);
        return 1;
    }

    public void onPanelClosed(int p2, android.view.Menu p3)
    {
        super.onPanelClosed(p2, p3);
        this.this$0.onPanelClosed(p2);
        return;
    }

    public boolean onPreparePanel(int p5, android.view.View p6, android.view.Menu p7)
    {
        int v1;
        if (!(p7 instanceof androidx.appcompat.view.menu.MenuBuilder)) {
            v1 = 0;
        } else {
            v1 = ((androidx.appcompat.view.menu.MenuBuilder) p7);
        }
        if ((p5 != 0) || (v1 != 0)) {
            if (v1 != 0) {
                v1.setOverrideVisibleItems(1);
            }
            boolean v0 = super.onPreparePanel(p5, p6, p7);
            if (v1 != 0) {
                v1.setOverrideVisibleItems(0);
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    public void onProvideKeyboardShortcuts(java.util.List p5, android.view.Menu p6, int p7)
    {
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v0 = this.this$0.getPanelState(0, 1);
        if ((v0 == null) || (v0.menu == null)) {
            super.onProvideKeyboardShortcuts(p5, p6, p7);
        } else {
            super.onProvideKeyboardShortcuts(p5, v0.menu, p7);
        }
        return;
    }

    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode$Callback p3)
    {
        android.view.ActionMode v0_1;
        if (android.os.Build$VERSION.SDK_INT < 23) {
            if (!this.this$0.isHandleNativeActionModesEnabled()) {
                v0_1 = super.onWindowStartingActionMode(p3);
            } else {
                v0_1 = this.startAsSupportActionMode(p3);
            }
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode$Callback p2, int p3)
    {
        android.view.ActionMode v0_2;
        if (!this.this$0.isHandleNativeActionModesEnabled()) {
            v0_2 = super.onWindowStartingActionMode(p2, p3);
        } else {
            switch (p3) {
                case 0:
                    v0_2 = this.startAsSupportActionMode(p2);
                    break;
                default:
            }
        }
        return v0_2;
    }

    final android.view.ActionMode startAsSupportActionMode(android.view.ActionMode$Callback p4)
    {
        int v2_1;
        androidx.appcompat.view.SupportActionModeWrapper$CallbackWrapper v0_1 = new androidx.appcompat.view.SupportActionModeWrapper$CallbackWrapper(this.this$0.mContext, p4);
        androidx.appcompat.view.ActionMode v1 = this.this$0.startSupportActionMode(v0_1);
        if (v1 == null) {
            v2_1 = 0;
        } else {
            v2_1 = v0_1.getActionModeWrapper(v1);
        }
        return v2_1;
    }
}
