package androidx.appcompat.widget;
 class ActivityChooserView$2 implements android.view.ViewTreeObserver$OnGlobalLayoutListener {
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$2(androidx.appcompat.widget.ActivityChooserView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onGlobalLayout()
    {
        if (this.this$0.isShowingPopup()) {
            if (this.this$0.isShown()) {
                this.this$0.getListPopupWindow().show();
                if (this.this$0.mProvider != null) {
                    this.this$0.mProvider.subUiVisibilityChanged(1);
                }
            } else {
                this.this$0.getListPopupWindow().dismiss();
            }
        }
        return;
    }
}
