package androidx.appcompat.widget;
 class ScrollingTabContainerView$TabAdapter extends android.widget.BaseAdapter {
    final synthetic androidx.appcompat.widget.ScrollingTabContainerView this$0;

    ScrollingTabContainerView$TabAdapter(androidx.appcompat.widget.ScrollingTabContainerView p1)
    {
        this.this$0 = p1;
        return;
    }

    public int getCount()
    {
        return this.this$0.mTabLayout.getChildCount();
    }

    public Object getItem(int p2)
    {
        return ((androidx.appcompat.widget.ScrollingTabContainerView$TabView) this.this$0.mTabLayout.getChildAt(p2)).getTab();
    }

    public long getItemId(int p3)
    {
        return ((long) p3);
    }

    public android.view.View getView(int p4, android.view.View p5, android.view.ViewGroup p6)
    {
        if (p5 != null) {
            ((androidx.appcompat.widget.ScrollingTabContainerView$TabView) p5).bindTab(((androidx.appcompat.app.ActionBar$Tab) this.getItem(p4)));
        } else {
            p5 = this.this$0.createTabView(((androidx.appcompat.app.ActionBar$Tab) this.getItem(p4)), 1);
        }
        return p5;
    }
}
