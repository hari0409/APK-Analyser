.class final Lcom/google/common/collect/LexicographicalOrdering;
.super Lcom/google/common/collect/Ordering;
.source "LexicographicalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elementOrder:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    .local p1, "elementOrder":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    .line 32
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    .local p1, "leftIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "rightIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    .local v0, "left":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 38
    .local v2, "right":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 43
    .local v1, "result":I
    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    .end local v1    # "result":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const/4 v1, -0x1

    goto :goto_0

    .line 50
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LexicographicalOrdering;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 55
    .local p0, "this":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 56
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/LexicographicalOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/google/common/collect/LexicographicalOrdering;

    .line 60
    .local v0, "that":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    iget-object v2, v0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 62
    .end local v0    # "that":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7bb78cf5

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/collect/LexicographicalOrdering;, "Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lexicographical()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
