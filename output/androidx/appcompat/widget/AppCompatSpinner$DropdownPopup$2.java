package androidx.appcompat.widget;
 class AppCompatSpinner$DropdownPopup$2 implements android.view.ViewTreeObserver$OnGlobalLayoutListener {
    final synthetic androidx.appcompat.widget.AppCompatSpinner$DropdownPopup this$1;

    AppCompatSpinner$DropdownPopup$2(androidx.appcompat.widget.AppCompatSpinner$DropdownPopup p1)
    {
        this.this$1 = p1;
        return;
    }

    public void onGlobalLayout()
    {
        if (this.this$1.isVisibleToUser(this.this$1.this$0)) {
            this.this$1.computeContentWidth();
            androidx.appcompat.widget.AppCompatSpinner$DropdownPopup.access$001(this.this$1);
        } else {
            this.this$1.dismiss();
        }
        return;
    }
}
