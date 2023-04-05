package androidx.appcompat.app;
 class AlertController$AlertParams$1 extends android.widget.ArrayAdapter {
    final synthetic androidx.appcompat.app.AlertController$AlertParams this$0;
    final synthetic androidx.appcompat.app.AlertController$RecycleListView val$listView;

    AlertController$AlertParams$1(androidx.appcompat.app.AlertController$AlertParams p1, android.content.Context p2, int p3, int p4, CharSequence[] p5, androidx.appcompat.app.AlertController$RecycleListView p6)
    {
        this.this$0 = p1;
        this.val$listView = p6;
        super(p2, p3, p4, p5);
        return;
    }

    public android.view.View getView(int p5, android.view.View p6, android.view.ViewGroup p7)
    {
        android.view.View v1 = super.getView(p5, p6, p7);
        if ((this.this$0.mCheckedItems != null) && (this.this$0.mCheckedItems[p5])) {
            this.val$listView.setItemChecked(p5, 1);
        }
        return v1;
    }
}
