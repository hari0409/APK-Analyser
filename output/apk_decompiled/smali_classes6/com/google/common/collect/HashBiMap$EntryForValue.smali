.class final Lcom/google/common/collect/HashBiMap$EntryForValue;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryForValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/HashBiMap;
    .param p2, "index"    # I

    .prologue
    .line 1009
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntryForValue;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntryForValue;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 1010
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    .line 1011
    iput p2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    .line 1012
    return-void
.end method

.method private updateIndex()V
    .locals 3

    .prologue
    .line 1015
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntryForValue;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntryForValue;"
    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget v1, v1, Lcom/google/common/collect/HashBiMap;->size:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    .line 1018
    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1022
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntryForValue;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntryForValue;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1027
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntryForValue;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntryForValue;"
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$EntryForValue;->updateIndex()V

    .line 1028
    iget v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntryForValue;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntryForValue;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 1033
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$EntryForValue;->updateIndex()V

    .line 1034
    iget v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 1042
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    :goto_0
    return-object p1

    .line 1037
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v0, v1, v2

    .line 1038
    .local v0, "oldKey":Ljava/lang/Object;, "TK;"
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->this$0:Lcom/google/common/collect/HashBiMap;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$EntryForValue;->index:I

    invoke-static {v1, v2, p1, v3}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V

    move-object p1, v0

    .line 1042
    goto :goto_0
.end method
