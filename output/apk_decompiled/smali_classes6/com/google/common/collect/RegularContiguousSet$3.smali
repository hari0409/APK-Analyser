.class Lcom/google/common/collect/RegularContiguousSet$3;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/RegularContiguousSet;

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$3;, "Lcom/google/common/collect/RegularContiguousSet$3;"
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$3;, "Lcom/google/common/collect/RegularContiguousSet$3;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet$3;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$3;, "Lcom/google/common/collect/RegularContiguousSet$3;"
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    return-object v0
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$3;, "Lcom/google/common/collect/RegularContiguousSet$3;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet$3;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 134
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet$3;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-virtual {v1}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/DiscreteDomain;->offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$3;, "Lcom/google/common/collect/RegularContiguousSet$3;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularContiguousSet$3;->get(I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
