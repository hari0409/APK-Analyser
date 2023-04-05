.class Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;
.super Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;
.source "DeviceOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/DeviceOwnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceOwnerServiceImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/afwsamples/testdpc/comp/DeviceOwnerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/comp/DeviceOwnerService$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public notifyUserIsUnlocked(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "callingUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 59
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 60
    .local v0, "userSerialNumber":J
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0f025b

    iget-object v4, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0f025a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v2, v3, v4, v8}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 62
    const-string v2, "DeviceOwnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUserIsUnlocked() called for user with serial "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
