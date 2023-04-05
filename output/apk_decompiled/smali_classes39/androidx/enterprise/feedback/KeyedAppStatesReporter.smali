.class public abstract Landroidx/enterprise/feedback/KeyedAppStatesReporter;
.super Ljava/lang/Object;
.source "KeyedAppStatesReporter.java"


# static fields
.field static final ACTION_APP_STATES:Ljava/lang/String; = "androidx.enterprise.feedback.action.APP_STATES"

.field static final APP_STATES:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATES"

.field static final APP_STATE_DATA:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_DATA"

.field static final APP_STATE_KEY:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_KEY"

.field static final APP_STATE_MESSAGE:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_MESSAGE"

.field static final APP_STATE_SEVERITY:Ljava/lang/String; = "androidx.enterprise.feedback.APP_STATE_SEVERITY"

.field static final PHONESKY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field static final WHAT_IMMEDIATE_STATE:I = 0x2

.field static final WHAT_STATE:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canPackageReceiveAppStates(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v1, "device_policy"

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 89
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    .line 91
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract setStates(Ljava/util/Collection;)V
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStatesImmediate(Ljava/util/Collection;)V
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)V"
        }
    .end annotation
.end method
