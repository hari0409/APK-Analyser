package androidx.appcompat.widget;
 class SearchView$3 implements android.view.View$OnFocusChangeListener {
    final synthetic androidx.appcompat.widget.SearchView this$0;

    SearchView$3(androidx.appcompat.widget.SearchView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onFocusChange(android.view.View p3, boolean p4)
    {
        if (this.this$0.mOnQueryTextFocusChangeListener != null) {
            this.this$0.mOnQueryTextFocusChangeListener.onFocusChange(this.this$0, p4);
        }
        return;
    }
}
