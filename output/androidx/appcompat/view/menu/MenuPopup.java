package androidx.appcompat.view.menu;
abstract class MenuPopup implements androidx.appcompat.view.menu.ShowableListMenu, androidx.appcompat.view.menu.MenuPresenter, android.widget.AdapterView$OnItemClickListener {
    private android.graphics.Rect mEpicenterBounds;

    MenuPopup()
    {
        return;
    }

    protected static int measureIndividualMenuWidth(android.widget.ListAdapter p10, android.view.ViewGroup p11, android.content.Context p12, int p13)
    {
        int v6 = 0;
        android.view.View v4 = 0;
        int v3 = 0;
        int v8 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
        int v1 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
        int v0 = p10.getCount();
        int v2 = 0;
        while (v2 < v0) {
            int v7 = p10.getItemViewType(v2);
            if (v7 != v3) {
                v3 = v7;
                v4 = 0;
            }
            if (p11 == null) {
                p11 = new android.widget.FrameLayout(p12);
            }
            v4 = p10.getView(v2, v4, p11);
            v4.measure(v8, v1);
            int v5 = v4.getMeasuredWidth();
            if (v5 < p13) {
                if (v5 > v6) {
                    v6 = v5;
                }
                v2++;
            }
            return p13;
        }
        p13 = v6;
        return p13;
    }

    protected static boolean shouldPreserveIconSpacing(androidx.appcompat.view.menu.MenuBuilder p5)
    {
        int v3 = 0;
        int v1 = p5.size();
        int v2 = 0;
        while (v2 < v1) {
            android.view.MenuItem v0 = p5.getItem(v2);
            if ((!v0.isVisible()) || (v0.getIcon() == null)) {
                v2++;
            } else {
                v3 = 1;
                break;
            }
        }
        return v3;
    }

    protected static androidx.appcompat.view.menu.MenuAdapter toMenuAdapter(android.widget.ListAdapter p1)
    {
        androidx.appcompat.view.menu.MenuAdapter v0_1;
        if (!(p1 instanceof android.widget.HeaderViewListAdapter)) {
            v0_1 = ((androidx.appcompat.view.menu.MenuAdapter) p1);
        } else {
            v0_1 = ((androidx.appcompat.view.menu.MenuAdapter) ((android.widget.HeaderViewListAdapter) p1).getWrappedAdapter());
        }
        return v0_1;
    }

    public abstract void addMenu();

    protected boolean closeMenuOnSubMenuOpened()
    {
        return 1;
    }

    public boolean collapseItemActionView(androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 0;
    }

    public boolean expandItemActionView(androidx.appcompat.view.menu.MenuBuilder p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return 0;
    }

    public android.graphics.Rect getEpicenterBounds()
    {
        return this.mEpicenterBounds;
    }

    public int getId()
    {
        return 0;
    }

    public androidx.appcompat.view.menu.MenuView getMenuView(android.view.ViewGroup p3)
    {
        throw new UnsupportedOperationException("MenuPopups manage their own views");
    }

    public void initForMenu(android.content.Context p1, androidx.appcompat.view.menu.MenuBuilder p2)
    {
        return;
    }

    public void onItemClick(android.widget.AdapterView p6, android.view.View p7, int p8, long p9)
    {
        int v3_1;
        android.widget.ListAdapter v0_1 = ((android.widget.ListAdapter) p6.getAdapter());
        if (!this.closeMenuOnSubMenuOpened()) {
            v3_1 = 4;
        } else {
            v3_1 = 0;
        }
        androidx.appcompat.view.menu.MenuPopup.toMenuAdapter(v0_1).mAdapterMenu.performItemAction(((android.view.MenuItem) v0_1.getItem(p8)), this, v3_1);
        return;
    }

    public abstract void setAnchorView();

    public void setEpicenterBounds(android.graphics.Rect p1)
    {
        this.mEpicenterBounds = p1;
        return;
    }

    public abstract void setForceShowIcon();

    public abstract void setGravity();

    public abstract void setHorizontalOffset();

    public abstract void setOnDismissListener();

    public abstract void setShowTitle();

    public abstract void setVerticalOffset();
}
