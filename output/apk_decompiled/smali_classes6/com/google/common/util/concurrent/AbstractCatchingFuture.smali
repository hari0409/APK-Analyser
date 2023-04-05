.class abstract Lcom/google/common/util/concurrent/AbstractCatchingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AbstractCatchingFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;,
        Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field exceptionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TX;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field fallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    .local p1, "inputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p3, "fallback":Ljava/lang/Object;, "TF;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 64
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 65
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/base/Function",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TX;+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;)V

    .line 39
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 40
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 49
    .local v0, "future":Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 147
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 148
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 149
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method abstract doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 121
    .local v2, "localInputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 122
    .local v0, "localExceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 123
    .local v1, "localFallback":Ljava/lang/Object;, "TF;"
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], exceptionType=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], fallback=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 14

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractCatchingFuture;, "Lcom/google/common/util/concurrent/AbstractCatchingFuture<TV;TX;TF;TT;>;"
    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 70
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 71
    .local v5, "localInputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 72
    .local v3, "localExceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 73
    .local v4, "localFallback":Ljava/lang/Object;, "TF;"
    if-nez v5, :cond_0

    move v12, v9

    :goto_0
    if-nez v3, :cond_1

    move v11, v9

    :goto_1
    or-int/2addr v11, v12

    if-nez v4, :cond_2

    :goto_2
    or-int/2addr v9, v11

    .line 76
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->isCancelled()Z

    move-result v10

    or-int/2addr v9, v10

    if-eqz v9, :cond_3

    .line 116
    :goto_3
    return-void

    :cond_0
    move v12, v10

    .line 73
    goto :goto_0

    :cond_1
    move v11, v10

    goto :goto_1

    :cond_2
    move v9, v10

    goto :goto_2

    .line 79
    :cond_3
    iput-object v13, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 80
    iput-object v13, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    .line 81
    iput-object v13, p0, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    .line 84
    const/4 v6, 0x0

    .line 85
    .local v6, "sourceResult":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 87
    .local v8, "throwable":Ljava/lang/Throwable;
    :try_start_0
    invoke-static {v5}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 94
    .end local v6    # "sourceResult":Ljava/lang/Object;, "TV;"
    :goto_4
    if-nez v8, :cond_4

    .line 95
    invoke-virtual {p0, v6}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->set(Ljava/lang/Object;)Z

    goto :goto_3

    .line 88
    .restart local v6    # "sourceResult":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "throwable":Ljava/lang/Throwable;
    check-cast v8, Ljava/lang/Throwable;

    .line 92
    .restart local v8    # "throwable":Ljava/lang/Throwable;
    goto :goto_4

    .line 90
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Throwable;
    move-object v8, v1

    goto :goto_4

    .line 99
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v6    # "sourceResult":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-static {v8, v3}, Lcom/google/common/util/concurrent/Platform;->isInstanceOfThrowableClass(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 100
    invoke-virtual {p0, v8}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 106
    :cond_5
    move-object v0, v8

    .line 109
    .local v0, "castThrowable":Ljava/lang/Throwable;, "TX;"
    :try_start_1
    invoke-virtual {p0, v4, v0}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 115
    .local v2, "fallbackResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 110
    .end local v2    # "fallbackResult":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v7

    .line 111
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3
.end method

.method abstract setResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
