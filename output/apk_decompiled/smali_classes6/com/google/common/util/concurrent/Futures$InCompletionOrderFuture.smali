.class final Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1189
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    .local p1, "state":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1190
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 1191
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/Futures$1;

    .prologue
    .line 1186
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;-><init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)V

    return-void
.end method


# virtual methods
.method protected afterDone()V
    .locals 1

    .prologue
    .line 1205
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 1206
    return-void
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "interruptIfRunning"    # Z

    .prologue
    .line 1195
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 1196
    .local v0, "localState":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$400(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V

    .line 1198
    const/4 v1, 0x1

    .line 1200
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1210
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 1211
    .local v0, "localState":Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lcom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    if-eqz v0, :cond_0

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCount=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1215
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$500(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], remaining=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1217
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$600(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
