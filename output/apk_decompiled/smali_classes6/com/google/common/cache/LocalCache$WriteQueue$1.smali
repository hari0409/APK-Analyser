.class Lcom/google/common/cache/LocalCache$WriteQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/cache/LocalCache$WriteQueue;

    .prologue
    .line 3516
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->this$0:Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3526
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 3538
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3530
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3542
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 3520
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3535
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 3536
    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3547
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "previous":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/ReferenceEntry;

    .line 3548
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 3524
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    return-void
.end method
