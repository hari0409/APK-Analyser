.class Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/enterprise/feedback/BufferedServiceConnection$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    .prologue
    .line 130
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iput-object p2, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBeenDisconnected:Z

    .line 134
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->val$componentName:Landroid/content/ComponentName;

    .line 135
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Landroidx/enterprise/feedback/KeyedAppStatesReporter;->canPackageReceiveAppStates(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->val$service:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    .line 137
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->sendBufferedMessages()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    goto :goto_0
.end method
