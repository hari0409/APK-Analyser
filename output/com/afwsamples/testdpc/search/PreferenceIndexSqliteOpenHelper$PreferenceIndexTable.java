package com.afwsamples.testdpc.search;
 class PreferenceIndexSqliteOpenHelper$PreferenceIndexTable {
    private static final String FRAGMENT_CLASS = "fragment_class";
    private static final String KEY = "key";
    private static final String TABLE_NAME = "preference_index";
    private static final String TITLE = "title";
    private static final String _ID = "_id";

    private PreferenceIndexSqliteOpenHelper$PreferenceIndexTable()
    {
        return;
    }

    static com.afwsamples.testdpc.search.PreferenceIndex fromCursor(android.database.Cursor p7)
    {
        return new com.afwsamples.testdpc.search.PreferenceIndex(p7.getString(p7.getColumnIndex("key")), p7.getString(p7.getColumnIndex("title")), p7.getString(p7.getColumnIndex("fragment_class")));
    }

    static android.content.ContentValues toContentValues(com.afwsamples.testdpc.search.PreferenceIndex p3)
    {
        android.content.ContentValues v0_1 = new android.content.ContentValues();
        v0_1.put("key", p3.key);
        v0_1.put("title", p3.title);
        v0_1.put("fragment_class", p3.fragmentClass);
        return v0_1;
    }
}
