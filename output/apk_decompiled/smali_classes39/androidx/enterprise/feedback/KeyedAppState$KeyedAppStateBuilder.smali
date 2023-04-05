.class public abstract Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
.super Ljava/lang/Object;
.source "KeyedAppState.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/KeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyedAppStateBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Landroidx/enterprise/feedback/KeyedAppState;
.end method

.method public build()Landroidx/enterprise/feedback/KeyedAppState;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v3, 0x1

    .line 189
    invoke-virtual {p0}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;->autoBuild()Landroidx/enterprise/feedback/KeyedAppState;

    move-result-object v0

    .line 190
    .local v0, "keyedAppState":Landroidx/enterprise/feedback/KeyedAppState;
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 191
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Key length can be at most %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 197
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Message length can be at most %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 203
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data length can be at most %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_2
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 208
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Severity must be SEVERITY_ERROR or SEVERITY_INFO"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_3
    return-object v0
.end method

.method public abstract setData(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
