package com.afwsamples.testdpc.provision;
public class CheckInState {
    public static final String FIRST_ACCOUNT_READY_PROCESSED_ACTION = "com.afwsamples.testdpc.FIRST_ACCOUNT_READY_PROCESSED";
    public static final int FIRST_ACCOUNT_STATE_PENDING = 0;
    public static final int FIRST_ACCOUNT_STATE_READY = 1;
    public static final int FIRST_ACCOUNT_STATE_TIMEOUT = 2;
    private static final String KEY_FIRST_ACCOUNT_STATE = "first_account_state";
    private android.content.Context mContext;
    private android.content.SharedPreferences mSharedPreferences;

    public CheckInState(android.content.Context p2)
    {
        this.mSharedPreferences = android.preference.PreferenceManager.getDefaultSharedPreferences(p2);
        this.mContext = p2.getApplicationContext();
        return;
    }

    public int getFirstAccountState()
    {
        return this.mSharedPreferences.getInt("first_account_state", 0);
    }

    public void setFirstAccountState(int p4)
    {
        this.mSharedPreferences.edit().putInt("first_account_state", p4).apply();
        if (p4 != 0) {
            androidx.localbroadcastmanager.content.LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(new android.content.Intent("com.afwsamples.testdpc.FIRST_ACCOUNT_READY_PROCESSED"));
        }
        return;
    }
}
