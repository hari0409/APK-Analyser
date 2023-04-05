package androidx.appcompat.widget;
 class ListPopupWindow$PopupDataSetObserver extends android.database.DataSetObserver {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$PopupDataSetObserver(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onChanged()
    {
        if (this.this$0.isShowing()) {
            this.this$0.show();
        }
        return;
    }

    public void onInvalidated()
    {
        this.this$0.dismiss();
        return;
    }
}
