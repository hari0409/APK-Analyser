.class abstract Lcom/google/common/collect/AbstractObjectCountMap;
.super Ljava/lang/Object;
.source "AbstractObjectCountMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;,
        Lcom/google/common/collect/AbstractObjectCountMap$EntrySetView;,
        Lcom/google/common/collect/AbstractObjectCountMap$Itr;,
        Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final UNSET:I = -0x1


# instance fields
.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;

.field transient modCount:I

.field transient size:I

.field transient values:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract clear()V
.end method

.method abstract containsKey(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    new-instance v0, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractObjectCountMap$KeySetView;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;)V

    return-object v0
.end method

.method entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->entrySetView:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->entrySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method firstIndex()I
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    const/4 v0, 0x0

    return v0
.end method

.method abstract get(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 152
    new-instance v0, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractObjectCountMap$MapEntry;-><init>(Lcom/google/common/collect/AbstractObjectCountMap;I)V

    return-object v0
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 142
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 147
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method abstract indexOf(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractObjectCountMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->keySetView:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->keySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method nextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method abstract put(Ljava/lang/Object;I)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation
.end method

.method abstract remove(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation
.end method

.method abstract removeEntry(I)I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation
.end method

.method size()I
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/google/common/collect/AbstractObjectCountMap;, "Lcom/google/common/collect/AbstractObjectCountMap<TK;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractObjectCountMap;->size:I

    return v0
.end method
