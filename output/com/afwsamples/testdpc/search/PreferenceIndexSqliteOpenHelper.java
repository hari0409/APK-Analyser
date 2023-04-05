package com.afwsamples.testdpc.search;
public class PreferenceIndexSqliteOpenHelper extends android.database.sqlite.SQLiteOpenHelper {
    private static final String CREATE_FTS_TABLE = "CREATE VIRTUAL TABLE preference_index_fts USING fts4 (content='preference_index', title);";
    private static final String CREATE_TABLE_PREFERENCE_INDEX = "CREATE TABLE preference_index (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,title TEXT NOT NULL,fragment_class TEXT NOT NULL);";
    private static final String DATABASE_NAME = "preference_index.db";
    private static final int DATABASE_VERSION = 1;
    private static final String LOOKUP_SQL = "SELECT * FROM preference_index WHERE _id IN (SELECT docid FROM preference_index_fts WHERE preference_index_fts MATCH ?) AND fragment_class IN(";
    private static final String REBUILD_FTS_SQL = "INSERT INTO preference_index_fts(preference_index_fts) VALUES('rebuild')";
    private static boolean sIndexed;
    private static com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper sInstance;
    private android.content.Context mContext;
    private com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper mSharedPreferencesHelper;

    static PreferenceIndexSqliteOpenHelper()
    {
        com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper.sIndexed = 0;
        return;
    }

    private PreferenceIndexSqliteOpenHelper(android.content.Context p4)
    {
        super(p4, "preference_index.db", 0, 1);
        super.mContext = p4.getApplicationContext();
        super.mSharedPreferencesHelper = new com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper(super.mContext);
        return;
    }

    private String buildLookupSQL(java.util.List p5)
    {
        StringBuilder v1_1 = new StringBuilder("SELECT * FROM preference_index WHERE _id IN (SELECT docid FROM preference_index_fts WHERE preference_index_fts MATCH ?) AND fragment_class IN(");
        String v2_4 = p5.iterator();
        while (v2_4.hasNext()) {
            android.database.DatabaseUtils.appendEscapedSQLString(v1_1, ((String) v2_4.next()));
            v1_1.append(",");
        }
        v1_1.setLength((v1_1.length() - 1));
        v1_1.append(")");
        return v1_1.toString();
    }

    private void clearDatabase()
    {
        this.getWritableDatabase().delete("preference_index", 0, 0);
        return;
    }

    public static declared_synchronized com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper getInstance(android.content.Context p2)
    {
        try {
            if (com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper.sInstance == null) {
                com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper.sInstance = new com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper(p2);
            }
        } catch (com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper v0_3) {
            throw v0_3;
        }
        return com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper.sInstance;
    }

    private boolean shouldUpdateIndex()
    {
        int v1_2;
        if (8001 == this.mSharedPreferencesHelper.getVersion()) {
            v1_2 = 0;
        } else {
            v1_2 = 1;
        }
        return v1_2;
    }

    private void updateIndex()
    {
        this.clearDatabase();
        this.insertIndexablePreferences(new com.afwsamples.testdpc.search.PreferenceCrawler(this.mContext).doCrawl());
        return;
    }

    private void updateIndexIfNeeded()
    {
        if (this.shouldUpdateIndex()) {
            this.updateIndex();
            com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper.sIndexed = 1;
            this.mSharedPreferencesHelper.saveVersion();
        }
        return;
    }

    public void insertIndexablePreferences(java.util.List p7)
    {
        android.database.sqlite.SQLiteDatabase v0 = this.getWritableDatabase();
        v0.beginTransaction();
        try {
            String v2_1 = p7.iterator();
        } catch (String v2_0) {
            v0.endTransaction();
            throw v2_0;
        }
        while (v2_1.hasNext()) {
            v0.insert("preference_index", 0, com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper$PreferenceIndexTable.toContentValues(((com.afwsamples.testdpc.search.PreferenceIndex) v2_1.next())));
        }
        v0.execSQL("INSERT INTO preference_index_fts(preference_index_fts) VALUES(\'rebuild\')");
        v0.setTransactionSuccessful();
        v0.endTransaction();
        return;
    }

    public java.util.List lookup(String p8, java.util.List p9)
    {
        this.updateIndexIfNeeded();
        android.database.sqlite.SQLiteDatabase v1 = this.getReadableDatabase();
        try {
            String[] v3 = new String[1];
            v3[0] = new StringBuilder().append(p8).append("*").toString();
            android.database.Cursor v0 = v1.rawQuery(this.buildLookupSQL(p9), v3);
            java.util.ArrayList v2_1 = new java.util.ArrayList();
        } catch (com.afwsamples.testdpc.search.PreferenceIndex v4_2) {
            if (v0 != null) {
                v0.close();
            }
            throw v4_2;
        }
        while (v0.moveToNext()) {
            v2_1.add(com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper$PreferenceIndexTable.fromCursor(v0));
        }
        if (v0 != null) {
            v0.close();
        }
        return v2_1;
    }

    public void onCreate(android.database.sqlite.SQLiteDatabase p2)
    {
        p2.execSQL("CREATE TABLE preference_index (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,title TEXT NOT NULL,fragment_class TEXT NOT NULL);");
        p2.execSQL("CREATE VIRTUAL TABLE preference_index_fts USING fts4 (content=\'preference_index\', title);");
        return;
    }

    public void onUpgrade(android.database.sqlite.SQLiteDatabase p1, int p2, int p3)
    {
        return;
    }
}
