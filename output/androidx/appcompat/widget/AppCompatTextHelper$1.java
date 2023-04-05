package androidx.appcompat.widget;
 class AppCompatTextHelper$1 extends androidx.core.content.res.ResourcesCompat$FontCallback {
    final synthetic androidx.appcompat.widget.AppCompatTextHelper this$0;
    final synthetic ref.WeakReference val$textViewWeak;

    AppCompatTextHelper$1(androidx.appcompat.widget.AppCompatTextHelper p1, ref.WeakReference p2)
    {
        this.this$0 = p1;
        this.val$textViewWeak = p2;
        return;
    }

    public void onFontRetrievalFailed(int p1)
    {
        return;
    }

    public void onFontRetrieved(android.graphics.Typeface p3)
    {
        this.this$0.onAsyncTypefaceReceived(this.val$textViewWeak, p3);
        return;
    }
}
