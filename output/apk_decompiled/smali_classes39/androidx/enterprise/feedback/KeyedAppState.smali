.class public abstract Landroidx/enterprise/feedback/KeyedAppState;
.super Ljava/lang/Object;
.source "KeyedAppState.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    }
.end annotation


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x3e8

.field public static final MAX_KEY_LENGTH:I = 0x64

.field public static final MAX_MESSAGE_LENGTH:I = 0x3e8

.field public static final SEVERITY_ERROR:I = 0x2

.field public static final SEVERITY_INFO:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;

    invoke-direct {v0}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    return-object v0
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/enterprise/feedback/KeyedAppState;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-static {p0}, Landroidx/enterprise/feedback/KeyedAppState;->isValid(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bundle is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-static {}, Landroidx/enterprise/feedback/KeyedAppState;->builder()Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    const-string v1, "androidx.enterprise.feedback.APP_STATE_KEY"

    .line 122
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    const-string v1, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    .line 123
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    const-string v1, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    .line 124
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    const-string v1, "androidx.enterprise.feedback.APP_STATE_DATA"

    .line 125
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->setData(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->build()Landroidx/enterprise/feedback/KeyedAppState;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method static isValid(Landroid/os/Bundle;)Z
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    const-string v6, "androidx.enterprise.feedback.APP_STATE_KEY"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 135
    :cond_1
    const-string v6, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, "severity":I
    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 140
    :cond_2
    const-string v6, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v8, :cond_0

    .line 145
    :cond_3
    const-string v6, "androidx.enterprise.feedback.APP_STATE_DATA"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v8, :cond_0

    :cond_4
    move v4, v5

    .line 150
    goto :goto_0
.end method


# virtual methods
.method public abstract getData()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSeverity()I
.end method

.method toStateBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "androidx.enterprise.feedback.APP_STATE_KEY"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "androidx.enterprise.feedback.APP_STATE_SEVERITY"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "androidx.enterprise.feedback.APP_STATE_MESSAGE"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "androidx.enterprise.feedback.APP_STATE_DATA"

    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    return-object v0
.end method
