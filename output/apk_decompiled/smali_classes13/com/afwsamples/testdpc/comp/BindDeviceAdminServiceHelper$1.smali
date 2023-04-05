.class Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;
.super Ljava/lang/Object;
.source "BindDeviceAdminServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

.field final synthetic val$listener:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .prologue
    .line 73
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    iput-object p2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->val$listener:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 76
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;"
    const-string v2, "BindDeviceAdminService"

    const-string v3, "onServiceConnected() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->access$000(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;->convert(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "service":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->val$listener:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;

    invoke-interface {v2, v1}, Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;->onServiceConnected(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->access$100(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BindDeviceAdminService"

    const-string v3, "onServiceConnected: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->access$100(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v3}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->access$100(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 89
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;"
    const-string v0, "BindDeviceAdminService"

    const-string v1, "onServiceDisconnected() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->access$100(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 91
    return-void
.end method
