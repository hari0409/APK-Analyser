package androidx.appcompat.widget;
 class SearchView$5 implements android.view.View$OnClickListener {
    final synthetic androidx.appcompat.widget.SearchView this$0;

    SearchView$5(androidx.appcompat.widget.SearchView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p2)
    {
        if (p2 != this.this$0.mSearchButton) {
            if (p2 != this.this$0.mCloseButton) {
                if (p2 != this.this$0.mGoButton) {
                    if (p2 != this.this$0.mVoiceButton) {
                        if (p2 == this.this$0.mSearchSrcTextView) {
                            this.this$0.forceSuggestionQuery();
                        }
                    } else {
                        this.this$0.onVoiceClicked();
                    }
                } else {
                    this.this$0.onSubmitQuery();
                }
            } else {
                this.this$0.onCloseClicked();
            }
        } else {
            this.this$0.onSearchClicked();
        }
        return;
    }
}
