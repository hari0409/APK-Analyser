package androidx.appcompat.app;
final class AppCompatDelegateImpl$AutoNightModeManager {
    private android.content.BroadcastReceiver mAutoTimeChangeReceiver;
    private android.content.IntentFilter mAutoTimeChangeReceiverFilter;
    private boolean mIsNight;
    private androidx.appcompat.app.TwilightManager mTwilightManager;
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$AutoNightModeManager(androidx.appcompat.app.AppCompatDelegateImpl p2, androidx.appcompat.app.TwilightManager p3)
    {
        this.this$0 = p2;
        this.mTwilightManager = p3;
        this.mIsNight = p3.isNight();
        return;
    }

    void cleanup()
    {
        if (this.mAutoTimeChangeReceiver != null) {
            this.this$0.mContext.unregisterReceiver(this.mAutoTimeChangeReceiver);
            this.mAutoTimeChangeReceiver = 0;
        }
        return;
    }

    void dispatchTimeChanged()
    {
        boolean v0 = this.mTwilightManager.isNight();
        if (v0 != this.mIsNight) {
            this.mIsNight = v0;
            this.this$0.applyDayNight();
        }
        return;
    }

    int getApplyableNightMode()
    {
        int v0_3;
        this.mIsNight = this.mTwilightManager.isNight();
        if (!this.mIsNight) {
            v0_3 = 1;
        } else {
            v0_3 = 2;
        }
        return v0_3;
    }

    void setup()
    {
        this.cleanup();
        if (this.mAutoTimeChangeReceiver == null) {
            this.mAutoTimeChangeReceiver = new androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager$1(this);
        }
        if (this.mAutoTimeChangeReceiverFilter == null) {
            this.mAutoTimeChangeReceiverFilter = new android.content.IntentFilter();
            this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIME_SET");
            this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIME_TICK");
        }
        this.this$0.mContext.registerReceiver(this.mAutoTimeChangeReceiver, this.mAutoTimeChangeReceiverFilter);
        return;
    }
}
