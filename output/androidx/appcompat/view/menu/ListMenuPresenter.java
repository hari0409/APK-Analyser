package androidx.appcompat.view.menu;
public class ListMenuPresenter implements androidx.appcompat.view.menu.MenuPresenter, android.widget.AdapterView$OnItemClickListener {
    private static final String TAG = "ListMenuPresenter";
    public static final String VIEWS_TAG = "android:menu:list";
    androidx.appcompat.view.menu.ListMenuPresenter$MenuAdapter mAdapter;
    private androidx.appcompat.view.menu.MenuPresenter$Callback mCallback;
    android.content.Context mContext;
    private int mId;
    android.view.LayoutInflater mInflater;
    int mItemIndexOffset;
    int mItemLayoutRes;
    androidx.appcompat.view.menu.MenuBuilder mMenu;
    androidx.appcompat.view.menu.ExpandedMenuView mMenuView;
    int mThemeRes;

    public ListMenuPresenter(int p1, int p2)
    {
        this.mItemLayoutRes = p1;
        this.mThemeRes = p2;
        return;
    }

    public ListMenuPresenter(android.content.Context p2, int p3)
    {
        this(p3, 0);
        this.mContext = p2;
        this.mInflater = android.view.LayoutInflater.from(this.mContext);
        return;
    }

    public boolean collapseItemActionView(androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 0;
    }

    public boolean expandItemActionView(androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 0;
    }

    public boolean flagActionItems()
    {
        return 0;
    }

    public android.widget.ListAdapter getAdapter()
    {
        if (this.mAdapter == null) {
            this.mAdapter = new androidx.appcompat.view.menu.ListMenuPresenter$MenuAdapter(this);
        }
        return this.mAdapter;
    }

    public int getId()
    {
        return this.mId;
    }

    int getItemIndexOffset()
    {
        return this.mItemIndexOffset;
    }

    public androidx.appcompat.view.menu.MenuView getMenuView(android.view.ViewGroup p4)
    {
        if (this.mMenuView == null) {
            this.mMenuView = ((androidx.appcompat.view.menu.ExpandedMenuView) this.mInflater.inflate(androidx.appcompat.R$layout.abc_expanded_menu_layout, p4, 0));
            if (this.mAdapter == null) {
                this.mAdapter = new androidx.appcompat.view.menu.ListMenuPresenter$MenuAdapter(this);
            }
            this.mMenuView.setAdapter(this.mAdapter);
            this.mMenuView.setOnItemClickListener(this);
        }
        return this.mMenuView;
    }

    public void initForMenu(android.content.Context p3, androidx.appcompat.view.menu.MenuBuilder p4)
    {
        if (this.mThemeRes == 0) {
            if (this.mContext != null) {
                this.mContext = p3;
                if (this.mInflater == null) {
                    this.mInflater = android.view.LayoutInflater.from(this.mContext);
                }
            }
        } else {
            this.mContext = new android.view.ContextThemeWrapper(p3, this.mThemeRes);
            this.mInflater = android.view.LayoutInflater.from(this.mContext);
        }
        this.mMenu = p4;
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
        return;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p2, boolean p3)
    {
        if (this.mCallback != null) {
            this.mCallback.onCloseMenu(p2, p3);
        }
        return;
    }

    public void onItemClick(android.widget.AdapterView p4, android.view.View p5, int p6, long p7)
    {
        this.mMenu.performItemAction(this.mAdapter.getItem(p6), this, 0);
        return;
    }

    public void onRestoreInstanceState(android.os.Parcelable p1)
    {
        this.restoreHierarchyState(((android.os.Bundle) p1));
        return;
    }

    public android.os.Parcelable onSaveInstanceState()
    {
        android.os.Bundle v0_1;
        if (this.mMenuView != null) {
            v0_1 = new android.os.Bundle();
            this.saveHierarchyState(v0_1);
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p3)
    {
        int v0_1;
        if (p3.hasVisibleItems()) {
            new androidx.appcompat.view.menu.MenuDialogHelper(p3).show(0);
            if (this.mCallback != null) {
                this.mCallback.onOpenSubMenu(p3);
            }
            v0_1 = 1;
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    public void restoreHierarchyState(android.os.Bundle p3)
    {
        android.util.SparseArray v0 = p3.getSparseParcelableArray("android:menu:list");
        if (v0 != null) {
            this.mMenuView.restoreHierarchyState(v0);
        }
        return;
    }

    public void saveHierarchyState(android.os.Bundle p3)
    {
        android.util.SparseArray v0_1 = new android.util.SparseArray();
        if (this.mMenuView != null) {
            this.mMenuView.saveHierarchyState(v0_1);
        }
        p3.putSparseParcelableArray("android:menu:list", v0_1);
        return;
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

    public void setItemIndexOffset(int p2)
    {
        this.mItemIndexOffset = p2;
        if (this.mMenuView != null) {
            this.updateMenuView(0);
        }
        return;
    }

    public void updateMenuView(boolean p2)
    {
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
        return;
    }
}
