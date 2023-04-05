.class Landroidx/enterprise/feedback/BufferedServiceConnection;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BufferedServiceConnecti"

.field static final MAX_BUFFER_SIZE:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mBindIntent:Landroid/content/Intent;

.field final mBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mFlags:I

.field mHasBeenDisconnected:Z

.field private mHasBound:Z

.field mIsDead:Z

.field mMessenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bindIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    .line 59
    iput-boolean v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBeenDisconnected:Z

    .line 61
    iput-boolean v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    .line 63
    iput-boolean v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    .line 115
    new-instance v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    invoke-direct {v0, p0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection;)V

    iput-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p2, :cond_1

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    if-nez p3, :cond_2

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bindIntent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 87
    iput-object p2, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    .line 88
    iput-object p3, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBindIntent:Landroid/content/Intent;

    .line 89
    iput p4, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mFlags:I

    .line 90
    return-void
.end method


# virtual methods
.method bindService()V
    .locals 4

    .prologue
    .line 99
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each BufferedServiceConnection can only be bound once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    .line 104
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    iget v3, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 105
    return-void
.end method

.method hasBeenDisconnected()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBeenDisconnected:Z

    return v0
.end method

.method isDead()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    return v0
.end method

.method send(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_2

    .line 178
    :goto_1
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/enterprise/feedback/BufferedServiceConnection;->trySendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method trySendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BufferedServiceConnecti"

    const-string v2, "Error sending message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method unbind()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bindService must be called before unbind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    .line 112
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    return-void
.end method
