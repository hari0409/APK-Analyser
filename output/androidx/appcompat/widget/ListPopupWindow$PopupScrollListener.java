package androidx.appcompat.widget;
 class ListPopupWindow$PopupScrollListener implements android.widget.AbsListView$OnScrollListener {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$PopupScrollListener(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onScroll(android.widget.AbsListView p1, int p2, int p3, int p4)
    {
        return;
    }

    public void onScrollStateChanged(android.widget.AbsListView p3, int p4)
    {
        if ((p4 == 1) && ((!this.this$0.isInputMethodNotNeeded()) && (this.this$0.mPopup.getContentView() != null))) {
            this.this$0.mHandler.removeCallbacks(this.this$0.mResizePopupRunnable);
            this.this$0.mResizePopupRunnable.run();
        }
        return;
    }
}
