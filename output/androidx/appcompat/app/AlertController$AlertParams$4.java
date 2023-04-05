package androidx.appcompat.app;
 class AlertController$AlertParams$4 implements android.widget.AdapterView$OnItemClickListener {
    final synthetic androidx.appcompat.app.AlertController$AlertParams this$0;
    final synthetic androidx.appcompat.app.AlertController val$dialog;
    final synthetic androidx.appcompat.app.AlertController$RecycleListView val$listView;

    AlertController$AlertParams$4(androidx.appcompat.app.AlertController$AlertParams p1, androidx.appcompat.app.AlertController$RecycleListView p2, androidx.appcompat.app.AlertController p3)
    {
        this.this$0 = p1;
        this.val$listView = p2;
        this.val$dialog = p3;
        return;
    }

    public void onItemClick(android.widget.AdapterView p4, android.view.View p5, int p6, long p7)
    {
        if (this.this$0.mCheckedItems != null) {
            this.this$0.mCheckedItems[p6] = this.val$listView.isItemChecked(p6);
        }
        this.this$0.mOnCheckboxClickListener.onClick(this.val$dialog.mDialog, p6, this.val$listView.isItemChecked(p6));
        return;
    }
}
