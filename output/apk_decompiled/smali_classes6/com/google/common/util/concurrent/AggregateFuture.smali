.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AggregateFuture.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AggregateFuture",
            "<TInputT;TOutputT;>.RunningState;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    return-void
.end method

.method static synthetic access$400(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    return-object p1
.end method

.method private static addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 292
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 293
    .local v0, "firstTimeSeen":Z
    if-nez v0, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 303
    .end local v0    # "firstTimeSeen":Z
    :goto_1
    return v1

    .line 291
    .restart local v0    # "firstTimeSeen":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 303
    .end local v0    # "firstTimeSeen":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected final afterDone()V
    .locals 6

    .prologue
    .line 51
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->afterDone()V

    .line 52
    iget-object v2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 53
    .local v2, "localRunningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    if-eqz v2, :cond_2

    .line 55
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 57
    invoke-static {v2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 58
    .local v1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v3

    .line 60
    .local v3, "wasInterrupted":Z
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->interruptTask()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v5

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 66
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    invoke-interface {v0, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_1

    .line 64
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 70
    .end local v1    # "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    .end local v3    # "wasInterrupted":Z
    :cond_2
    return-void
.end method

.method final init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AggregateFuture",
            "<TInputT;TOutputT;>.RunningState;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "runningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 89
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$100(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 90
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    const/4 v2, 0x0

    .line 74
    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->runningState:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    .line 75
    .local v1, "localRunningState":Lcom/google/common/util/concurrent/AggregateFuture$RunningState;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>.RunningState;"
    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v2

    .line 79
    :cond_1
    invoke-static {v1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$000(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    .line 80
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    if-eqz v0, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "futures=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
