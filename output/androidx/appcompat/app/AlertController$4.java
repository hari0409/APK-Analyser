package androidx.appcompat.app;
 class AlertController$4 implements android.widget.AbsListView$OnScrollListener {
    final synthetic androidx.appcompat.app.AlertController this$0;
    final synthetic android.view.View val$bottom;
    final synthetic android.view.View val$top;

    AlertController$4(androidx.appcompat.app.AlertController p1, android.view.View p2, android.view.View p3)
    {
        this.this$0 = p1;
        this.val$top = p2;
        this.val$bottom = p3;
        return;
    }

    public void onScroll(android.widget.AbsListView p3, int p4, int p5, int p6)
    {
        androidx.appcompat.app.AlertController.manageScrollIndicators(p3, this.val$top, this.val$bottom);
        return;
    }

    public void onScrollStateChanged(android.widget.AbsListView p1, int p2)
    {
        return;
    }
}
