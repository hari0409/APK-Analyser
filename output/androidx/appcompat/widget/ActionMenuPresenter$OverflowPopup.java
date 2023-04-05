package androidx.appcompat.widget;
 class ActionMenuPresenter$OverflowPopup extends androidx.appcompat.view.menu.MenuPopupHelper {
    final synthetic androidx.appcompat.widget.ActionMenuPresenter this$0;

    public ActionMenuPresenter$OverflowPopup(androidx.appcompat.widget.ActionMenuPresenter p7, android.content.Context p8, androidx.appcompat.view.menu.MenuBuilder p9, android.view.View p10, boolean p11)
    {
        this.this$0 = p7;
        super(p8, p9, p10, p11, androidx.appcompat.R$attr.actionOverflowMenuStyle);
        super.setGravity(8388613);
        super.setPresenterCallback(p7.mPopupPresenterCallback);
        return;
    }

    protected void onDismiss()
    {
        if (androidx.appcompat.widget.ActionMenuPresenter.access$000(this.this$0) != null) {
            androidx.appcompat.widget.ActionMenuPresenter.access$100(this.this$0).close();
        }
        this.this$0.mOverflowPopup = 0;
        super.onDismiss();
        return;
    }
}
