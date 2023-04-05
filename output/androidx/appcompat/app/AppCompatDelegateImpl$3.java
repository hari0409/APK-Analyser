package androidx.appcompat.app;
 class AppCompatDelegateImpl$3 implements androidx.core.view.OnApplyWindowInsetsListener {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$3(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View p6, androidx.core.view.WindowInsetsCompat p7)
    {
        int v1 = p7.getSystemWindowInsetTop();
        int v0 = this.this$0.updateStatusGuard(v1);
        if (v1 != v0) {
            p7 = p7.replaceSystemWindowInsets(p7.getSystemWindowInsetLeft(), v0, p7.getSystemWindowInsetRight(), p7.getSystemWindowInsetBottom());
        }
        return androidx.core.view.ViewCompat.onApplyWindowInsets(p6, p7);
    }
}
