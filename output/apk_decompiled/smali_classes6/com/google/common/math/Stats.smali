.class public final Lcom/google/common/math/Stats;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# static fields
.field static final BYTES:I = 0x28

.field private static final serialVersionUID:J


# instance fields
.field private final count:J

.field private final max:D

.field private final mean:D

.field private final min:D

.field private final sumOfSquaresOfDeltas:D


# direct methods
.method constructor <init>(JDDDD)V
    .locals 1
    .param p1, "count"    # J
    .param p3, "mean"    # D
    .param p5, "sumOfSquaresOfDeltas"    # D
    .param p7, "min"    # D
    .param p9, "max"    # D

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lcom/google/common/math/Stats;->count:J

    .line 87
    iput-wide p3, p0, Lcom/google/common/math/Stats;->mean:D

    .line 88
    iput-wide p5, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 89
    iput-wide p7, p0, Lcom/google/common/math/Stats;->min:D

    .line 90
    iput-wide p9, p0, Lcom/google/common/math/Stats;->max:D

    .line 91
    return-void
.end method

.method public static fromByteArray([B)Lcom/google/common/math/Stats;
    .locals 4
    .param p0, "byteArray"    # [B

    .prologue
    const/16 v3, 0x28

    .line 551
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    array-length v0, p0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Expected Stats.BYTES = %s remaining , got %s"

    array-length v2, p0

    invoke-static {v0, v1, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 557
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meanOf(Ljava/lang/Iterable;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/math/Stats;->meanOf(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static meanOf(Ljava/util/Iterator;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 413
    const-wide/16 v0, 0x1

    .line 414
    .local v0, "count":J
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 415
    .local v2, "mean":D
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 417
    .local v4, "value":D
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 418
    invoke-static {v4, v5}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 420
    sub-double v6, v4, v2

    long-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v2

    goto :goto_0

    .line 425
    .end local v4    # "value":D
    :cond_1
    return-wide v2
.end method

.method public static varargs meanOf([D)D
    .locals 10
    .param p0, "values"    # [D

    .prologue
    const/4 v6, 0x0

    .line 438
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 439
    aget-wide v2, p0, v6

    .line 440
    .local v2, "mean":D
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 441
    aget-wide v4, p0, v0

    .line 442
    .local v4, "value":D
    invoke-static {v4, v5}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    sub-double v6, v4, v2

    add-int/lit8 v1, v0, 0x1

    int-to-double v8, v1

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 440
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "index":I
    .end local v2    # "mean":D
    .end local v4    # "value":D
    :cond_0
    move v1, v6

    .line 438
    goto :goto_0

    .line 446
    .restart local v0    # "index":I
    .restart local v2    # "mean":D
    .restart local v4    # "value":D
    :cond_1
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v2

    goto :goto_2

    .line 449
    .end local v4    # "value":D
    :cond_2
    return-wide v2
.end method

.method public static varargs meanOf([I)D
    .locals 10
    .param p0, "values"    # [I

    .prologue
    const/4 v6, 0x0

    .line 462
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 463
    aget v1, p0, v6

    int-to-double v2, v1

    .line 464
    .local v2, "mean":D
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 465
    aget v1, p0, v0

    int-to-double v4, v1

    .line 466
    .local v4, "value":D
    invoke-static {v4, v5}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    sub-double v6, v4, v2

    add-int/lit8 v1, v0, 0x1

    int-to-double v8, v1

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 464
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "index":I
    .end local v2    # "mean":D
    .end local v4    # "value":D
    :cond_0
    move v1, v6

    .line 462
    goto :goto_0

    .line 470
    .restart local v0    # "index":I
    .restart local v2    # "mean":D
    .restart local v4    # "value":D
    :cond_1
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v2

    goto :goto_2

    .line 473
    .end local v4    # "value":D
    :cond_2
    return-wide v2
.end method

.method public static varargs meanOf([J)D
    .locals 10
    .param p0, "values"    # [J

    .prologue
    const/4 v6, 0x0

    .line 487
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 488
    aget-wide v6, p0, v6

    long-to-double v2, v6

    .line 489
    .local v2, "mean":D
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 490
    aget-wide v6, p0, v0

    long-to-double v4, v6

    .line 491
    .local v4, "value":D
    invoke-static {v4, v5}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    sub-double v6, v4, v2

    add-int/lit8 v1, v0, 0x1

    int-to-double v8, v1

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 489
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "index":I
    .end local v2    # "mean":D
    .end local v4    # "value":D
    :cond_0
    move v1, v6

    .line 487
    goto :goto_0

    .line 495
    .restart local v0    # "index":I
    .restart local v2    # "mean":D
    .restart local v4    # "value":D
    :cond_1
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v2

    goto :goto_2

    .line 498
    .end local v4    # "value":D
    :cond_2
    return-wide v2
.end method

.method public static of(Ljava/lang/Iterable;)Lcom/google/common/math/Stats;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/math/Stats;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 101
    .local v0, "accumulator":Lcom/google/common/math/StatsAccumulator;
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll(Ljava/lang/Iterable;)V

    .line 102
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/util/Iterator;)Lcom/google/common/math/Stats;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/math/Stats;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 113
    .local v0, "accumulator":Lcom/google/common/math/StatsAccumulator;
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll(Ljava/util/Iterator;)V

    .line 114
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    return-object v1
.end method

.method public static varargs of([D)Lcom/google/common/math/Stats;
    .locals 2
    .param p0, "values"    # [D

    .prologue
    .line 123
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 124
    .local v0, "acummulator":Lcom/google/common/math/StatsAccumulator;
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll([D)V

    .line 125
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    return-object v1
.end method

.method public static varargs of([I)Lcom/google/common/math/Stats;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 134
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 135
    .local v0, "acummulator":Lcom/google/common/math/StatsAccumulator;
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll([I)V

    .line 136
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    return-object v1
.end method

.method public static varargs of([J)Lcom/google/common/math/Stats;
    .locals 2
    .param p0, "values"    # [J

    .prologue
    .line 146
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 147
    .local v0, "acummulator":Lcom/google/common/math/StatsAccumulator;
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll([J)V

    .line 148
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    return-object v1
.end method

.method static readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;
    .locals 12
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v3, 0x28

    .line 571
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Expected at least Stats.BYTES = %s remaining , got %s"

    .line 576
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 572
    invoke-static {v0, v1, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 577
    new-instance v1, Lcom/google/common/math/Stats;

    .line 578
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 579
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    .line 580
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    .line 581
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v8

    .line 582
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v10

    invoke-direct/range {v1 .. v11}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    .line 577
    return-object v1

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public count()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 346
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 349
    check-cast v0, Lcom/google/common/math/Stats;

    .line 350
    .local v0, "other":Lcom/google/common/math/Stats;
    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    iget-wide v4, v0, Lcom/google/common/math/Stats;->count:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->mean:D

    .line 351
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/common/math/Stats;->mean:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 352
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->min:D

    .line 353
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/common/math/Stats;->min:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->max:D

    .line 354
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/common/math/Stats;->max:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 365
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/math/Stats;->mean:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/math/Stats;->min:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/math/Stats;->max:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public max()D
    .locals 4

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 323
    iget-wide v0, p0, Lcom/google/common/math/Stats;->max:D

    return-wide v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mean()D
    .locals 4

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 179
    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    return-wide v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public min()D
    .locals 4

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 305
    iget-wide v0, p0, Lcom/google/common/math/Stats;->min:D

    return-wide v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populationStandardDeviation()D
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->populationVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public populationVariance()D
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 215
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 221
    :goto_1
    return-wide v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 219
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 221
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_1
.end method

.method public sampleStandardDeviation()D
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->sampleVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public sampleVariance()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 261
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 262
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 265
    :goto_1
    return-wide v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_1
.end method

.method public sum()D
    .locals 4

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method sumOfSquaresOfDeltas()D
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    return-wide v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 513
    const/16 v1, 0x28

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 514
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 515
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 371
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "count"

    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    .line 372
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "mean"

    iget-wide v2, p0, Lcom/google/common/math/Stats;->mean:D

    .line 373
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "populationStandardDeviation"

    .line 374
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->populationStandardDeviation()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "min"

    iget-wide v2, p0, Lcom/google/common/math/Stats;->min:D

    .line 375
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "max"

    iget-wide v2, p0, Lcom/google/common/math/Stats;->max:D

    .line 376
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "count"

    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method writeTo(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v3, 0x28

    .line 529
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Expected at least Stats.BYTES = %s remaining , got %s"

    .line 534
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 530
    invoke-static {v0, v1, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 535
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 536
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->mean:D

    .line 537
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 538
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->min:D

    .line 539
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/math/Stats;->max:D

    .line 540
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 541
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
