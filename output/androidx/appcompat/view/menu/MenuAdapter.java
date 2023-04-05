package androidx.appcompat.view.menu;
public class MenuAdapter extends android.widget.BaseAdapter {
    androidx.appcompat.view.menu.MenuBuilder mAdapterMenu;
    private int mExpandedIndex;
    private boolean mForceShowIcon;
    private final android.view.LayoutInflater mInflater;
    private final int mItemLayoutRes;
    private final boolean mOverflowOnly;

    public MenuAdapter(androidx.appcompat.view.menu.MenuBuilder p2, android.view.LayoutInflater p3, boolean p4, int p5)
    {
        this.mExpandedIndex = -1;
        this.mOverflowOnly = p4;
        this.mInflater = p3;
        this.mAdapterMenu = p2;
        this.mItemLayoutRes = p5;
        this.findExpandedIndex();
        return;
    }

    void findExpandedIndex()
    {
        androidx.appcompat.view.menu.MenuItemImpl v1 = this.mAdapterMenu.getExpandedItem();
        if (v1 == null) {
            this.mExpandedIndex = -1;
        } else {
            java.util.ArrayList v4 = this.mAdapterMenu.getNonActionItems();
            int v0 = v4.size();
            int v2 = 0;
            while (v2 < v0) {
                if (((androidx.appcompat.view.menu.MenuItemImpl) v4.get(v2)) != v1) {
                    v2++;
                } else {
                    this.mExpandedIndex = v2;
                }
            }
        }
        return;
    }

    public androidx.appcompat.view.menu.MenuBuilder getAdapterMenu()
    {
        return this.mAdapterMenu;
    }

    public int getCount()
    {
        java.util.ArrayList v0;
        if (!this.mOverflowOnly) {
            v0 = this.mAdapterMenu.getVisibleItems();
        } else {
            v0 = this.mAdapterMenu.getNonActionItems();
        }
        int v1_2;
        if (this.mExpandedIndex >= 0) {
            v1_2 = (v0.size() - 1);
        } else {
            v1_2 = v0.size();
        }
        return v1_2;
    }

    public boolean getForceShowIcon()
    {
        return this.mForceShowIcon;
    }

    public androidx.appcompat.view.menu.MenuItemImpl getItem(int p3)
    {
        java.util.ArrayList v0;
        if (!this.mOverflowOnly) {
            v0 = this.mAdapterMenu.getVisibleItems();
        } else {
            v0 = this.mAdapterMenu.getNonActionItems();
        }
        if ((this.mExpandedIndex >= 0) && (p3 >= this.mExpandedIndex)) {
            p3++;
        }
        return ((androidx.appcompat.view.menu.MenuItemImpl) v0.get(p3));
    }

    public bridge synthetic Object getItem(int p2)
    {
        return this.getItem(p2);
    }

    public long getItemId(int p3)
    {
        return ((long) p3);
    }

    public android.view.View getView(int p8, android.view.View p9, android.view.ViewGroup p10)
    {
        if (p9 == null) {
            p9 = this.mInflater.inflate(this.mItemLayoutRes, p10, 0);
        }
        int v2;
        int v0 = this.getItem(p8).getGroupId();
        if ((p8 - 1) < 0) {
            v2 = v0;
        } else {
            v2 = this.getItem((p8 - 1)).getGroupId();
        }
        if ((!this.mAdapterMenu.isGroupDividerEnabled()) || (v0 == v2)) {
            int v4_2 = 0;
        } else {
            v4_2 = 1;
        }
        ((androidx.appcompat.view.menu.ListMenuItemView) p9).setGroupDividerEnabled(v4_2);
        if (this.mForceShowIcon) {
            ((androidx.appcompat.view.menu.ListMenuItemView) p9).setForceShowIcon(1);
        }
        ((androidx.appcompat.view.menu.MenuView$ItemView) p9).initialize(this.getItem(p8), 0);
        return p9;
    }

    public void notifyDataSetChanged()
    {
        this.findExpandedIndex();
        super.notifyDataSetChanged();
        return;
    }

    public void setForceShowIcon(boolean p1)
    {
        this.mForceShowIcon = p1;
        return;
    }
}
