.class public abstract Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
.super Ljava/lang/Object;
.source "ReceivedKeyedAppState.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/ReceivedKeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReceivedKeyedAppStateBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setData(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setPackageName(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setSeverity(I)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setTimestamp(J)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
