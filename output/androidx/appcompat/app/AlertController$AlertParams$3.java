package androidx.appcompat.app;
 class AlertController$AlertParams$3 implements android.widget.AdapterView$OnItemClickListener {
    final synthetic androidx.appcompat.app.AlertController$AlertParams this$0;
    final synthetic androidx.appcompat.app.AlertController val$dialog;

    AlertController$AlertParams$3(androidx.appcompat.app.AlertController$AlertParams p1, androidx.appcompat.app.AlertController p2)
    {
        this.this$0 = p1;
        this.val$dialog = p2;
        return;
    }

    public void onItemClick(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        this.this$0.mOnClickListener.onClick(this.val$dialog.mDialog, p5);
        if (!this.this$0.mIsSingleChoice) {
            this.val$dialog.mDialog.dismiss();
        }
        return;
    }
}
