.class Lcom/google/common/collect/HashBiMap$InverseEntrySet;
.super Lcom/google/common/collect/HashBiMap$View;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InverseEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.View<",
        "Ljava/util/Map$Entry",
        "<TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/HashBiMap;

    .prologue
    .line 965
    .local p0, "this":Lcom/google/common/collect/HashBiMap$InverseEntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.InverseEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap$InverseEntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.InverseEntrySet;"
    const/4 v4, 0x0

    .line 968
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 969
    check-cast v0, Ljava/util/Map$Entry;

    .line 970
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 971
    .local v3, "v":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 972
    .local v2, "k":Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v1

    .line 973
    .local v1, "eIndex":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v5, v5, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {v5, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 975
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "eIndex":I
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return v4
.end method

.method bridge synthetic forEntry(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 965
    .local p0, "this":Lcom/google/common/collect/HashBiMap$InverseEntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.InverseEntrySet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->forEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method forEntry(I)Ljava/util/Map$Entry;
    .locals 2
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, "this":Lcom/google/common/collect/HashBiMap$InverseEntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.InverseEntrySet;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntryForValue;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/HashBiMap$EntryForValue;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 980
    .local p0, "this":Lcom/google/common/collect/HashBiMap$InverseEntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.InverseEntrySet;"
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 981
    check-cast v0, Ljava/util/Map$Entry;

    .line 982
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 983
    .local v3, "v":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 984
    .local v2, "k":Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    .line 985
    .local v4, "vHash":I
    iget-object v5, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v5, v3, v4}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v1

    .line 986
    .local v1, "eIndex":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v5, v5, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {v5, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 987
    iget-object v5, p0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v5, v1, v4}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 988
    const/4 v5, 0x1

    .line 991
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "eIndex":I
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "vHash":I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
