.class Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;
.super Ljava/lang/Object;
.source "PreferenceIndexSqliteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedPreferencesHelper"
.end annotation


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 208
    return-void
.end method


# virtual methods
.method public getVersion()I
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public saveVersion()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper$SharedPreferencesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    const/16 v2, 0x1f41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    return-void
.end method
