package androidx.appcompat.app;
 class AppCompatDelegateImpl$AutoNightModeManager$1 extends android.content.BroadcastReceiver {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager this$1;

    AppCompatDelegateImpl$AutoNightModeManager$1(androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager p1)
    {
        this.this$1 = p1;
        return;
    }

    public void onReceive(android.content.Context p2, android.content.Intent p3)
    {
        this.this$1.dispatchTimeChanged();
        return;
    }
}
