.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field private static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient elements:[Ljava/lang/Object;

.field private transient entries:[J

.field transient loadFactor:F

.field transient modCount:I

.field private transient size:I

.field private transient table:[I

.field private transient threshold:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 163
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 164
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .prologue
    .line 171
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)[J
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-object v0
.end method

.method static synthetic access$100(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 78
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 91
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 92
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 2
    .param p0, "entry"    # J

    .prologue
    .line 200
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static getNext(J)I
    .locals 2
    .param p0, "entry"    # J

    .prologue
    .line 205
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 194
    new-array v0, p0, [J

    .line 195
    .local v0, "array":[J
    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 196
    return-object v0
.end method

.method private static newTable(I)[I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 188
    new-array v0, p0, [I

    .line 189
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 190
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 536
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 537
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 538
    .local v1, "elementCount":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 539
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 540
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 339
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v4

    and-int v2, p2, v4

    .line 340
    .local v2, "tableIndex":I
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v1, v4, v2

    .line 341
    .local v1, "next":I
    if-ne v1, v6, :cond_0

    .line 363
    :goto_0
    return v3

    .line 344
    :cond_0
    const/4 v0, -0x1

    .line 346
    .local v0, "last":I
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v4

    if-ne v4, p2, :cond_3

    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    if-ne v0, v6, :cond_2

    .line 349
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v4

    aput v4, v3, v2

    .line 355
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 356
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 357
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 358
    const/4 v3, 0x1

    goto :goto_0

    .line 352
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v6, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v4

    aput-wide v4, v3, v0

    goto :goto_1

    .line 360
    :cond_3
    move v0, v1

    .line 361
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 362
    if-ne v1, v6, :cond_1

    goto :goto_0
.end method

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .prologue
    .line 265
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v0, v2

    .line 266
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_1

    .line 267
    const/4 v2, 0x1

    ushr-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v1, v0, v2

    .line 268
    .local v1, "newCapacity":I
    if-gez v1, :cond_0

    .line 269
    const v1, 0x7fffffff

    .line 271
    :cond_0
    if-eq v1, v0, :cond_1

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 275
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 20
    .param p1, "newCapacity"    # I

    .prologue
    .line 293
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 294
    .local v12, "oldTable":[I
    array-length v9, v12

    .line 295
    .local v9, "oldCapacity":I
    const/high16 v14, 0x40000000    # 2.0f

    if-lt v9, v14, :cond_0

    .line 296
    const v14, 0x7fffffff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 315
    :goto_0
    return-void

    .line 299
    :cond_0
    move/from16 v0, p1

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/lit8 v7, v14, 0x1

    .line 300
    .local v7, "newThreshold":I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v6

    .line 301
    .local v6, "newTable":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 303
    .local v2, "entries":[J
    array-length v14, v6

    add-int/lit8 v5, v14, -0x1

    .line 304
    .local v5, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v4, v14, :cond_1

    .line 305
    aget-wide v10, v2, v4

    .line 306
    .local v10, "oldEntry":J
    invoke-static {v10, v11}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v3

    .line 307
    .local v3, "hash":I
    and-int v13, v3, v5

    .line 308
    .local v13, "tableIndex":I
    aget v8, v6, v13

    .line 309
    .local v8, "next":I
    aput v4, v6, v13

    .line 310
    int-to-long v14, v3

    const/16 v16, 0x20

    shl-long v14, v14, v16

    const-wide v16, 0xffffffffL

    int-to-long v0, v8

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    or-long v14, v14, v16

    aput-wide v14, v2, v4

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    .end local v3    # "hash":I
    .end local v8    # "next":I
    .end local v10    # "oldEntry":J
    .end local v13    # "tableIndex":I
    :cond_1
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 314
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/common/collect/CompactHashSet;->table:[I

    goto :goto_0
.end method

.method private static swapNext(JI)J
    .locals 6
    .param p0, "entry"    # J
    .param p2, "newNext"    # I

    .prologue
    .line 210
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 527
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 528
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 529
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 531
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    const/4 v11, -0x1

    .line 220
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 221
    .local v1, "entries":[J
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 222
    .local v0, "elements":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    .line 223
    .local v4, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v10

    and-int v9, v4, v10

    .line 224
    .local v9, "tableIndex":I
    iget v6, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 225
    .local v6, "newEntryIndex":I
    iget-object v10, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v8, v10, v9

    .line 226
    .local v8, "next":I
    if-ne v8, v11, :cond_0

    .line 227
    iget-object v10, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aput v6, v10, v9

    .line 241
    :goto_0
    const v10, 0x7fffffff

    if-ne v6, v10, :cond_2

    .line 242
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 232
    :cond_0
    move v5, v8

    .line 233
    .local v5, "last":I
    aget-wide v2, v1, v8

    .line 234
    .local v2, "entry":J
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v10

    if-ne v10, v4, :cond_1

    aget-object v10, v0, v8

    invoke-static {p1, v10}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 235
    const/4 v10, 0x0

    .line 252
    .end local v2    # "entry":J
    .end local v5    # "last":I
    :goto_1
    return v10

    .line 237
    .restart local v2    # "entry":J
    .restart local v5    # "last":I
    :cond_1
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v8

    .line 238
    if-ne v8, v11, :cond_0

    .line 239
    invoke-static {v2, v3, v6}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v10

    aput-wide v10, v1, v5

    goto :goto_0

    .line 244
    .end local v2    # "entry":J
    .end local v5    # "last":I
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .line 245
    .local v7, "newSize":I
    invoke-direct {p0, v7}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 246
    invoke-virtual {p0, v6, p1, v4}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 247
    iput v7, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 248
    iget v10, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    if-lt v6, v10, :cond_3

    .line 249
    iget-object v10, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {p0, v10}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 251
    :cond_3
    iget v10, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 252
    const/4 v10, 0x1

    goto :goto_1
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .prologue
    .line 419
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v4, 0x0

    .line 514
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 515
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 517
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 518
    iput v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 519
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 319
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 320
    .local v2, "hash":I
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v5

    and-int/2addr v5, v2

    aget v3, v4, v5

    .line 321
    .local v3, "next":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v0, v4, v3

    .line 323
    .local v0, "entry":J
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    const/4 v4, 0x1

    .line 328
    .end local v0    # "entry":J
    :goto_1
    return v4

    .line 326
    .restart local v0    # "entry":J
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    .line 327
    goto :goto_0

    .line 328
    .end local v0    # "entry":J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method firstEntryIndex()I
    .locals 1

    .prologue
    .line 406
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .prologue
    .line 410
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

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
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    if-ltz p1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "Initial capacity must be non-negative"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 178
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    move v3, v2

    :cond_0
    const-string v1, "Illegal load factor"

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 179
    float-to-double v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 180
    .local v0, "buckets":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 181
    iput p2, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    .line 182
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newEntries(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 184
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 185
    return-void

    .end local v0    # "buckets":I
    :cond_1
    move v1, v3

    .line 177
    goto :goto_0
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-long v2, p3

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    const-wide v4, 0xffffffffL

    or-long/2addr v2, v4

    aput-wide v2, v0, p1

    .line 260
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 261
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 472
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveEntry(I)V
    .locals 14
    .param p1, "dstIndex"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 371
    .local v6, "srcIndex":I
    if-ge p1, v6, :cond_1

    .line 373
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v9, v9, v6

    aput-object v9, v8, p1

    .line 374
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v10, v8, v6

    .line 377
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v2, v8, v6

    .line 378
    .local v2, "lastEntry":J
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v2, v8, p1

    .line 379
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v12, v8, v6

    .line 383
    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v8

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v9

    and-int v7, v8, v9

    .line 384
    .local v7, "tableIndex":I
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v4, v8, v7

    .line 385
    .local v4, "lastNext":I
    if-ne v4, v6, :cond_0

    .line 387
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aput p1, v8, v7

    .line 403
    .end local v2    # "lastEntry":J
    .end local v4    # "lastNext":I
    .end local v7    # "tableIndex":I
    :goto_0
    return-void

    .line 393
    .restart local v2    # "lastEntry":J
    .restart local v4    # "lastNext":I
    .restart local v7    # "tableIndex":I
    :cond_0
    move v5, v4

    .line 394
    .local v5, "previous":I
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v0, v8, v4

    .local v0, "entry":J
    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v4

    .line 395
    if-ne v4, v6, :cond_0

    .line 397
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v10

    aput-wide v10, v8, v5

    goto :goto_0

    .line 400
    .end local v0    # "entry":J
    .end local v2    # "lastEntry":J
    .end local v4    # "lastNext":I
    .end local v5    # "previous":I
    .end local v7    # "tableIndex":I
    :cond_1
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v10, v8, p1

    .line 401
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v12, v8, p1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 284
    .local v0, "entries":[J
    array-length v1, v0

    .line 285
    .local v1, "oldSize":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 286
    if-le p1, v1, :cond_0

    .line 287
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 289
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 290
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 467
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 477
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 8

    .prologue
    .line 491
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 492
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 493
    invoke-virtual {p0, v3}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 499
    :cond_0
    const/4 v4, 0x1

    int-to-float v5, v3

    iget v6, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 500
    .local v2, "minimumTableSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_1

    .line 501
    int-to-double v4, v3

    int-to-double v6, v2

    div-double v0, v4, v6

    .line 502
    .local v0, "load":D
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 503
    shl-int/lit8 v2, v2, 0x1

    .line 507
    .end local v0    # "load":D
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 508
    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 510
    :cond_2
    return-void
.end method
