.class Lcom/google/common/collect/CompactLinkedHashSet;
.super Lcom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I

.field private transient successor:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    .line 114
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    .line 118
    return-void
.end method

.method public static create()Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 60
    .local v0, "set":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 73
    .local v0, "set":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactLinkedHashSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private succeeds(II)V
    .locals 2
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v1, -0x2

    .line 133
    if-ne p1, v1, :cond_0

    .line 134
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 139
    :goto_0
    if-ne p2, v1, :cond_1

    .line 140
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 144
    :goto_1
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v0, p1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p1, v0, p2

    goto :goto_1
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .prologue
    .line 206
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .end local p2    # "indexRemoved":I
    :goto_0
    return p2

    .restart local p2    # "indexRemoved":I
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 169
    invoke-super {p0}, Lcom/google/common/collect/CompactHashSet;->clear()V

    .line 170
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 171
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 172
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 173
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 174
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 1
    .param p1, "entryIndex"    # I

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v0, p1

    return v0
.end method

.method init(IF)V
    .locals 3
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 122
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 123
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 124
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 126
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 127
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 128
    iput v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 129
    iput v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 130
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 149
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 150
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 151
    return-void
.end method

.method moveEntry(I)V
    .locals 4
    .param p1, "dstIndex"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v3, -0x1

    .line 155
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 156
    .local v0, "srcIndex":I
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 158
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v2, v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 159
    if-eq v0, p1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput v3, v1, v0

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v3, v1, v0

    .line 165
    return-void
.end method

.method resizeEntries(I)V
    .locals 3
    .param p1, "newCapacity"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v2, -0x1

    .line 178
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 179
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v0, v1

    .line 180
    .local v0, "oldCapacity":I
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 181
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 183
    if-ge v0, p1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    invoke-static {v1, v0, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 185
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v1, v0, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 187
    :cond_0
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashSet;, "Lcom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
