.class final Landroidx/enterprise/feedback/AutoValue_KeyedAppState;
.super Landroidx/enterprise/feedback/KeyedAppState;
.source "AutoValue_KeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final severity:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "severity"    # I
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "data"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppState;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    .line 25
    iput p2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    .line 26
    iput-object p3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_KeyedAppState$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroidx/enterprise/feedback/AutoValue_KeyedAppState$1;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    if-ne p1, p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    instance-of v3, p1, Landroidx/enterprise/feedback/KeyedAppState;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 70
    check-cast v0, Landroidx/enterprise/feedback/KeyedAppState;

    .line 71
    .local v0, "that":Landroidx/enterprise/feedback/KeyedAppState;
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    .line 72
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 73
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 74
    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 73
    :cond_3
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 74
    :cond_4
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "that":Landroidx/enterprise/feedback/KeyedAppState;
    :cond_5
    move v1, v2

    .line 76
    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const v3, 0xf4243

    .line 81
    const/4 v0, 0x1

    .line 82
    .local v0, "h$":I
    mul-int/2addr v0, v3

    .line 83
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 84
    mul-int/2addr v0, v3

    .line 85
    iget v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    xor-int/2addr v0, v1

    .line 86
    mul-int/2addr v0, v3

    .line 87
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    xor-int/2addr v0, v1

    .line 88
    mul-int/2addr v0, v3

    .line 89
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_1
    xor-int/2addr v0, v2

    .line 90
    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyedAppState{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
