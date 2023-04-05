package androidx.appcompat.app;
 class AppCompatDelegateImpl$5 implements androidx.appcompat.widget.ContentFrameLayout$OnAttachListener {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$5(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onAttachedFromWindow()
    {
        return;
    }

    public void onDetachedFromWindow()
    {
        this.this$0.dismissPopups();
        return;
    }
}
