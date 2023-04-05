.class final Lcom/google/common/collect/Iterables$6;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 870
    iget-object v3, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 871
    iget-object v1, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    check-cast v1, Ljava/util/List;

    .line 872
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 873
    .local v2, "toSkip":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 884
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "toSkip":I
    :goto_0
    return-object v3

    .line 875
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/Iterables$6;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 877
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    iget v3, p0, Lcom/google/common/collect/Iterables$6;->val$numberToSkip:I

    invoke-static {v0, v3}, Lcom/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 884
    new-instance v3, Lcom/google/common/collect/Iterables$6$1;

    invoke-direct {v3, p0, v0}, Lcom/google/common/collect/Iterables$6$1;-><init>(Lcom/google/common/collect/Iterables$6;Ljava/util/Iterator;)V

    goto :goto_0
.end method
