.class public Lcom/afwsamples/testdpc/provision/CheckInState;
.super Ljava/lang/Object;
.source "CheckInState.java"


# static fields
.field public static final FIRST_ACCOUNT_READY_PROCESSED_ACTION:Ljava/lang/String; = "com.afwsamples.testdpc.FIRST_ACCOUNT_READY_PROCESSED"

.field public static final FIRST_ACCOUNT_STATE_PENDING:I = 0x0

.field public static final FIRST_ACCOUNT_STATE_READY:I = 0x1

.field public static final FIRST_ACCOUNT_STATE_TIMEOUT:I = 0x2

.field private static final KEY_FIRST_ACCOUNT_STATE:Ljava/lang/String; = "first_account_state"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/provision/CheckInState;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/provision/CheckInState;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public getFirstAccountState()I
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/CheckInState;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "first_account_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setFirstAccountState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/CheckInState;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_account_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/CheckInState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.afwsamples.testdpc.FIRST_ACCOUNT_READY_PROCESSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 56
    :cond_0
    return-void
.end method
