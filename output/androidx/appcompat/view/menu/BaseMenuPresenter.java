package androidx.appcompat.view.menu;
public abstract class BaseMenuPresenter implements androidx.appcompat.view.menu.MenuPresenter {
    private androidx.appcompat.view.menu.MenuPresenter$Callback mCallback;
    protected android.content.Context mContext;
    private int mId;
    protected android.view.LayoutInflater mInflater;
    private int mItemLayoutRes;
    protected androidx.appcompat.view.menu.MenuBuilder mMenu;
    private int mMenuLayoutRes;
    protected androidx.appcompat.view.menu.MenuView mMenuView;
    protected android.content.Context mSystemContext;
    protected android.view.LayoutInflater mSystemInflater;

    public BaseMenuPresenter(android.content.Context p2, int p3, int p4)
    {
        this.mSystemContext = p2;
        this.mSystemInflater = android.view.LayoutInflater.from(p2);
        this.mMenuLayoutRes = p3;
        this.mItemLayoutRes = p4;
        return;
    }

    protected void addItemView(android.view.View p3, int p4)
    {
        android.view.ViewGroup v0_1 = ((android.view.ViewGroup) p3.getParent());
        if (v0_1 != null) {
            v0_1.removeView(p3);
        }
        ((android.view.ViewGroup) this.mMenuView).addView(p3, p4);
        return;
    }

    public abstract void bindItemView();

    public boolean collapseItemActionView(androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 0;
    }

    public androidx.appcompat.view.menu.MenuView$ItemView createItemView(android.view.ViewGroup p4)
    {
        return ((androidx.appcompat.view.menu.MenuView$ItemView) this.mSystemInflater.inflate(this.mItemLayoutRes, p4, 0));
    }

    public boolean expandItemActionView(androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 0;
    }

    protected boolean filterLeftoverView(android.view.ViewGroup p2, int p3)
    {
        p2.removeViewAt(p3);
        return 1;
    }

    public boolean flagActionItems()
    {
        return 0;
    }

    public androidx.appcompat.view.menu.MenuPresenter$Callback getCallback()
    {
        return this.mCallback;
    }

    public int getId()
    {
        return this.mId;
    }

    public android.view.View getItemView(androidx.appcompat.view.menu.MenuItemImpl p3, android.view.View p4, android.view.ViewGroup p5)
    {
        android.view.View v0_0;
        if (!(p4 instanceof androidx.appcompat.view.menu.MenuView$ItemView)) {
            v0_0 = this.createItemView(p5);
        } else {
            v0_0 = ((androidx.appcompat.view.menu.MenuView$ItemView) p4);
        }
        this.bindItemView(p3, v0_0);
        return ((android.view.View) v0_0);
    }

    public androidx.appcompat.view.menu.MenuView getMenuView(android.view.ViewGroup p4)
    {
        if (this.mMenuView == null) {
            this.mMenuView = ((androidx.appcompat.view.menu.MenuView) this.mSystemInflater.inflate(this.mMenuLayoutRes, p4, 0));
            this.mMenuView.initialize(this.mMenu);
            this.updateMenuView(1);
        }
        return this.mMenuView;
    }

    public void initForMenu(android.content.Context p2, androidx.appcompat.view.menu.MenuBuilder p3)
    {
        this.mContext = p2;
        this.mInflater = android.view.LayoutInflater.from(this.mContext);
        this.mMenu = p3;
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p2, boolean p3)
    {
        if (this.mCallback != null) {
            this.mCallback.onCloseMenu(p2, p3);
        }
        return;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p2)
    {
        int v0_1;
        if (this.mCallback == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mCallback.onOpenSubMenu(p2);
        }
        return v0_1;
    }

    public void setCallback(androidx.appcompat.view.menu.MenuPresenter$Callback p1)
    {
        this.mCallback = p1;
        return;
    }

    public void setId(int p1)
    {
        this.mId = p1;
        return;
    }

    public boolean shouldIncludeItem(int p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 1;
    }

    public void updateMenuView(boolean p11)
    {
        android.view.ViewGroup v7_1 = ((android.view.ViewGroup) this.mMenuView);
        if (v7_1 != null) {
            int v0 = 0;
            if (this.mMenu != null) {
                this.mMenu.flagActionItems();
                java.util.ArrayList v8 = this.mMenu.getVisibleItems();
                int v4 = v8.size();
                int v2 = 0;
                while (v2 < v4) {
                    androidx.appcompat.view.menu.MenuItemImpl v3_1 = ((androidx.appcompat.view.menu.MenuItemImpl) v8.get(v2));
                    if (this.shouldIncludeItem(v0, v3_1)) {
                        int v6;
                        android.view.View v1 = v7_1.getChildAt(v0);
                        if (!(v1 instanceof androidx.appcompat.view.menu.MenuView$ItemView)) {
                            v6 = 0;
                        } else {
                            v6 = ((androidx.appcompat.view.menu.MenuView$ItemView) v1).getItemData();
                        }
                        android.view.View v5 = this.getItemView(v3_1, v1, v7_1);
                        if (v3_1 != v6) {
                            v5.setPressed(0);
                            v5.jumpDrawablesToCurrentState();
                        }
                        if (v5 != v1) {
                            this.addItemView(v5, v0);
                        }
                        v0++;
                    }
                    v2++;
                }
            }
            while (v0 < v7_1.getChildCount()) {
                if (!this.filterLeftoverView(v7_1, v0)) {
                    v0++;
                }
            }
        }
        return;
    }
}
