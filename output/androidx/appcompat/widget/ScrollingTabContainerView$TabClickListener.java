package androidx.appcompat.widget;
 class ScrollingTabContainerView$TabClickListener implements android.view.View$OnClickListener {
    final synthetic androidx.appcompat.widget.ScrollingTabContainerView this$0;

    ScrollingTabContainerView$TabClickListener(androidx.appcompat.widget.ScrollingTabContainerView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p6)
    {
        ((androidx.appcompat.widget.ScrollingTabContainerView$TabView) p6).getTab().select();
        int v2 = this.this$0.mTabLayout.getChildCount();
        int v1 = 0;
        while (v1 < v2) {
            int v4_2;
            android.view.View v0 = this.this$0.mTabLayout.getChildAt(v1);
            if (v0 != p6) {
                v4_2 = 0;
            } else {
                v4_2 = 1;
            }
            v0.setSelected(v4_2);
            v1++;
        }
        return;
    }
}
