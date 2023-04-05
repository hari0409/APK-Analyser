package androidx.appcompat.widget;
 class AppCompatSpinner$DropdownPopup$3 implements android.widget.PopupWindow$OnDismissListener {
    final synthetic androidx.appcompat.widget.AppCompatSpinner$DropdownPopup this$1;
    final synthetic android.view.ViewTreeObserver$OnGlobalLayoutListener val$layoutListener;

    AppCompatSpinner$DropdownPopup$3(androidx.appcompat.widget.AppCompatSpinner$DropdownPopup p1, android.view.ViewTreeObserver$OnGlobalLayoutListener p2)
    {
        this.this$1 = p1;
        this.val$layoutListener = p2;
        return;
    }

    public void onDismiss()
    {
        android.view.ViewTreeObserver v0 = this.this$1.this$0.getViewTreeObserver();
        if (v0 != null) {
            v0.removeGlobalOnLayoutListener(this.val$layoutListener);
        }
        return;
    }
}
