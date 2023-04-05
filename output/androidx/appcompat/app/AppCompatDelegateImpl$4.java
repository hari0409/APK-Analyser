package androidx.appcompat.app;
 class AppCompatDelegateImpl$4 implements androidx.appcompat.widget.FitWindowsViewGroup$OnFitSystemWindowsListener {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$4(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onFitSystemWindows(android.graphics.Rect p3)
    {
        p3.top = this.this$0.updateStatusGuard(p3.top);
        return;
    }
}
