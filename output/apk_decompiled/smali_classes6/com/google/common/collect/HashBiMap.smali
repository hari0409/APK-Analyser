.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$EntryForValue;,
        Lcom/google/common/collect/HashBiMap$InverseEntrySet;,
        Lcom/google/common/collect/HashBiMap$Inverse;,
        Lcom/google/common/collect/HashBiMap$EntryForKey;,
        Lcom/google/common/collect/HashBiMap$EntrySet;,
        Lcom/google/common/collect/HashBiMap$ValueSet;,
        Lcom/google/common/collect/HashBiMap$KeySet;,
        Lcom/google/common/collect/HashBiMap$View;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABSENT:I = -0x1

.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient firstInInsertionOrder:I

.field private transient hashTableKToV:[I

.field private transient hashTableVToK:[I

.field private transient inverse:Lcom/google/common/collect/BiMap;
    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient lastInInsertionOrder:I

.field transient modCount:I

.field private transient nextInBucketKToV:[I

.field private transient nextInBucketVToK:[I

.field private transient nextInInsertionOrder:[I

.field private transient prevInInsertionOrder:[I

.field transient size:I

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/HashBiMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/HashBiMap;

    .prologue
    .line 52
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/HashBiMap;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/HashBiMap;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/HashBiMap;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/BiMap;)Lcom/google/common/collect/BiMap;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/HashBiMap;
    .param p1, "x1"    # Lcom/google/common/collect/BiMap;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/HashBiMap;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;Z)V

    return-void
.end method

.method private bucket(I)I
    .locals 1
    .param p1, "hash"    # I

    .prologue
    .line 191
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 75
    .local v0, "bimap":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 76
    return-object v0
.end method

.method private static createFilledWithAbsent(I)[I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 133
    new-array v0, p0, [I

    .line 134
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 135
    return-object v0
.end method

.method private deleteFromTableKToV(II)V
    .locals 6
    .param p1, "entry"    # I
    .param p2, "keyHash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v5, -0x1

    .line 394
    if-eq p1, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 395
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v1

    .line 397
    .local v1, "keyBucket":I
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 398
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v4, v4, p1

    aput v4, v3, v1

    .line 399
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput v5, v3, p1

    .line 410
    :goto_1
    return-void

    .line 394
    .end local v1    # "keyBucket":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 403
    .restart local v1    # "keyBucket":I
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v3, v1

    .line 404
    .local v2, "prevInBucket":I
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v0, v3, v2

    .line 405
    .local v0, "entryInBucket":I
    :goto_2
    if-eq v0, v5, :cond_3

    .line 407
    if-ne v0, p1, :cond_2

    .line 408
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v4, v4, p1

    aput v4, v3, v2

    .line 409
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput v5, v3, p1

    goto :goto_1

    .line 412
    :cond_2
    move v2, v0

    .line 406
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v0, v3, v0

    goto :goto_2

    .line 414
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected to find entry with key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private deleteFromTableVToK(II)V
    .locals 6
    .param p1, "entry"    # I
    .param p2, "valueHash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v5, -0x1

    .line 422
    if-eq p1, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 423
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v2

    .line 425
    .local v2, "valueBucket":I
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    .line 426
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v4, v4, p1

    aput v4, v3, v2

    .line 427
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput v5, v3, p1

    .line 438
    :goto_1
    return-void

    .line 422
    .end local v2    # "valueBucket":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .restart local v2    # "valueBucket":I
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v1, v3, v2

    .line 432
    .local v1, "prevInBucket":I
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v0, v3, v1

    .line 433
    .local v0, "entryInBucket":I
    :goto_2
    if-eq v0, v5, :cond_3

    .line 435
    if-ne v0, p1, :cond_2

    .line 436
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v4, v4, p1

    aput v4, v3, v1

    .line 437
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput v5, v3, p1

    goto :goto_1

    .line 440
    :cond_2
    move v1, v0

    .line 434
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v0, v3, v0

    goto :goto_2

    .line 442
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected to find entry with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private ensureCapacity(I)V
    .locals 10
    .param p1, "minCapacity"    # I

    .prologue
    .line 155
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    array-length v8, v8

    if-ge v8, p1, :cond_0

    .line 156
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    array-length v5, v8

    .line 157
    .local v5, "oldCapacity":I
    invoke-static {v5, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v3

    .line 159
    .local v3, "newCapacity":I
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 160
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 161
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    invoke-static {v8, v3}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 162
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    invoke-static {v8, v3}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 163
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    invoke-static {v8, v3}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 164
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    invoke-static {v8, v3}, Lcom/google/common/collect/HashBiMap;->expandAndFillWithAbsent([II)[I

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 167
    .end local v3    # "newCapacity":I
    .end local v5    # "oldCapacity":I
    :cond_0
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v8, v8

    if-ge v8, p1, :cond_1

    .line 168
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v8, v9}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v4

    .line 169
    .local v4, "newTableSize":I
    invoke-static {v4}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 170
    invoke-static {v4}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 172
    const/4 v0, 0x0

    .local v0, "entryToRehash":I
    :goto_0
    iget v8, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ge v0, v8, :cond_1

    .line 173
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v0

    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 174
    .local v2, "keyHash":I
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v1

    .line 175
    .local v1, "keyBucket":I
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v9, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v9, v9, v1

    aput v9, v8, v0

    .line 176
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aput v0, v8, v1

    .line 178
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v8, v8, v0

    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v7

    .line 179
    .local v7, "valueHash":I
    invoke-direct {p0, v7}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v6

    .line 180
    .local v6, "valueBucket":I
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v9, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v9, v9, v6

    aput v9, v8, v0

    .line 181
    iget-object v8, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aput v0, v8, v6

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "entryToRehash":I
    .end local v1    # "keyBucket":I
    .end local v2    # "keyHash":I
    .end local v4    # "newTableSize":I
    .end local v6    # "valueBucket":I
    .end local v7    # "valueHash":I
    :cond_1
    return-void
.end method

.method private static expandAndFillWithAbsent([II)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "newSize"    # I

    .prologue
    .line 140
    array-length v0, p0

    .line 141
    .local v0, "oldSize":I
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 142
    .local v1, "result":[I
    const/4 v2, -0x1

    invoke-static {v1, v0, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 143
    return-object v1
.end method

.method private insertIntoTableKToV(II)V
    .locals 3
    .param p1, "entry"    # I
    .param p2, "keyHash"    # I

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 373
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 374
    .local v0, "keyBucket":I
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 375
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aput p1, v1, v0

    .line 376
    return-void

    .line 372
    .end local v0    # "keyBucket":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertIntoTableVToK(II)V
    .locals 3
    .param p1, "entry"    # I
    .param p2, "valueHash"    # I

    .prologue
    .line 383
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 384
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    .line 385
    .local v0, "valueBucket":I
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 386
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aput p1, v1, v0

    .line 387
    return-void

    .line 383
    .end local v0    # "valueBucket":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveEntryToIndex(II)V
    .locals 13
    .param p1, "src"    # I
    .param p2, "dest"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v12, -0x1

    .line 583
    if-ne p1, p2, :cond_0

    .line 636
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v4, v10, p1

    .line 587
    .local v4, "predecessor":I
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v6, v10, p1

    .line 588
    .local v6, "successor":I
    invoke-direct {p0, v4, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 589
    invoke-direct {p0, p2, v6}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 591
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v10, p1

    .line 592
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v7, v10, p1

    .line 594
    .local v7, "value":Ljava/lang/Object;, "TV;"
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aput-object v1, v10, p2

    .line 595
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object v7, v10, p2

    .line 598
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    .line 599
    .local v3, "keyHash":I
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v2

    .line 600
    .local v2, "keyBucket":I
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v10, v10, v2

    if-ne v10, p1, :cond_1

    .line 601
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aput p2, v10, v2

    .line 614
    :goto_1
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v11, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v11, v11, p1

    aput v11, v10, p2

    .line 615
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput v12, v10, p1

    .line 618
    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v9

    .line 619
    .local v9, "valueHash":I
    invoke-direct {p0, v9}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v8

    .line 620
    .local v8, "valueBucket":I
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v10, v10, v8

    if-ne v10, p1, :cond_3

    .line 621
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aput p2, v10, v8

    .line 634
    :goto_2
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v11, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v11, v11, p1

    aput v11, v10, p2

    .line 635
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput v12, v10, p1

    goto :goto_0

    .line 603
    .end local v8    # "valueBucket":I
    .end local v9    # "valueHash":I
    :cond_1
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v5, v10, v2

    .line 604
    .local v5, "prevInBucket":I
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v0, v10, v5

    .line 607
    .local v0, "entryInBucket":I
    :goto_3
    if-ne v0, p1, :cond_2

    .line 608
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput p2, v10, v5

    goto :goto_1

    .line 611
    :cond_2
    move v5, v0

    .line 606
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v0, v10, v0

    goto :goto_3

    .line 623
    .end local v0    # "entryInBucket":I
    .end local v5    # "prevInBucket":I
    .restart local v8    # "valueBucket":I
    .restart local v9    # "valueHash":I
    :cond_3
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v5, v10, v8

    .line 624
    .restart local v5    # "prevInBucket":I
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v0, v10, v5

    .line 627
    .restart local v0    # "entryInBucket":I
    :goto_4
    if-ne v0, p1, :cond_4

    .line 628
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput p2, v10, v5

    goto :goto_2

    .line 631
    :cond_4
    move v5, v0

    .line 626
    iget-object v10, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v0, v10, v0

    goto :goto_4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1058
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 1059
    .local v0, "size":I
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 1060
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 1061
    return-void
.end method

.method private removeEntry(III)V
    .locals 5
    .param p1, "entry"    # I
    .param p2, "keyHash"    # I
    .param p3, "valueHash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 563
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    .line 565
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    .line 567
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v2, p1

    .line 568
    .local v0, "oldPredecessor":I
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v2, p1

    .line 569
    .local v1, "oldSuccessor":I
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 571
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, p1}, Lcom/google/common/collect/HashBiMap;->moveEntryToIndex(II)V

    .line 572
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v3, v3, -0x1

    aput-object v4, v2, v3

    .line 573
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v3, v3, -0x1

    aput-object v4, v2, v3

    .line 574
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 575
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 576
    return-void

    .line 563
    .end local v0    # "oldPredecessor":I
    .end local v1    # "oldSuccessor":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private replaceKeyInEntry(ILjava/lang/Object;Z)V
    .locals 9
    .param p1, "entry"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p2, "newKey":Ljava/lang/Object;, "TK;"
    const/4 v7, -0x1

    .line 475
    if-eq p1, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 476
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 477
    .local v0, "newKeyHash":I
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v1

    .line 479
    .local v1, "newKeyIndex":I
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 480
    .local v2, "newPredecessor":I
    const/4 v3, -0x2

    .line 481
    .local v3, "newSuccessor":I
    if-eq v1, v7, :cond_0

    .line 482
    if-eqz p3, :cond_4

    .line 483
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v2, v6, v1

    .line 484
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v3, v6, v1

    .line 485
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 486
    iget v6, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p1, v6, :cond_0

    .line 487
    move p1, v1

    .line 493
    :cond_0
    if-ne v2, p1, :cond_5

    .line 494
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v2, v6, p1

    .line 499
    :cond_1
    :goto_1
    if-ne v3, p1, :cond_6

    .line 500
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v3, v6, p1

    .line 505
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v4, v6, p1

    .line 506
    .local v4, "oldPredecessor":I
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v5, v6, p1

    .line 507
    .local v5, "oldSuccessor":I
    invoke-direct {p0, v4, v5}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 509
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v6, v6, p1

    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    .line 510
    iget-object v6, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aput-object p2, v6, p1

    .line 511
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 514
    invoke-direct {p0, v2, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 515
    invoke-direct {p0, p1, v3}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 516
    return-void

    .line 475
    .end local v0    # "newKeyHash":I
    .end local v1    # "newKeyIndex":I
    .end local v2    # "newPredecessor":I
    .end local v3    # "newSuccessor":I
    .end local v4    # "oldPredecessor":I
    .end local v5    # "oldSuccessor":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 490
    .restart local v0    # "newKeyHash":I
    .restart local v1    # "newKeyIndex":I
    .restart local v2    # "newPredecessor":I
    .restart local v3    # "newSuccessor":I
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key already present in map: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 495
    :cond_5
    iget v6, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v2, v6, :cond_1

    .line 496
    move v2, v1

    goto :goto_1

    .line 501
    :cond_6
    iget v6, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v3, v6, :cond_2

    .line 502
    move v3, v1

    goto :goto_2
.end method

.method private replaceValueInEntry(ILjava/lang/Object;Z)V
    .locals 5
    .param p1, "entry"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v3, -0x1

    .line 450
    if-eq p1, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 451
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, "newValueHash":I
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v1

    .line 453
    .local v1, "newValueIndex":I
    if-eq v1, v3, :cond_0

    .line 454
    if-eqz p3, :cond_2

    .line 455
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 456
    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne p1, v2, :cond_0

    .line 457
    move p1, v1

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    .line 465
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p2, v2, p1

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    .line 467
    return-void

    .line 450
    .end local v0    # "newValueHash":I
    .end local v1    # "newValueIndex":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 460
    .restart local v0    # "newValueHash":I
    .restart local v1    # "newValueIndex":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value already present in map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setSucceeds(II)V
    .locals 2
    .param p1, "prev"    # I
    .param p2, "next"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, -0x2

    .line 355
    if-ne p1, v1, :cond_0

    .line 356
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 360
    :goto_0
    if-ne p2, v1, :cond_1

    .line 361
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 365
    :goto_1
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aput p2, v0, p1

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aput p1, v0, p2

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1052
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 643
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 644
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 645
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 646
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 647
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 648
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 649
    iput v4, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 650
    iput v4, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 651
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 652
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 231
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 236
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    .line 787
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "oHash"    # I
    .param p3, "hashTable"    # [I
    .param p4, "nextInBucket"    # [I
    .param p5, "array"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v1, -0x1

    .line 221
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v2

    aget v0, p3, v2

    .local v0, "entry":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 222
    aget-object v2, p5, v0

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    .end local v0    # "entry":I
    :goto_1
    return v0

    .line 221
    .restart local v0    # "entry":I
    :cond_0
    aget v0, p4, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 226
    goto :goto_1
.end method

.method findEntryByKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method findEntryByKey(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "keyHash"    # I

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method findEntryByValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method findEntryByValue(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "valueHash"    # I

    .prologue
    .line 216
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->findEntry(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    .line 243
    .local v0, "entry":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method getInverse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    .line 249
    .local v0, "entry":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method init(I)V
    .locals 5
    .param p1, "expectedSize"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    const/4 v4, -0x2

    .line 112
    const-string v1, "expectedSize"

    invoke-static {p1, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 113
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 114
    .local v0, "tableSize":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 116
    new-array v1, p1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    .line 117
    new-array v1, p1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 120
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    .line 121
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 122
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 124
    iput v4, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 125
    iput v4, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 127
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 128
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 129
    return-void
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    .line 878
    .local v0, "result":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    .end local v0    # "result":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    .line 723
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v5, -0x1

    .line 267
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 268
    .local v1, "keyHash":I
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    .line 269
    .local v0, "entryForKey":I
    if-eq v0, v5, :cond_1

    .line 270
    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v2, v5, v0

    .line 271
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-static {v2, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p2

    .line 274
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;Z)V

    move-object p2, v2

    .line 275
    goto :goto_0

    .line 279
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    .line 280
    .local v4, "valueHash":I
    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v3

    .line 281
    .local v3, "valueEntry":I
    if-eqz p3, :cond_3

    .line 282
    if-eq v3, v5, :cond_2

    .line 283
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 289
    :cond_2
    :goto_1
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    .line 290
    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v6, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p1, v5, v6

    .line 291
    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v6, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p2, v5, v6

    .line 293
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v5, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 294
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v5, v4}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    .line 296
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget v6, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v5, v6}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 297
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 v6, -0x2

    invoke-direct {p0, v5, v6}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 298
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 299
    iget v5, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 300
    const/4 p2, 0x0

    goto :goto_0

    .line 286
    :cond_3
    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    const-string v6, "Value already present: %s"

    invoke-static {v5, v6, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, -0x1

    .line 305
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v6

    .line 306
    .local v6, "valueHash":I
    invoke-virtual {p0, p1, v6}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    .line 307
    .local v0, "entryForValue":I
    if-eq v0, v7, :cond_1

    .line 308
    iget-object v7, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v3, v7, v0

    .line 309
    .local v3, "oldKey":Ljava/lang/Object;, "TK;"
    invoke-static {v3, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    .end local v3    # "oldKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object p2

    .line 312
    .restart local v3    # "oldKey":Ljava/lang/Object;, "TK;"
    .restart local p2    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;Z)V

    move-object p2, v3

    .line 313
    goto :goto_0

    .line 317
    .end local v3    # "oldKey":Ljava/lang/Object;, "TK;"
    :cond_1
    iget v4, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 318
    .local v4, "predecessor":I
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 319
    .local v2, "keyHash":I
    invoke-virtual {p0, p2, v2}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v1

    .line 320
    .local v1, "keyEntry":I
    if-eqz p3, :cond_3

    .line 321
    if-eq v1, v7, :cond_2

    .line 322
    iget-object v7, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v4, v7, v1

    .line 323
    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 333
    :cond_2
    :goto_1
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    .line 334
    iget-object v7, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v8, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p2, v7, v8

    .line 335
    iget-object v7, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v8, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p1, v7, v8

    .line 337
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v7, v2}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    .line 338
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v7, v6}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    .line 340
    const/4 v7, -0x2

    if-ne v4, v7, :cond_5

    iget v5, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 342
    .local v5, "successor":I
    :goto_2
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v4, v7}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 343
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-direct {p0, v7, v5}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    .line 344
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 345
    iget v7, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 346
    const/4 p2, 0x0

    goto :goto_0

    .line 326
    .end local v5    # "successor":I
    :cond_3
    if-ne v1, v7, :cond_4

    const/4 v7, 0x1

    :goto_3
    const-string v8, "Key already present: %s"

    invoke-static {v7, v8, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 340
    :cond_5
    iget-object v7, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v5, v7, v4

    goto :goto_2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 523
    .local v1, "keyHash":I
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    .line 524
    .local v0, "entry":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 525
    const/4 v2, 0x0

    .line 529
    :goto_0
    return-object v2

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 528
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    goto :goto_0
.end method

.method removeEntry(I)V
    .locals 1
    .param p1, "entry"    # I

    .prologue
    .line 548
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    .line 549
    return-void
.end method

.method removeEntryKeyHashKnown(II)V
    .locals 1
    .param p1, "entry"    # I
    .param p2, "keyHash"    # I

    .prologue
    .line 553
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    .line 554
    return-void
.end method

.method removeEntryValueHashKnown(II)V
    .locals 1
    .param p1, "entry"    # I
    .param p2, "valueHash"    # I

    .prologue
    .line 558
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    .line 559
    return-void
.end method

.method removeInverse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 536
    .local v2, "valueHash":I
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    .line 537
    .local v0, "entry":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 538
    const/4 v1, 0x0

    .line 542
    :goto_0
    return-object v1

    .line 540
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 541
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Lcom/google/common/collect/HashBiMap;, "Lcom/google/common/collect/HashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    .line 755
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$ValueSet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$ValueSet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
