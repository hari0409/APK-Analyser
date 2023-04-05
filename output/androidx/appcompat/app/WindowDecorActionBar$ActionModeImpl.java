package androidx.appcompat.app;
public class WindowDecorActionBar$ActionModeImpl extends androidx.appcompat.view.ActionMode implements androidx.appcompat.view.menu.MenuBuilder$Callback {
    private final android.content.Context mActionModeContext;
    private androidx.appcompat.view.ActionMode$Callback mCallback;
    private ref.WeakReference mCustomView;
    private final androidx.appcompat.view.menu.MenuBuilder mMenu;
    final synthetic androidx.appcompat.app.WindowDecorActionBar this$0;

    public WindowDecorActionBar$ActionModeImpl(androidx.appcompat.app.WindowDecorActionBar p3, android.content.Context p4, androidx.appcompat.view.ActionMode$Callback p5)
    {
        this.this$0 = p3;
        this.mActionModeContext = p4;
        this.mCallback = p5;
        this.mMenu = new androidx.appcompat.view.menu.MenuBuilder(p4).setDefaultShowAsAction(1);
        this.mMenu.setCallback(this);
        return;
    }

    public boolean dispatchOnCreate()
    {
        this.mMenu.stopDispatchingItemsChanged();
        try {
            Throwable v0_2 = this.mCallback.onCreateActionMode(this, this.mMenu);
            this.mMenu.startDispatchingItemsChanged();
            return v0_2;
        } catch (Throwable v0_3) {
            this.mMenu.startDispatchingItemsChanged();
            throw v0_3;
        }
    }

    public void finish()
    {
        if (this.this$0.mActionMode == this) {
            if (androidx.appcompat.app.WindowDecorActionBar.checkShowingFlags(this.this$0.mHiddenByApp, this.this$0.mHiddenBySystem, 0)) {
                this.mCallback.onDestroyActionMode(this);
            } else {
                this.this$0.mDeferredDestroyActionMode = this;
                this.this$0.mDeferredModeDestroyCallback = this.mCallback;
            }
            this.mCallback = 0;
            this.this$0.animateToMode(0);
            this.this$0.mContextView.closeMode();
            this.this$0.mDecorToolbar.getViewGroup().sendAccessibilityEvent(32);
            this.this$0.mOverlayLayout.setHideOnContentScrollEnabled(this.this$0.mHideOnContentScroll);
            this.this$0.mActionMode = 0;
        }
        return;
    }

    public android.view.View getCustomView()
    {
        int v0_1;
        if (this.mCustomView == null) {
            v0_1 = 0;
        } else {
            v0_1 = ((android.view.View) this.mCustomView.get());
        }
        return v0_1;
    }

    public android.view.Menu getMenu()
    {
        return this.mMenu;
    }

    public android.view.MenuInflater getMenuInflater()
    {
        return new androidx.appcompat.view.SupportMenuInflater(this.mActionModeContext);
    }

    public CharSequence getSubtitle()
    {
        return this.this$0.mContextView.getSubtitle();
    }

    public CharSequence getTitle()
    {
        return this.this$0.mContextView.getTitle();
    }

    public void invalidate()
    {
        if (this.this$0.mActionMode == this) {
            this.mMenu.stopDispatchingItemsChanged();
            try {
                this.mCallback.onPrepareActionMode(this, this.mMenu);
                this.mMenu.startDispatchingItemsChanged();
            } catch (Throwable v0_2) {
                this.mMenu.startDispatchingItemsChanged();
                throw v0_2;
            }
        }
        return;
    }

    public boolean isTitleOptional()
    {
        return this.this$0.mContextView.isTitleOptional();
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p1, boolean p2)
    {
        return;
    }

    public void onCloseSubMenu(androidx.appcompat.view.menu.SubMenuBuilder p1)
    {
        return;
    }

    public boolean onMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        int v0_1;
        if (this.mCallback == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mCallback.onActionItemClicked(this, p3);
        }
        return v0_1;
    }

    public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder p2)
    {
        if (this.mCallback != null) {
            this.invalidate();
            this.this$0.mContextView.showOverflowMenu();
        }
        return;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p4)
    {
        int v0 = 1;
        if (this.mCallback != null) {
            if (p4.hasVisibleItems()) {
                new androidx.appcompat.view.menu.MenuPopupHelper(this.this$0.getThemedContext(), p4).show();
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    public void setCustomView(android.view.View p2)
    {
        this.this$0.mContextView.setCustomView(p2);
        this.mCustomView = new ref.WeakReference(p2);
        return;
    }

    public void setSubtitle(int p2)
    {
        this.setSubtitle(this.this$0.mContext.getResources().getString(p2));
        return;
    }

    public void setSubtitle(CharSequence p2)
    {
        this.this$0.mContextView.setSubtitle(p2);
        return;
    }

    public void setTitle(int p2)
    {
        this.setTitle(this.this$0.mContext.getResources().getString(p2));
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.this$0.mContextView.setTitle(p2);
        return;
    }

    public void setTitleOptionalHint(boolean p2)
    {
        super.setTitleOptionalHint(p2);
        this.this$0.mContextView.setTitleOptional(p2);
        return;
    }
}
