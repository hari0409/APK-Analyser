package androidx.appcompat.widget;
 class ListPopupWindow$PopupTouchInterceptor implements android.view.View$OnTouchListener {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$PopupTouchInterceptor(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onTouch(android.view.View p9, android.view.MotionEvent p10)
    {
        int v0 = p10.getAction();
        int v1 = ((int) p10.getX());
        int v2 = ((int) p10.getY());
        if ((v0 != 0) || ((this.this$0.mPopup == null) || ((!this.this$0.mPopup.isShowing()) || ((v1 < 0) || ((v1 >= this.this$0.mPopup.getWidth()) || ((v2 < 0) || (v2 >= this.this$0.mPopup.getHeight()))))))) {
            if (v0 == 1) {
                this.this$0.mHandler.removeCallbacks(this.this$0.mResizePopupRunnable);
            }
        } else {
            this.this$0.mHandler.postDelayed(this.this$0.mResizePopupRunnable, 250);
        }
        return 0;
    }
}
