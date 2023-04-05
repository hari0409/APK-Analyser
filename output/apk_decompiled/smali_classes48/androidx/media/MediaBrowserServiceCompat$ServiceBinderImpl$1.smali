.class Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$pid:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .prologue
    .line 889
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 892
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 895
    .local v7, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v7}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iget v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-direct/range {v0 .. v6}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 899
    .local v0, "connection":Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iput-object v0, v1, Landroidx/media/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 900
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iget v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v1

    iput-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 901
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->mCurConnection:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 904
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    if-nez v1, :cond_1

    .line 905
    const-string v1, "MBServiceCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No root for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 906
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 905
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :try_start_0
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v8

    .line 910
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v1, "MBServiceCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 915
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v7, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 917
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v3, v3, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroidx/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v4, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 919
    invoke-virtual {v4}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 918
    invoke-interface {v1, v2, v3, v4}, Landroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 921
    :catch_1
    move-exception v8

    .line 922
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v1, "MBServiceCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v7}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
