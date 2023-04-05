package androidx.appcompat.widget;
 class ListPopupWindow$ResizePopupRunnable implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$ResizePopupRunnable(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        if ((this.this$0.mDropDownList != null) && ((androidx.core.view.ViewCompat.isAttachedToWindow(this.this$0.mDropDownList)) && ((this.this$0.mDropDownList.getCount() > this.this$0.mDropDownList.getChildCount()) && (this.this$0.mDropDownList.getChildCount() <= this.this$0.mListItemExpandMaximum)))) {
            this.this$0.mPopup.setInputMethodMode(2);
            this.this$0.show();
        }
        return;
    }
}
