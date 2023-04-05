package androidx.appcompat.app;
 class AlertController$AlertParams$2 extends android.widget.CursorAdapter {
    private final int mIsCheckedIndex;
    private final int mLabelIndex;
    final synthetic androidx.appcompat.app.AlertController$AlertParams this$0;
    final synthetic androidx.appcompat.app.AlertController val$dialog;
    final synthetic androidx.appcompat.app.AlertController$RecycleListView val$listView;

    AlertController$AlertParams$2(androidx.appcompat.app.AlertController$AlertParams p3, android.content.Context p4, android.database.Cursor p5, boolean p6, androidx.appcompat.app.AlertController$RecycleListView p7, androidx.appcompat.app.AlertController p8)
    {
        this.this$0 = p3;
        this.val$listView = p7;
        this.val$dialog = p8;
        super(p4, p5, p6);
        android.database.Cursor v0 = super.getCursor();
        super.mLabelIndex = v0.getColumnIndexOrThrow(super.this$0.mLabelColumn);
        super.mIsCheckedIndex = v0.getColumnIndexOrThrow(super.this$0.mIsCheckedColumn);
        return;
    }

    public void bindView(android.view.View p6, android.content.Context p7, android.database.Cursor p8)
    {
        int v1 = 1;
        ((android.widget.CheckedTextView) p6.findViewById(16908308)).setText(p8.getString(this.mLabelIndex));
        androidx.appcompat.app.AlertController$RecycleListView v2_3 = this.val$listView;
        int v3 = p8.getPosition();
        if (p8.getInt(this.mIsCheckedIndex) != 1) {
            v1 = 0;
        }
        v2_3.setItemChecked(v3, v1);
        return;
    }

    public android.view.View newView(android.content.Context p4, android.database.Cursor p5, android.view.ViewGroup p6)
    {
        return this.this$0.mInflater.inflate(this.val$dialog.mMultiChoiceItemLayout, p6, 0);
    }
}
