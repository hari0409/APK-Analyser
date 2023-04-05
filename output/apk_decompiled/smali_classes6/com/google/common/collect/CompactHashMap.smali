.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;
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
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient entries:[J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field transient loadFactor:F

.field transient modCount:I

.field private transient size:I

.field private transient table:[I

.field private transient threshold:I

.field transient values:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 157
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 158
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 166
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;-><init>(IF)V

    .line 167
    return-void
.end method

.method constructor <init>(IF)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeEntry(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .prologue
    .line 64
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 2
    .param p0, "entry"    # J

    .prologue
    .line 205
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getNext(J)I
    .locals 2
    .param p0, "entry"    # J

    .prologue
    .line 210
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v4, -0x1

    .line 338
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 339
    .local v2, "hash":I
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v6

    and-int/2addr v6, v2

    aget v3, v5, v6

    .line 340
    .local v3, "next":I
    :goto_0
    if-eq v3, v4, :cond_1

    .line 341
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v0, v5, v3

    .line 342
    .local v0, "entry":J
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v5

    if-ne v5, v2, :cond_0

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 347
    .end local v0    # "entry":J
    .end local v3    # "next":I
    :goto_1
    return v3

    .line 345
    .restart local v0    # "entry":J
    .restart local v3    # "next":I
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v3

    .line 346
    goto :goto_0

    .end local v0    # "entry":J
    :cond_1
    move v3, v4

    .line 347
    goto :goto_1
.end method

.method private static newEntries(I)[J
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 195
    new-array v0, p0, [J

    .line 196
    .local v0, "array":[J
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 197
    return-object v0
.end method

.method private static newTable(I)[I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 189
    new-array v0, p0, [I

    .line 190
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 191
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 784
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v5}, Lcom/google/common/collect/CompactHashMap;->init(IF)V

    .line 785
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 786
    .local v0, "elementCount":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 787
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 788
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 789
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 791
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 377
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v4

    and-int v3, p2, v4

    .line 378
    .local v3, "tableIndex":I
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v1, v4, v3

    .line 379
    .local v1, "next":I
    if-ne v1, v6, :cond_0

    .line 407
    :goto_0
    return-object v2

    .line 382
    :cond_0
    const/4 v0, -0x1

    .line 384
    .local v0, "last":I
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 385
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v4, v1

    .line 390
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    if-ne v0, v6, :cond_2

    .line 392
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v5

    aput v5, v4, v3

    .line 398
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 399
    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 400
    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    goto :goto_0

    .line 395
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v6, v5, v0

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v8, v5, v1

    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v5

    invoke-static {v6, v7, v5}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v6

    aput-wide v6, v4, v0

    goto :goto_1

    .line 404
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    move v0, v1

    .line 405
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v1

    .line 406
    if-ne v1, v6, :cond_1

    goto :goto_0
.end method

.method private removeEntry(I)Ljava/lang/Object;
    .locals 4
    .param p1, "entryIndex"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .prologue
    .line 284
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v0, v2

    .line 285
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_1

    .line 286
    const/4 v2, 0x1

    ushr-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v1, v0, v2

    .line 287
    .local v1, "newCapacity":I
    if-gez v1, :cond_0

    .line 288
    const v1, 0x7fffffff

    .line 290
    :cond_0
    if-eq v1, v0, :cond_1

    .line 291
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 294
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 20
    .param p1, "newCapacity"    # I

    .prologue
    .line 313
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 314
    .local v12, "oldTable":[I
    array-length v9, v12

    .line 315
    .local v9, "oldCapacity":I
    const/high16 v14, 0x40000000    # 2.0f

    if-lt v9, v14, :cond_0

    .line 316
    const v14, 0x7fffffff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 335
    :goto_0
    return-void

    .line 319
    :cond_0
    move/from16 v0, p1

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/lit8 v7, v14, 0x1

    .line 320
    .local v7, "newThreshold":I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/CompactHashMap;->newTable(I)[I

    move-result-object v6

    .line 321
    .local v6, "newTable":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 323
    .local v2, "entries":[J
    array-length v14, v6

    add-int/lit8 v5, v14, -0x1

    .line 324
    .local v5, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v4, v14, :cond_1

    .line 325
    aget-wide v10, v2, v4

    .line 326
    .local v10, "oldEntry":J
    invoke-static {v10, v11}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v3

    .line 327
    .local v3, "hash":I
    and-int v13, v3, v5

    .line 328
    .local v13, "tableIndex":I
    aget v8, v6, v13

    .line 329
    .local v8, "next":I
    aput v4, v6, v13

    .line 330
    int-to-long v14, v3

    const/16 v16, 0x20

    shl-long v14, v14, v16

    const-wide v16, 0xffffffffL

    int-to-long v0, v8

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    or-long v14, v14, v16

    aput-wide v14, v2, v4

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    .end local v3    # "hash":I
    .end local v8    # "next":I
    .end local v10    # "oldEntry":J
    .end local v13    # "tableIndex":I
    :cond_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 334
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/common/collect/CompactHashMap;->table:[I

    goto :goto_0
.end method

.method private static swapNext(JI)J
    .locals 6
    .param p0, "entry"    # J
    .param p2, "newNext"    # I

    .prologue
    .line 215
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 774
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 777
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_0
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .prologue
    .line 466
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 760
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 761
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 764
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 765
    iput v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 766
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

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
    .line 685
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    const/4 v1, 0x1

    .line 690
    :goto_1
    return v1

    .line 685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method createEntrySet()Ljava/util/Set;
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
    .line 573
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
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
    .line 569
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method entrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method firstEntryIndex()I
    .locals 1

    .prologue
    .line 453
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .prologue
    .line 358
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 359
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 360
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .prologue
    .line 457
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method init(IF)V
    .locals 6
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    if-ltz p1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "Initial capacity must be non-negative"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 176
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    move v3, v2

    :cond_0
    const-string v1, "Illegal load factor"

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 177
    float-to-double v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 178
    .local v0, "buckets":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->newTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 179
    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    .line 181
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 182
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->newEntries(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 185
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    .line 186
    return-void

    .end local v0    # "buckets":I
    :cond_1
    move v1, v3

    .line 175
    goto :goto_0
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    int-to-long v2, p4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const-wide v4, 0xffffffffL

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 278
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 279
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 280
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 680
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 514
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method keySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method moveLastEntry(I)V
    .locals 14
    .param p1, "dstIndex"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 415
    .local v6, "srcIndex":I
    if-ge p1, v6, :cond_1

    .line 417
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v9, v9, v6

    aput-object v9, v8, p1

    .line 418
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v9, v9, v6

    aput-object v9, v8, p1

    .line 419
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object v10, v8, v6

    .line 420
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object v10, v8, v6

    .line 423
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v2, v8, v6

    .line 424
    .local v2, "lastEntry":J
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aput-wide v2, v8, p1

    .line 425
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aput-wide v12, v8, v6

    .line 429
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v8

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v9

    and-int v7, v8, v9

    .line 430
    .local v7, "tableIndex":I
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v4, v8, v7

    .line 431
    .local v4, "lastNext":I
    if-ne v4, v6, :cond_0

    .line 433
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aput p1, v8, v7

    .line 450
    .end local v2    # "lastEntry":J
    .end local v4    # "lastNext":I
    .end local v7    # "tableIndex":I
    :goto_0
    return-void

    .line 439
    .restart local v2    # "lastEntry":J
    .restart local v4    # "lastNext":I
    .restart local v7    # "tableIndex":I
    :cond_0
    move v5, v4

    .line 440
    .local v5, "previous":I
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aget-wide v0, v8, v4

    .local v0, "entry":J
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v4

    .line 441
    if-ne v4, v6, :cond_0

    .line 443
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v10

    aput-wide v10, v8, v5

    goto :goto_0

    .line 446
    .end local v0    # "entry":J
    .end local v2    # "lastEntry":J
    .end local v4    # "lastNext":I
    .end local v5    # "previous":I
    .end local v7    # "tableIndex":I
    :cond_1
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object v10, v8, p1

    .line 447
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object v10, v8, p1

    .line 448
    iget-object v8, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    aput-wide v12, v8, p1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
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
    .line 230
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 231
    .local v4, "entries":[J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 232
    .local v8, "keys":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 234
    .local v15, "values":[Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v5

    .line 235
    .local v5, "hash":I
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v16

    and-int v14, v5, v16

    .line 236
    .local v14, "tableIndex":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 237
    .local v10, "newEntryIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CompactHashMap;->table:[I

    move-object/from16 v16, v0

    aget v12, v16, v14

    .line 238
    .local v12, "next":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CompactHashMap;->table:[I

    move-object/from16 v16, v0

    aput v10, v16, v14

    .line 259
    :goto_0
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v10, v0, :cond_2

    .line 260
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 244
    :cond_0
    move v9, v12

    .line 245
    .local v9, "last":I
    aget-wide v6, v4, v12

    .line 246
    .local v6, "entry":J
    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getHash(J)I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v5, :cond_1

    aget-object v16, v8, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 249
    aget-object v13, v15, v12

    .line 251
    .local v13, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v15, v12

    .line 252
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 270
    .end local v6    # "entry":J
    .end local v9    # "last":I
    .end local v13    # "oldValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v13

    .line 255
    .restart local v6    # "entry":J
    .restart local v9    # "last":I
    :cond_1
    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashMap;->getNext(J)I

    move-result v12

    .line 256
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_0

    .line 257
    invoke-static {v6, v7, v10}, Lcom/google/common/collect/CompactHashMap;->swapNext(JI)J

    move-result-wide v16

    aput-wide v16, v4, v9

    goto :goto_0

    .line 262
    .end local v6    # "entry":J
    .end local v9    # "last":I
    :cond_2
    add-int/lit8 v11, v10, 0x1

    .line 263
    .local v11, "newSize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/common/collect/CompactHashMap;->resizeMeMaybe(I)V

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v10, v1, v2, v5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 265
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/CompactHashMap;->threshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v10, v0, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CompactHashMap;->table:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeTable(I)V

    .line 269
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/CompactHashMap;->modCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CompactHashMap;->modCount:I

    .line 270
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 367
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .prologue
    .line 301
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 302
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 304
    .local v0, "entries":[J
    array-length v1, v0

    .line 305
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 306
    if-le p1, v1, :cond_0

    .line 307
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 309
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    .line 310
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 675
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method public trimToSize()V
    .locals 8

    .prologue
    .line 737
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 738
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->entries:[J

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 739
    invoke-virtual {p0, v3}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 745
    :cond_0
    const/4 v4, 0x1

    int-to-float v5, v3

    iget v6, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 746
    .local v2, "minimumTableSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_1

    .line 747
    int-to-double v4, v3

    int-to-double v6, v2

    div-double v0, v4, v6

    .line 748
    .local v0, "load":D
    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->loadFactor:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 749
    shl-int/lit8 v2, v2, 0x1

    .line 753
    .end local v0    # "load":D
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 754
    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashMap;->resizeTable(I)V

    .line 756
    :cond_2
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    goto :goto_0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$3;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method
