package androidx.appcompat.widget;
 class Toolbar$ExpandedActionViewMenuPresenter implements androidx.appcompat.view.menu.MenuPresenter {
    androidx.appcompat.view.menu.MenuItemImpl mCurrentExpandedItem;
    androidx.appcompat.view.menu.MenuBuilder mMenu;
    final synthetic androidx.appcompat.widget.Toolbar this$0;

    Toolbar$ExpandedActionViewMenuPresenter(androidx.appcompat.widget.Toolbar p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean collapseItemActionView(androidx.appcompat.view.menu.MenuBuilder p4, androidx.appcompat.view.menu.MenuItemImpl p5)
    {
        if ((this.this$0.mExpandedActionView instanceof androidx.appcompat.view.CollapsibleActionView)) {
            ((androidx.appcompat.view.CollapsibleActionView) this.this$0.mExpandedActionView).onActionViewCollapsed();
        }
        this.this$0.removeView(this.this$0.mExpandedActionView);
        this.this$0.removeView(this.this$0.mCollapseButtonView);
        this.this$0.mExpandedActionView = 0;
        this.this$0.addChildrenForExpandedActionView();
        this.mCurrentExpandedItem = 0;
        this.this$0.requestLayout();
        p5.setActionViewExpanded(0);
        return 1;
    }

    public boolean expandItemActionView(androidx.appcompat.view.menu.MenuBuilder p7, androidx.appcompat.view.menu.MenuItemImpl p8)
    {
        this.this$0.ensureCollapseButtonView();
        android.view.ViewGroup v0_1 = this.this$0.mCollapseButtonView.getParent();
        if (v0_1 != this.this$0) {
            if ((v0_1 instanceof android.view.ViewGroup)) {
                ((android.view.ViewGroup) v0_1).removeView(this.this$0.mCollapseButtonView);
            }
            this.this$0.addView(this.this$0.mCollapseButtonView);
        }
        this.this$0.mExpandedActionView = p8.getActionView();
        this.mCurrentExpandedItem = p8;
        android.view.ViewGroup v1_0 = this.this$0.mExpandedActionView.getParent();
        if (v1_0 != this.this$0) {
            if ((v1_0 instanceof android.view.ViewGroup)) {
                ((android.view.ViewGroup) v1_0).removeView(this.this$0.mExpandedActionView);
            }
            androidx.appcompat.widget.Toolbar$LayoutParams v2 = this.this$0.generateDefaultLayoutParams();
            v2.gravity = (8388611 | (this.this$0.mButtonGravity & 112));
            v2.mViewType = 2;
            this.this$0.mExpandedActionView.setLayoutParams(v2);
            this.this$0.addView(this.this$0.mExpandedActionView);
        }
        this.this$0.removeChildrenForExpandedActionView();
        this.this$0.requestLayout();
        p8.setActionViewExpanded(1);
        if ((this.this$0.mExpandedActionView instanceof androidx.appcompat.view.CollapsibleActionView)) {
            ((androidx.appcompat.view.CollapsibleActionView) this.this$0.mExpandedActionView).onActionViewExpanded();
        }
        return 1;
    }

    public boolean flagActionItems()
    {
        return 0;
    }

    public int getId()
    {
        return 0;
    }

    public androidx.appcompat.view.menu.MenuView getMenuView(android.view.ViewGroup p2)
    {
        return 0;
    }

    public void initForMenu(android.content.Context p3, androidx.appcompat.view.menu.MenuBuilder p4)
    {
        if ((this.mMenu != null) && (this.mCurrentExpandedItem != null)) {
            this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
        }
        this.mMenu = p4;
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p1, boolean p2)
    {
        return;
    }

    public void onRestoreInstanceState(android.os.Parcelable p1)
    {
        return;
    }

    public android.os.Parcelable onSaveInstanceState()
    {
        return 0;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p2)
    {
        return 0;
    }

    public void setCallback(androidx.appcompat.view.menu.MenuPresenter$Callback p1)
    {
        return;
    }

    public void updateMenuView(boolean p7)
    {
        if (this.mCurrentExpandedItem != null) {
            int v1 = 0;
            if (this.mMenu != null) {
                int v0 = this.mMenu.size();
                int v2 = 0;
                while (v2 < v0) {
                    if (this.mMenu.getItem(v2) != this.mCurrentExpandedItem) {
                        v2++;
                    } else {
                        v1 = 1;
                        break;
                    }
                }
            }
            if (v1 == 0) {
                this.collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
            }
        }
        return;
    }
}
