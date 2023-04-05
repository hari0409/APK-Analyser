.class final Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;
.super Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
.source "AutoValue_KeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/AutoValue_KeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private severity:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;-><init>()V

    .line 99
    return-void
.end method


# virtual methods
.method autoBuild()Landroidx/enterprise/feedback/KeyedAppState;
    .locals 7

    .prologue
    .line 125
    const-string v6, ""

    .line 126
    .local v6, "missing":Ljava/lang/String;
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->severity:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " severity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    new-instance v0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->severity:Ljava/lang/Integer;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->message:Ljava/lang/String;

    iget-object v4, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->data:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_KeyedAppState$1;)V

    .line 135
    return-object v0
.end method

.method public setData(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->data:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->key:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->message:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setSeverity(I)Landroidx/enterprise/feedback/KeyedAppState$KeyedAppStateBuilder;
    .locals 1
    .param p1, "severity"    # I

    .prologue
    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;->severity:Ljava/lang/Integer;

    .line 111
    return-object p0
.end method
