.class abstract Lcom/google/common/collect/Cut;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Cut$AboveValue;,
        Lcom/google/common/collect/Cut$BelowValue;,
        Lcom/google/common/collect/Cut$AboveAll;,
        Lcom/google/common/collect/Cut$BelowAll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/common/collect/Cut",
        "<TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final endpoint:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p1, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 40
    return-void
.end method

.method static aboveAll()Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Lcom/google/common/collect/Cut$AboveAll;->access$100()Lcom/google/common/collect/Cut$AboveAll;

    move-result-object v0

    return-object v0
.end method

.method static aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    new-instance v0, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static belowAll()Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/google/common/collect/Cut$BelowAll;->access$000()Lcom/google/common/collect/Cut$BelowAll;

    move-result-object v0

    return-object v0
.end method

.method static belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    new-instance v0, Lcom/google/common/collect/Cut$BelowValue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Cut$BelowValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    return-object p0
.end method

.method public compareTo(Lcom/google/common/collect/Cut;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;)I"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p1, "that":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 75
    const/4 v0, -0x1

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    iget-object v2, p1, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 78
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 82
    instance-of v1, p0, Lcom/google/common/collect/Cut$AboveValue;

    instance-of v2, p1, Lcom/google/common/collect/Cut$AboveValue;

    invoke-static {v1, v2}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method abstract describeAsLowerBound(Ljava/lang/StringBuilder;)V
.end method

.method abstract describeAsUpperBound(Ljava/lang/StringBuilder;)V
.end method

.method endpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    const/4 v2, 0x0

    .line 92
    instance-of v3, p1, Lcom/google/common/collect/Cut;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 94
    check-cast v1, Lcom/google/common/collect/Cut;

    .line 96
    .local v1, "that":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    .local v0, "compareResult":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 101
    .end local v0    # "compareResult":I
    .end local v1    # "that":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_0
    :goto_0
    return v2

    .line 98
    .restart local v1    # "that":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method abstract greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method abstract isLessThan(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method abstract leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract typeAsLowerBound()Lcom/google/common/collect/BoundType;
.end method

.method abstract typeAsUpperBound()Lcom/google/common/collect/BoundType;
.end method

.method abstract withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end method

.method abstract withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end method
