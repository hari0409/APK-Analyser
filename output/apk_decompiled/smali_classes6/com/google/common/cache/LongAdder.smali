.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 183
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 175
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 176
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 13
    .param p1, "x"    # J

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/common/cache/LongAdder;->base:J

    .local v2, "b":J
    add-long v10, v2, p1

    invoke-virtual {p0, v2, v3, v10, v11}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 66
    .end local v2    # "b":J
    :cond_0
    const/4 v6, 0x1

    .line 67
    .local v6, "uncontended":Z
    sget-object v7, Lcom/google/common/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .local v4, "hc":[I
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    array-length v5, v1

    .local v5, "n":I
    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    add-int/lit8 v7, v5, -0x1

    const/4 v10, 0x0

    aget v10, v4, v10

    and-int/2addr v7, v10

    aget-object v0, v1, v7

    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_1

    iget-wide v8, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .local v8, "v":J
    add-long v10, v8, p1

    .line 71
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v5    # "n":I
    .end local v8    # "v":J
    :cond_1
    invoke-virtual {p0, p1, p2, v4, v6}, Lcom/google/common/cache/LongAdder;->retryUpdate(J[IZ)V

    .line 73
    .end local v4    # "hc":[I
    .end local v6    # "uncontended":Z
    :cond_2
    return-void
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 83
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 3
    .param p1, "v"    # J
    .param p3, "x"    # J

    .prologue
    .line 48
    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 78
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    .line 113
    return-void
.end method

.method public sum()J
    .locals 8

    .prologue
    .line 93
    iget-wide v4, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 94
    .local v4, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 95
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v1, :cond_1

    .line 96
    array-length v3, v1

    .line 97
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 98
    aget-object v0, v1, v2

    .line 99
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 97
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-wide v4
.end method

.method public sumThenReset()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 124
    iget-wide v4, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 125
    .local v4, "sum":J
    iget-object v1, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 126
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide v8, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 127
    if-eqz v1, :cond_1

    .line 128
    array-length v3, v1

    .line 129
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 130
    aget-object v0, v1, v2

    .line 131
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 132
    iget-wide v6, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 133
    iput-wide v8, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
