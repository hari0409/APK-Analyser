.class public final Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[D

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 197
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 198
    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 5
    .param p1, "numberToAdd"    # I

    .prologue
    const/4 v4, 0x0

    .line 260
    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int v1, v2, p1

    .line 261
    .local v1, "newCount":I
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    array-length v2, v2

    invoke-static {v2, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->expandedCapacity(II)I

    move-result v2

    new-array v0, v2, [D

    .line 263
    .local v0, "newArray":[D
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iput-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 266
    .end local v0    # "newArray":[D
    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 3
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .prologue
    .line 270
    if-gez p1, :cond_0

    .line 271
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot store more than MAX_VALUE elements"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 274
    :cond_0
    shr-int/lit8 v1, p0, 0x1

    add-int/2addr v1, p0

    add-int/lit8 v0, v1, 0x1

    .line 275
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_1

    .line 276
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 278
    :cond_1
    if-gez v0, :cond_2

    .line 279
    const v0, 0x7fffffff

    .line 281
    :cond_2
    return v0
.end method


# virtual methods
.method public add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 206
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    aput-wide p1, v0, v1

    .line 207
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 208
    return-object p0
.end method

.method public addAll(Lcom/google/common/primitives/ImmutableDoubleArray;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5
    .param p1, "values"    # Lcom/google/common/primitives/ImmutableDoubleArray;

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 254
    invoke-static {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 256
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 228
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object p0

    .line 233
    .restart local p1    # "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    :cond_0
    return-object p0

    .line 230
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 231
    .local v0, "value":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->add(D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 243
    .local v0, "value":Ljava/lang/Double;
    iget-object v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    goto :goto_0

    .line 245
    .end local v0    # "value":Ljava/lang/Double;
    :cond_0
    return-object p0
.end method

.method public addAll([D)Lcom/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 4
    .param p1, "values"    # [D

    .prologue
    .line 216
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 217
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 219
    return-object p0
.end method

.method public build()Lcom/google/common/primitives/ImmutableDoubleArray;
    .locals 5
    .annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .prologue
    .line 294
    iget v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$200()Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/ImmutableDoubleArray;-><init>([DIILcom/google/common/primitives/ImmutableDoubleArray$1;)V

    goto :goto_0
.end method
