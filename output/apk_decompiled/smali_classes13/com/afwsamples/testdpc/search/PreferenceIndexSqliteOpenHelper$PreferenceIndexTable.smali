.class Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexTable;
.super Ljava/lang/Object;
.source "PreferenceIndexSqliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceIndexTable"
.end annotation


# static fields
.field private static final FRAGMENT_CLASS:Ljava/lang/String; = "fragment_class"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final TABLE_NAME:Ljava/lang/String; = "preference_index"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromCursor(Landroid/database/Cursor;)Lcom/afwsamples/testdpc/search/PreferenceIndex;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 177
    const-string v6, "key"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "INDEX_KEY":I
    const-string v6, "title"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, "TITLE_INDEX":I
    const-string v6, "fragment_class"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "FRAGMENT_CLASS_INDEX":I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "title":Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "fragmentClass":Ljava/lang/String;
    new-instance v6, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    invoke-direct {v6, v4, v5, v3}, Lcom/afwsamples/testdpc/search/PreferenceIndex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method static toContentValues(Lcom/afwsamples/testdpc/search/PreferenceIndex;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "preferenceIndex"    # Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .prologue
    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "key"

    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "title"

    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "fragment_class"

    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->fragmentClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v0
.end method
