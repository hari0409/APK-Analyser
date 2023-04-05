package androidx.appcompat.widget;
 class SearchView$2 implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.SearchView this$0;

    SearchView$2(androidx.appcompat.widget.SearchView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        if ((this.this$0.mSuggestionsAdapter != null) && ((this.this$0.mSuggestionsAdapter instanceof androidx.appcompat.widget.SuggestionsAdapter))) {
            this.this$0.mSuggestionsAdapter.changeCursor(0);
        }
        return;
    }
}
