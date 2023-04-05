package androidx.appcompat.widget;
 class SearchView$6 implements android.view.View$OnKeyListener {
    final synthetic androidx.appcompat.widget.SearchView this$0;

    SearchView$6(androidx.appcompat.widget.SearchView p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onKey(android.view.View p6, int p7, android.view.KeyEvent p8)
    {
        int v0_0 = 0;
        if (this.this$0.mSearchable != null) {
            if ((!this.this$0.mSearchSrcTextView.isPopupShowing()) || (this.this$0.mSearchSrcTextView.getListSelection() == -1)) {
                if ((!this.this$0.mSearchSrcTextView.isEmpty()) && ((p8.hasNoModifiers()) && ((p8.getAction() == 1) && (p7 == 66)))) {
                    p6.cancelLongPress();
                    this.this$0.launchQuerySearch(0, 0, this.this$0.mSearchSrcTextView.getText().toString());
                    v0_0 = 1;
                }
            } else {
                v0_0 = this.this$0.onSuggestionsKey(p6, p7, p8);
            }
        }
        return v0_0;
    }
}
