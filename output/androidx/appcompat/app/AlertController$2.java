package androidx.appcompat.app;
 class AlertController$2 implements androidx.core.widget.NestedScrollView$OnScrollChangeListener {
    final synthetic androidx.appcompat.app.AlertController this$0;
    final synthetic android.view.View val$bottom;
    final synthetic android.view.View val$top;

    AlertController$2(androidx.appcompat.app.AlertController p1, android.view.View p2, android.view.View p3)
    {
        this.this$0 = p1;
        this.val$top = p2;
        this.val$bottom = p3;
        return;
    }

    public void onScrollChange(androidx.core.widget.NestedScrollView p3, int p4, int p5, int p6, int p7)
    {
        androidx.appcompat.app.AlertController.manageScrollIndicators(p3, this.val$top, this.val$bottom);
        return;
    }
}
