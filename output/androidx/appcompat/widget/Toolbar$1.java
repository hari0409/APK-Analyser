package androidx.appcompat.widget;
 class Toolbar$1 implements androidx.appcompat.widget.ActionMenuView$OnMenuItemClickListener {
    final synthetic androidx.appcompat.widget.Toolbar this$0;

    Toolbar$1(androidx.appcompat.widget.Toolbar p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemClick(android.view.MenuItem p2)
    {
        int v0_2;
        if (this.this$0.mOnMenuItemClickListener == null) {
            v0_2 = 0;
        } else {
            v0_2 = this.this$0.mOnMenuItemClickListener.onMenuItemClick(p2);
        }
        return v0_2;
    }
}
