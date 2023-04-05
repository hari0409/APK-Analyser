package androidx.appcompat.app;
 class AlertController$5 implements java.lang.Runnable {
    final synthetic androidx.appcompat.app.AlertController this$0;
    final synthetic android.view.View val$bottom;
    final synthetic android.view.View val$top;

    AlertController$5(androidx.appcompat.app.AlertController p1, android.view.View p2, android.view.View p3)
    {
        this.this$0 = p1;
        this.val$top = p2;
        this.val$bottom = p3;
        return;
    }

    public void run()
    {
        androidx.appcompat.app.AlertController.manageScrollIndicators(this.this$0.mListView, this.val$top, this.val$bottom);
        return;
    }
}
