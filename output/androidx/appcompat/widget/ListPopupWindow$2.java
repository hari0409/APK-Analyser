package androidx.appcompat.widget;
 class ListPopupWindow$2 implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$2(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        android.view.View v0 = this.this$0.getAnchorView();
        if ((v0 != null) && (v0.getWindowToken() != null)) {
            this.this$0.show();
        }
        return;
    }
}
