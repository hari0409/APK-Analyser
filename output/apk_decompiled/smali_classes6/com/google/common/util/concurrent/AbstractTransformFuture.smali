.class abstract Lcom/google/common/util/concurrent/AbstractTransformFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AbstractTransformFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;,
        Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
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
            "<+TI;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    .local p1, "inputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Ljava/lang/Object;, "TF;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    .line 48
    .local v0, "output":Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 49
    return-object v0
.end method

.method static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 40
    .local v0, "output":Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method protected final afterDone()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 174
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 175
    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 176
    return-void
.end method

.method abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
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
    .locals 4

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 181
    .local v1, "localInputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 182
    .local v0, "localFunction":Ljava/lang/Object;, "TF;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputFuture=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], function=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractTransformFuture;, "Lcom/google/common/util/concurrent/AbstractTransformFuture<TI;TO;TF;TT;>;"
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 67
    .local v2, "localInputFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 68
    .local v1, "localFunction":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->isCancelled()Z

    move-result v9

    if-nez v2, :cond_0

    move v8, v6

    :goto_0
    or-int/2addr v8, v9

    if-nez v1, :cond_1

    :goto_1
    or-int/2addr v6, v8

    if-eqz v6, :cond_2

    .line 160
    :goto_2
    return-void

    :cond_0
    move v8, v7

    .line 68
    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 71
    :cond_2
    iput-object v10, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 72
    iput-object v10, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 85
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 112
    .local v3, "sourceResult":Ljava/lang/Object;, "TI;"
    :try_start_1
    invoke-virtual {p0, v1, v3}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    .line 159
    .local v5, "transformResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    .end local v3    # "sourceResult":Ljava/lang/Object;, "TI;"
    .end local v5    # "transformResult":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v7}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->cancel(Z)Z

    goto :goto_2

    .line 92
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 96
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 100
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 113
    .end local v0    # "e":Ljava/lang/Error;
    .restart local v3    # "sourceResult":Ljava/lang/Object;, "TI;"
    :catch_4
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/reflect/UndeclaredThrowableException;
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 117
    .end local v0    # "e":Ljava/lang/reflect/UndeclaredThrowableException;
    :catch_5
    move-exception v4

    .line 119
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_2
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
