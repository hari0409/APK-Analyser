package com.afwsamples.testdpc.search;
 class PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper {
    private static final String KEY_VERSION = "version";
    private android.content.SharedPreferences mSharedPreferences;

    public PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper(android.content.Context p2)
    {
        this.mSharedPreferences = android.preference.PreferenceManager.getDefaultSharedPreferences(p2);
        return;
    }

    public int getVersion()
    {
        return this.mSharedPreferences.getInt("version", 0);
    }

    public void saveVersion()
    {
        this.mSharedPreferences.edit().putInt("version", 8001).apply();
        return;
    }
}
