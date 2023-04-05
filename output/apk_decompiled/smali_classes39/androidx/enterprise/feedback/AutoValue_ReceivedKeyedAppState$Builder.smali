.class final Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;
.super Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
.source "AutoValue_ReceivedKeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private severity:Ljava/lang/Integer;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public build()Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .locals 10

    .prologue
    .line 166
    const-string v9, ""

    .line 167
    .local v9, "missing":Ljava/lang/String;
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 170
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->timestamp:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 173
    :cond_1
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 176
    :cond_2
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->severity:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " severity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_4
    new-instance v0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->timestamp:Ljava/lang/Long;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    iget-object v5, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->severity:Ljava/lang/Integer;

    .line 186
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->message:Ljava/lang/String;

    iget-object v7, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->data:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$1;)V

    .line 182
    return-object v0
.end method

.method public setData(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->data:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->key:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->message:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->packageName:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setSeverity(I)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 1
    .param p1, "severity"    # I

    .prologue
    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->severity:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method public setTimestamp(J)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 138
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;->timestamp:Ljava/lang/Long;

    .line 139
    return-object p0
.end method
