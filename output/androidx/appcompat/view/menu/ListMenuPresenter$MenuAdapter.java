package androidx.appcompat.view.menu;
 class ListMenuPresenter$MenuAdapter extends android.widget.BaseAdapter {
    private int mExpandedIndex;
    final synthetic androidx.appcompat.view.menu.ListMenuPresenter this$0;

    public ListMenuPresenter$MenuAdapter(androidx.appcompat.view.menu.ListMenuPresenter p2)
    {
        this.this$0 = p2;
        this.mExpandedIndex = -1;
        this.findExpandedIndex();
        return;
    }

    void findExpandedIndex()
    {
        androidx.appcompat.view.menu.MenuItemImpl v1 = this.this$0.mMenu.getExpandedItem();
        if (v1 == null) {
            this.mExpandedIndex = -1;
        } else {
            java.util.ArrayList v4 = this.this$0.mMenu.getNonActionItems();
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

    public int getCount()
    {
        int v0 = (this.this$0.mMenu.getNonActionItems().size() - this.this$0.mItemIndexOffset);
        if (this.mExpandedIndex >= 0) {
            v0--;
        }
        return v0;
    }

    public androidx.appcompat.view.menu.MenuItemImpl getItem(int p3)
    {
        java.util.ArrayList v0 = this.this$0.mMenu.getNonActionItems();
        int v3_1 = (p3 + this.this$0.mItemIndexOffset);
        if ((this.mExpandedIndex >= 0) && (v3_1 >= this.mExpandedIndex)) {
            v3_1++;
        }
        return ((androidx.appcompat.view.menu.MenuItemImpl) v0.get(v3_1));
    }

    public bridge synthetic Object getItem(int p2)
    {
        return this.getItem(p2);
    }

    public long getItemId(int p3)
    {
        return ((long) p3);
    }

    public android.view.View getView(int p5, android.view.View p6, android.view.ViewGroup p7)
    {
        if (p6 == null) {
            p6 = this.this$0.mInflater.inflate(this.this$0.mItemLayoutRes, p7, 0);
        }
        ((androidx.appcompat.view.menu.MenuView$ItemView) p6).initialize(this.getItem(p5), 0);
        return p6;
    }

    public void notifyDataSetChanged()
    {
        this.findExpandedIndex();
        super.notifyDataSetChanged();
        return;
    }
}
