.class Lcom/google/common/collect/CompactHashMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/CompactHashMap;

    .prologue
    .line 577
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 586
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 587
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    const/4 v2, 0x0

    .line 596
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 597
    check-cast v0, Ljava/util/Map$Entry;

    .line 598
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashMap;->access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v1

    .line 599
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 601
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "index":I
    :cond_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 591
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 606
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 607
    check-cast v0, Ljava/util/Map$Entry;

    .line 608
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v1

    .line 609
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v2, v1}, Lcom/google/common/collect/CompactHashMap;->access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 611
    const/4 v2, 0x1

    .line 614
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "index":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 581
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$EntrySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->access$100(Lcom/google/common/collect/CompactHashMap;)I

    move-result v0

    return v0
.end method
