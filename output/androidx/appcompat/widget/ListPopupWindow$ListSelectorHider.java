package androidx.appcompat.widget;
 class ListPopupWindow$ListSelectorHider implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$ListSelectorHider(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        this.this$0.clearListSelection();
        return;
    }
}
