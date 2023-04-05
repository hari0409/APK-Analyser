package androidx.appcompat.widget;
 class ActionMenuPresenter$OpenOverflowRunnable implements java.lang.Runnable {
    private androidx.appcompat.widget.ActionMenuPresenter$OverflowPopup mPopup;
    final synthetic androidx.appcompat.widget.ActionMenuPresenter this$0;

    public ActionMenuPresenter$OpenOverflowRunnable(androidx.appcompat.widget.ActionMenuPresenter p1, androidx.appcompat.widget.ActionMenuPresenter$OverflowPopup p2)
    {
        this.this$0 = p1;
        this.mPopup = p2;
        return;
    }

    public void run()
    {
        if (androidx.appcompat.widget.ActionMenuPresenter.access$300(this.this$0) != null) {
            androidx.appcompat.widget.ActionMenuPresenter.access$400(this.this$0).changeMenuMode();
        }
        android.view.View v0_1 = ((android.view.View) androidx.appcompat.widget.ActionMenuPresenter.access$500(this.this$0));
        if ((v0_1 != null) && ((v0_1.getWindowToken() != null) && (this.mPopup.tryShow()))) {
            this.this$0.mOverflowPopup = this.mPopup;
        }
        this.this$0.mPostedOpenRunnable = 0;
        return;
    }
}
