.class Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;
.super Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;
.source "ProfileOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/ProfileOwnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileOwnerServiceImpl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    .line 73
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 75
    return-void
.end method


# virtual methods
.method public installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 5
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/common/Util;->installCaCertificate(Ljava/io/InputStream;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 97
    if-eqz v1, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v2

    .line 97
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ProfileOwnerService"

    const-string v3, "Unable to install a certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 94
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :catchall_0
    move-exception v3

    move-object v4, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v3

    :catch_3
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, v2

    goto :goto_1
.end method

.method public isLauncherIconHidden()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLauncherIconHidden(Z)V
    .locals 4
    .param p1, "hidden"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 83
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
