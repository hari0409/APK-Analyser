.class Landroidx/enterprise/feedback/BufferedServiceConnection$1;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/BufferedServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/BufferedServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/enterprise/feedback/BufferedServiceConnection;

    .prologue
    .line 116
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 119
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;

    invoke-direct {v1, p0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 130
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection$1$3;

    invoke-direct {v1, p0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1$3;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method sendBufferedMessages()V
    .locals 2

    .prologue
    .line 147
    :goto_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroidx/enterprise/feedback/BufferedServiceConnection;->trySendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method
