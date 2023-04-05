.class Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$PreferenceIndexFtsTable;
.super Ljava/lang/Object;
.source "PreferenceIndexSqliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceIndexFtsTable"
.end annotation


# static fields
.field private static final DOC_ID:Ljava/lang/String; = "docid"

.field private static final TABLE_NAME:Ljava/lang/String; = "preference_index_fts"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
