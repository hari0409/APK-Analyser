.class public Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PreferenceIndexSqliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;,
        Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexFtsTable;,
        Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;
    }
.end annotation


# static fields
.field private static final CREATE_FTS_TABLE:Ljava/lang/String; = "CREATE VIRTUAL TABLE preference_index_fts USING fts4 (content=\'preference_index\', title);"

.field private static final CREATE_TABLE_PREFERENCE_INDEX:Ljava/lang/String; = "CREATE TABLE preference_index (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,title TEXT NOT NULL,fragment_class TEXT NOT NULL);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "preference_index.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final LOOKUP_SQL:Ljava/lang/String; = "SELECT * FROM preference_index WHERE _id IN (SELECT docid FROM preference_index_fts WHERE preference_index_fts MATCH ?) AND fragment_class IN("

.field private static final REBUILD_FTS_SQL:Ljava/lang/String; = "INSERT INTO preference_index_fts(preference_index_fts) VALUES(\'rebuild\')"

.field private static sIndexed:Z

.field private static sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferencesHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sIndexed:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "preference_index.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;

    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mSharedPreferencesHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;

    .line 51
    return-void
.end method

.method private buildLookupSQL(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "targetFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM preference_index WHERE _id IN (SELECT docid FROM preference_index_fts WHERE preference_index_fts MATCH ?) AND fragment_class IN("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "fragment":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 118
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v0    # "fragment":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private clearDatabase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "preference_index"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-class v1, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    .line 57
    :cond_0
    sget-object v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sInstance:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private shouldUpdateIndex()Z
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mSharedPreferencesHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;->getVersion()I

    move-result v0

    .line 141
    .local v0, "storedVersion":I
    const/16 v1, 0x1f41

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateIndex()V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->clearDatabase()V

    .line 147
    new-instance v0, Lcom/afwsamples/testdpc/search/PreferenceCrawler;

    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/afwsamples/testdpc/search/PreferenceCrawler;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "preferenceCrawler":Lcom/afwsamples/testdpc/search/PreferenceCrawler;
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/PreferenceCrawler;->doCrawl()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->insertIndexablePreferences(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method private updateIndexIfNeeded()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->shouldUpdateIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->updateIndex()V

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->sIndexed:Z

    .line 129
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->mSharedPreferencesHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;->saveVersion()V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public insertIndexablePreferences(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .line 79
    .local v1, "preferenceIndex":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    const-string v3, "preference_index"

    const/4 v4, 0x0

    .line 80
    invoke-static {v1}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;->toContentValues(Lcom/afwsamples/testdpc/search/PreferenceIndex;)Landroid/content/ContentValues;

    move-result-object v5

    .line 79
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    .end local v1    # "preferenceIndex":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 83
    :cond_0
    :try_start_1
    const-string v2, "INSERT INTO preference_index_fts(preference_index_fts) VALUES(\'rebuild\')"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    return-void
.end method

.method public lookup(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "targetFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->updateIndexIfNeeded()V

    .line 97
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 98
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 100
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 101
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->buildLookupSQL(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;->fromCursor(Landroid/database/Cursor;)Lcom/afwsamples/testdpc/search/PreferenceIndex;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    .end local v2    # "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4

    .line 108
    .restart local v2    # "preferenceIndexList":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    .restart local v3    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    const-string v0, "CREATE TABLE preference_index (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,title TEXT NOT NULL,fragment_class TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE VIRTUAL TABLE preference_index_fts USING fts4 (content=\'preference_index\', title);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    return-void
.end method
