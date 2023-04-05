package androidx.appcompat.view.menu;
 class MenuItemWrapperICS$CollapsibleActionViewWrapper extends android.widget.FrameLayout implements androidx.appcompat.view.CollapsibleActionView {
    final android.view.CollapsibleActionView mWrappedView;

    MenuItemWrapperICS$CollapsibleActionViewWrapper(android.view.View p2)
    {
        super(p2.getContext());
        super.mWrappedView = ((android.view.CollapsibleActionView) p2);
        super.addView(p2);
        return;
    }

    android.view.View getWrappedView()
    {
        return ((android.view.View) this.mWrappedView);
    }

    public void onActionViewCollapsed()
    {
        this.mWrappedView.onActionViewCollapsed();
        return;
    }

    public void onActionViewExpanded()
    {
        this.mWrappedView.onActionViewExpanded();
        return;
    }
}
