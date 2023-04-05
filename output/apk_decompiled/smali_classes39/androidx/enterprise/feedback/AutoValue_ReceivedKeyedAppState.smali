.class final Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;
.super Landroidx/enterprise/feedback/ReceivedKeyedAppState;
.source "AutoValue_ReceivedKeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$Builder;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final severity:I

.field private final timestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "severity"    # I
    .param p6, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "data"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->packageName:Ljava/lang/String;

    .line 31
    iput-wide p2, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->timestamp:J

    .line 32
    iput-object p4, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->key:Ljava/lang/String;

    .line 33
    iput p5, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->severity:I

    .line 34
    iput-object p6, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # I
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState$1;

    .prologue
    .line 9
    invoke-direct/range {p0 .. p7}, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v3, p1, Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 90
    check-cast v0, Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    .line 91
    .local v0, "that":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v4, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->timestamp:J

    .line 92
    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getTimestamp()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->key:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->severity:I

    .line 94
    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 95
    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 96
    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 95
    :cond_3
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 96
    :cond_4
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "that":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    :cond_5
    move v1, v2

    .line 98
    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->severity:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const v3, 0xf4243

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "h$":I
    mul-int/2addr v0, v3

    .line 105
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 106
    mul-int/2addr v0, v3

    .line 107
    iget-wide v4, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->timestamp:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    iget-wide v6, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->timestamp:J

    xor-long/2addr v4, v6

    long-to-int v1, v4

    xor-int/2addr v0, v1

    .line 108
    mul-int/2addr v0, v3

    .line 109
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 110
    mul-int/2addr v0, v3

    .line 111
    iget v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->severity:I

    xor-int/2addr v0, v1

    .line 112
    mul-int/2addr v0, v3

    .line 113
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    xor-int/2addr v0, v1

    .line 114
    mul-int/2addr v0, v3

    .line 115
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    .line 116
    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceivedKeyedAppState{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->severity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_ReceivedKeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
