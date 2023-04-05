package androidx.appcompat.widget;
 class ToolbarWidgetWrapper$1 implements android.view.View$OnClickListener {
    final androidx.appcompat.view.menu.ActionMenuItem mNavItem;
    final synthetic androidx.appcompat.widget.ToolbarWidgetWrapper this$0;

    ToolbarWidgetWrapper$1(androidx.appcompat.widget.ToolbarWidgetWrapper p8)
    {
        this.this$0 = p8;
        this.mNavItem = new androidx.appcompat.view.menu.ActionMenuItem(this.this$0.mToolbar.getContext(), 0, 16908332, 0, 0, this.this$0.mTitle);
        return;
    }

    public void onClick(android.view.View p4)
    {
        if ((this.this$0.mWindowCallback != null) && (this.this$0.mMenuPrepared)) {
            this.this$0.mWindowCallback.onMenuItemSelected(0, this.mNavItem);
        }
        return;
    }
}
