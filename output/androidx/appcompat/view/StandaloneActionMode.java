package androidx.appcompat.view;
public class StandaloneActionMode extends androidx.appcompat.view.ActionMode implements androidx.appcompat.view.menu.MenuBuilder$Callback {
    private androidx.appcompat.view.ActionMode$Callback mCallback;
    private android.content.Context mContext;
    private androidx.appcompat.widget.ActionBarContextView mContextView;
    private ref.WeakReference mCustomView;
    private boolean mFinished;
    private boolean mFocusable;
    private androidx.appcompat.view.menu.MenuBuilder mMenu;

    public StandaloneActionMode(android.content.Context p3, androidx.appcompat.widget.ActionBarContextView p4, androidx.appcompat.view.ActionMode$Callback p5, boolean p6)
    {
        this.mContext = p3;
        this.mContextView = p4;
        this.mCallback = p5;
        this.mMenu = new androidx.appcompat.view.menu.MenuBuilder(p4.getContext()).setDefaultShowAsAction(1);
        this.mMenu.setCallback(this);
        this.mFocusable = p6;
        return;
    }

    public void finish()
    {
        if (!this.mFinished) {
            this.mFinished = 1;
            this.mContextView.sendAccessibilityEvent(32);
            this.mCallback.onDestroyActionMode(this);
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
        return new androidx.appcompat.view.SupportMenuInflater(this.mContextView.getContext());
    }

    public CharSequence getSubtitle()
    {
        return this.mContextView.getSubtitle();
    }

    public CharSequence getTitle()
    {
        return this.mContextView.getTitle();
    }

    public void invalidate()
    {
        this.mCallback.onPrepareActionMode(this, this.mMenu);
        return;
    }

    public boolean isTitleOptional()
    {
        return this.mContextView.isTitleOptional();
    }

    public boolean isUiFocusable()
    {
        return this.mFocusable;
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
        return this.mCallback.onActionItemClicked(this, p3);
    }

    public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder p2)
    {
        this.invalidate();
        this.mContextView.showOverflowMenu();
        return;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p4)
    {
        if (p4.hasVisibleItems()) {
            new androidx.appcompat.view.menu.MenuPopupHelper(this.mContextView.getContext(), p4).show();
        }
        return 1;
    }

    public void setCustomView(android.view.View p2)
    {
        int v0_1;
        this.mContextView.setCustomView(p2);
        if (p2 == null) {
            v0_1 = 0;
        } else {
            v0_1 = new ref.WeakReference(p2);
        }
        this.mCustomView = v0_1;
        return;
    }

    public void setSubtitle(int p2)
    {
        this.setSubtitle(this.mContext.getString(p2));
        return;
    }

    public void setSubtitle(CharSequence p2)
    {
        this.mContextView.setSubtitle(p2);
        return;
    }

    public void setTitle(int p2)
    {
        this.setTitle(this.mContext.getString(p2));
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.mContextView.setTitle(p2);
        return;
    }

    public void setTitleOptionalHint(boolean p2)
    {
        super.setTitleOptionalHint(p2);
        this.mContextView.setTitleOptional(p2);
        return;
    }
}
