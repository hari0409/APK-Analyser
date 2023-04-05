package androidx.appcompat.widget;
 class ScrollingTabContainerView$1 implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ScrollingTabContainerView this$0;
    final synthetic android.view.View val$tabView;

    ScrollingTabContainerView$1(androidx.appcompat.widget.ScrollingTabContainerView p1, android.view.View p2)
    {
        this.this$0 = p1;
        this.val$tabView = p2;
        return;
    }

    public void run()
    {
        this.this$0.smoothScrollTo((this.val$tabView.getLeft() - ((this.this$0.getWidth() - this.val$tabView.getWidth()) / 2)), 0);
        this.this$0.mTabSelector = 0;
        return;
    }
}
