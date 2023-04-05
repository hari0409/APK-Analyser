package androidx.appcompat.app;
 class AlertController$3 implements java.lang.Runnable {
    final synthetic androidx.appcompat.app.AlertController this$0;
    final synthetic android.view.View val$bottom;
    final synthetic android.view.View val$top;

    AlertController$3(androidx.appcompat.app.AlertController p1, android.view.View p2, android.view.View p3)
    {
        this.this$0 = p1;
        this.val$top = p2;
        this.val$bottom = p3;
        return;
    }

    public void run()
    {
        androidx.appcompat.app.AlertController.manageScrollIndicators(this.this$0.mScrollView, this.val$top, this.val$bottom);
        return;
    }
}
