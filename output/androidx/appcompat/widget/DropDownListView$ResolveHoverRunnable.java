package androidx.appcompat.widget;
 class DropDownListView$ResolveHoverRunnable implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.DropDownListView this$0;

    DropDownListView$ResolveHoverRunnable(androidx.appcompat.widget.DropDownListView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void cancel()
    {
        this.this$0.mResolveHoverRunnable = 0;
        this.this$0.removeCallbacks(this);
        return;
    }

    public void post()
    {
        this.this$0.post(this);
        return;
    }

    public void run()
    {
        this.this$0.mResolveHoverRunnable = 0;
        this.this$0.drawableStateChanged();
        return;
    }
}
