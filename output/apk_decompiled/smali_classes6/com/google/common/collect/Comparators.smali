.class public final Lcom/google/common/collect/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInOrder(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    const/4 v3, 0x0

    .line 82
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :goto_1
    return v3

    .line 79
    .restart local v1    # "next":Ljava/lang/Object;, "TT;"
    .restart local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v2, v1

    .line 80
    goto :goto_0

    .line 82
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isInStrictOrder(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 99
    const/4 v3, 0x0

    .line 104
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :goto_1
    return v3

    .line 101
    .restart local v1    # "next":Ljava/lang/Object;, "TT;"
    .restart local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v2, v1

    .line 102
    goto :goto_0

    .line 104
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static lexicographical(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:TT;>(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Iterable",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    new-instance v1, Lcom/google/common/collect/LexicographicalOrdering;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, v0}, Lcom/google/common/collect/LexicographicalOrdering;-><init>(Ljava/util/Comparator;)V

    return-object v1
.end method
