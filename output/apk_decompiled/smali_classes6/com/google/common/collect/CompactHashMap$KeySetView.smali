.class Lcom/google/common/collect/CompactHashMap$KeySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/CompactHashMap;

    .prologue
    .line 522
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$KeySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 551
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$KeySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    .line 552
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 530
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$KeySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CompactHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$KeySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 535
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$KeySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v1, p1}, Lcom/google/common/collect/CompactHashMap;->access$200(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    .line 536
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 537
    const/4 v1, 0x0

    .line 540
    :goto_0
    return v1

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/CompactHashMap;->access$000(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 540
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 525
    .local p0, "this":Lcom/google/common/collect/CompactHashMap$KeySetView;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->access$100(Lcom/google/common/collect/CompactHashMap;)I

    move-result v0

    return v0
.end method
