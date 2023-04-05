package androidx.appcompat.widget;
 class ActionBarContextView$1 implements android.view.View$OnClickListener {
    final synthetic androidx.appcompat.widget.ActionBarContextView this$0;
    final synthetic androidx.appcompat.view.ActionMode val$mode;

    ActionBarContextView$1(androidx.appcompat.widget.ActionBarContextView p1, androidx.appcompat.view.ActionMode p2)
    {
        this.this$0 = p1;
        this.val$mode = p2;
        return;
    }

    public void onClick(android.view.View p2)
    {
        this.val$mode.finish();
        return;
    }
}
