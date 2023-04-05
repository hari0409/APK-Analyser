package androidx.appcompat.widget;
 class PopupMenu$2 implements android.widget.PopupWindow$OnDismissListener {
    final synthetic androidx.appcompat.widget.PopupMenu this$0;

    PopupMenu$2(androidx.appcompat.widget.PopupMenu p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onDismiss()
    {
        if (this.this$0.mOnDismissListener != null) {
            this.this$0.mOnDismissListener.onDismiss(this.this$0);
        }
        return;
    }
}
