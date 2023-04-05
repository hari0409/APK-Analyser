.class Lcom/google/common/primitives/ImmutableLongArray$AsList;
.super Ljava/util/AbstractList;
.source "ImmutableLongArray.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final parent:Lcom/google/common/primitives/ImmutableLongArray;


# direct methods
.method private constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/common/primitives/ImmutableLongArray;

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    .line 418
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;Lcom/google/common/primitives/ImmutableLongArray$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/primitives/ImmutableLongArray;
    .param p2, "x1"    # Lcom/google/common/primitives/ImmutableLongArray$1;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableLongArray;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->indexOf(Ljava/lang/Object;)I

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

    .line 454
    instance-of v6, p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 455
    check-cast v3, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    .line 456
    .local v3, "that":Lcom/google/common/primitives/ImmutableLongArray$AsList;
    iget-object v5, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v6, v3, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v5, v6}, Lcom/google/common/primitives/ImmutableLongArray;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 473
    .end local v3    # "that":Lcom/google/common/primitives/ImmutableLongArray$AsList;
    :cond_0
    :goto_0
    return v5

    .line 459
    :cond_1
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 462
    check-cast v4, Ljava/util/List;

    .line 463
    .local v4, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 466
    iget-object v6, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-static {v6}, Lcom/google/common/primitives/ImmutableLongArray;->access$100(Lcom/google/common/primitives/ImmutableLongArray;)I

    move-result v1

    .line 468
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "element":Ljava/lang/Object;
    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-static {v7}, Lcom/google/common/primitives/ImmutableLongArray;->access$000(Lcom/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-wide v8, v7, v1

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "element":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2
    move v1, v2

    .line 472
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 473
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1}, Lcom/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 439
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray;->indexOf(J)I

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
    .line 444
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/primitives/ImmutableLongArray;->lastIndexOf(J)I

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
    .line 424
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->length()I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/primitives/ImmutableLongArray;->subArray(II)Lcom/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parent:Lcom/google/common/primitives/ImmutableLongArray;

    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
