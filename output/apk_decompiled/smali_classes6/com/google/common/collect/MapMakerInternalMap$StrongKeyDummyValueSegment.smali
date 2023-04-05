.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyDummyValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;",
        "Lcom/google/common/collect/MapMaker$Dummy;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry",
        "<TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment",
        "<TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry",
            "<TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment",
            "<TK;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 2099
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;Lcom/google/common/collect/MapMaker$Dummy;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 2100
    return-void
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .prologue
    .line 2092
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2110
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;Lcom/google/common/collect/MapMaker$Dummy;*>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    .end local p1    # "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;Lcom/google/common/collect/MapMaker$Dummy;*>;"
    return-object p1
.end method

.method bridge synthetic self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 2092
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;->self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2104
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    return-object p0
.end method
