.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry",
        "<TK;",
        "Lcom/google/common/collect/MapMaker$Dummy;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
        "<TK;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry",
        "<TK;",
        "Lcom/google/common/collect/MapMaker$Dummy;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
        "<TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 680
    return-void
.end method


# virtual methods
.method copy(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
            "<TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p1, "queueForKeys":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "newNext":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public getValue()Lcom/google/common/collect/MapMaker$Dummy;
    .locals 1

    .prologue
    .line 684
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    sget-object v0, Lcom/google/common/collect/MapMaker$Dummy;->VALUE:Lcom/google/common/collect/MapMaker$Dummy;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 674
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getValue()Lcom/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lcom/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p1, "value"    # Lcom/google/common/collect/MapMaker$Dummy;

    .prologue
    .line 687
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    return-void
.end method
