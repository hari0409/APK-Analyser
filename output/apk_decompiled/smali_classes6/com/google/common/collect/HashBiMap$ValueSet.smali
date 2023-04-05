.class final Lcom/google/common/collect/HashBiMap$ValueSet;
.super Lcom/google/common/collect/HashBiMap$View;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.View<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/HashBiMap;

    .prologue
    .line 758
    .local p0, "this":Lcom/google/common/collect/HashBiMap$ValueSet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$ValueSet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 766
    .local p0, "this":Lcom/google/common/collect/HashBiMap$ValueSet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$ValueSet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method forEntry(I)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Lcom/google/common/collect/HashBiMap$ValueSet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$ValueSet;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 771
    .local p0, "this":Lcom/google/common/collect/HashBiMap$ValueSet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    .line 772
    .local v1, "oHash":I
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$ValueSet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v0

    .line 773
    .local v0, "entry":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$ValueSet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 775
    const/4 v2, 0x1

    .line 777
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
