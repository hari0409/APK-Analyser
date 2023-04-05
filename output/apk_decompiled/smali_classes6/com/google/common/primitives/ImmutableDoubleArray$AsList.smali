.class Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableDoubleArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/common/primitives/ImmutableDoubleArray;

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableDoubleArray;Lcom/google/common/primitives/ImmutableDoubleArray$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/primitives/ImmutableDoubleArray;
    .param p2, "x1"    # Lcom/google/common/primitives/ImmutableDoubleArray$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableDoubleArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->indexOf(Ljava/lang/Object;)I

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
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 457
    instance-of v6, p1, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 458
    check-cast v3, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;

    .line 459
    .local v3, "that":Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
    iget-object v5, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    iget-object v6, v3, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v5, v6}, Lcom/google/common/primitives/ImmutableDoubleArray;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 476
    .end local v3    # "that":Lcom/google/common/primitives/ImmutableDoubleArray$AsList;
    :cond_0
    :goto_0
    return v5

    .line 462
    :cond_1
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 465
    check-cast v4, Ljava/util/List;

    .line 466
    .local v4, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 469
    iget-object v6, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v6}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$100(Lcom/google/common/primitives/ImmutableDoubleArray;)I

    move-result v1

    .line 471
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 472
    .local v0, "element":Ljava/lang/Object;
    instance-of v7, v0, Ljava/lang/Double;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-static {v7}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$000(Lcom/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-wide v8, v7, v1

    check-cast v0, Ljava/lang/Double;

    .end local v0    # "element":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/google/common/primitives/ImmutableDoubleArray;->access$500(DD)Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2
    move v1, v2

    .line 475
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 476
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->get(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 442
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "target":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 447
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    check-cast p1, Ljava/lang/Double;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableDoubleArray;->lastIndexOf(D)I

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "target":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableDoubleArray;->subArray(II)Lcom/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableDoubleArray$AsList;->parent:Lcom/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableDoubleArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
