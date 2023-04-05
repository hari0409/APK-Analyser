package androidx.appcompat.widget;
 class AppCompatSpinner$DropdownPopup$1 implements android.widget.AdapterView$OnItemClickListener {
    final synthetic androidx.appcompat.widget.AppCompatSpinner$DropdownPopup this$1;
    final synthetic androidx.appcompat.widget.AppCompatSpinner val$this$0;

    AppCompatSpinner$DropdownPopup$1(androidx.appcompat.widget.AppCompatSpinner$DropdownPopup p1, androidx.appcompat.widget.AppCompatSpinner p2)
    {
        this.this$1 = p1;
        this.val$this$0 = p2;
        return;
    }

    public void onItemClick(android.widget.AdapterView p5, android.view.View p6, int p7, long p8)
    {
        this.this$1.this$0.setSelection(p7);
        if (this.this$1.this$0.getOnItemClickListener() != null) {
            this.this$1.this$0.performItemClick(p6, p7, this.this$1.mAdapter.getItemId(p7));
        }
        this.this$1.dismiss();
        return;
    }
}
