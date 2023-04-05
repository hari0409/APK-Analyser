.class final Lcom/google/common/collect/Iterators$3;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->consumingForArray([Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic val$elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Iterators$3;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Lcom/google/common/collect/Iterators$3;->index:I

    iget-object v1, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$3;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/Iterators$3;->index:I

    aget-object v0, v1, v2

    .line 466
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/Iterators$3;->index:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 467
    iget v1, p0, Lcom/google/common/collect/Iterators$3;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/Iterators$3;->index:I

    .line 468
    return-object v0
.end method
