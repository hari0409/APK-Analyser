.class public final Lcom/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/ImmutableDoubleArray$AsList;,
        Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field private final array:[D

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x0

    new-array v1, v1, [D

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    sput-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method private constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D

    .prologue
    .line 315
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 316
    return-void
.end method

.method private constructor <init>([DII)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    .line 320
    iput p2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .line 321
    iput p3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    .line 322
    return-void
.end method

.method synthetic constructor <init>([DIILcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/primitives/ImmutableDoubleArray$1;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableDoubleArray;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/primitives/ImmutableDoubleArray;

    .prologue
    .line 83
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method static synthetic access$500(DD)Z
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .prologue
    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v0

    return v0
.end method

.method private static areEqual(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 517
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .prologue
    .line 171
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 172
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 155
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    invoke-static {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    .line 157
    .restart local p0    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->builder()Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->build()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_0
.end method

.method public static copyOf([D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .param p0, "values"    # [D

    .prologue
    .line 136
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    array-length v1, p0

    .line 138
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_0
.end method

.method private isPartialView()Z
    .locals 2

    .prologue
    .line 561
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method public static of(D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "e0"    # D

    .prologue
    .line 93
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "e0"    # D
    .param p2, "e1"    # D

    .prologue
    .line 98
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D

    .prologue
    .line 103
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D

    .prologue
    .line 108
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D

    .prologue
    .line 113
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x5

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDDD)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D
    .param p10, "e5"    # D

    .prologue
    .line 119
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x6

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    const/4 v2, 0x5

    aput-wide p10, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static varargs of(D[D)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "first"    # D
    .param p2, "rest"    # [D

    .prologue
    const/4 v3, 0x0

    .line 128
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [D

    .line 129
    .local v0, "array":[D
    aput-wide p0, v0, v3

    .line 130
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    new-instance v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v1
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V

    return-object v0
.end method

.method public contains(D)Z
    .locals 1
    .param p1, "target"    # D

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 497
    if-ne p1, p0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v2

    .line 500
    :cond_1
    instance-of v4, p1, Lcom/google/common/primitives/ImmutableDoubleArray;

    if-nez v4, :cond_2

    move v2, v3

    .line 501
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 503
    check-cast v1, Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 504
    .local v1, "that":Lcom/google/common/primitives/ImmutableDoubleArray;
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 505
    goto :goto_0

    .line 507
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v4

    invoke-virtual {v1, v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 509
    goto :goto_0

    .line 507
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public get(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 342
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 523
    const/4 v0, 0x1

    .line 524
    .local v0, "hash":I
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_0

    .line 525
    mul-int/lit8 v0, v0, 0x1f

    .line 526
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    return v0
.end method

.method public indexOf(D)I
    .locals 5
    .param p1, "target"    # D

    .prologue
    .line 351
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    .line 356
    :goto_1
    return v1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(D)I
    .locals 5
    .param p1, "target"    # D

    .prologue
    .line 365
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    if-lt v0, v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    .line 370
    :goto_1
    return v1

    .line 365
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public length()I
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    .end local p0    # "this":Lcom/google/common/primitives/ImmutableDoubleArray;
    :cond_0
    return-object p0
.end method

.method public subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 395
    if-ne p1, p2, :cond_0

    sget-object v0, Lcom/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lcom/google/common/primitives/ImmutableDoubleArray;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    goto :goto_0
.end method

.method public toArray()[D
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    const-string v2, "[]"

    .line 547
    :goto_0
    return-object v2

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 541
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v4, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 543
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_1

    .line 544
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    move-object p0, v0

    .end local p0    # "this":Lcom/google/common/primitives/ImmutableDoubleArray;
    :cond_0
    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray;->trimmed()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method
