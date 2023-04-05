package androidx.appcompat.widget;
 class SearchView$7 implements android.widget.TextView$OnEditorActionListener {
    final synthetic androidx.appcompat.widget.SearchView this$0;

    SearchView$7(androidx.appcompat.widget.SearchView p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onEditorAction(android.widget.TextView p2, int p3, android.view.KeyEvent p4)
    {
        this.this$0.onSubmitQuery();
        return 1;
    }
}
