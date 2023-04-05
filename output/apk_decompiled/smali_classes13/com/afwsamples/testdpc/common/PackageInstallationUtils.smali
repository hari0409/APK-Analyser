.class public Lcom/afwsamples/testdpc/common/PackageInstallationUtils;
.super Ljava/lang/Object;
.source "PackageInstallationUtils.java"


# static fields
.field public static final ACTION_INSTALL_COMPLETE:Ljava/lang/String; = "com.afwsamples.testdpc.INSTALL_COMPLETE"

.field private static final ACTION_UNINSTALL_COMPLETE:Ljava/lang/String; = "com.afwsamples.testdpc.UNINSTALL_COMPLETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInstallIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionId"    # I

    .prologue
    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.afwsamples.testdpc.INSTALL_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 70
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    return-object v1
.end method

.method private static createUninstallIntentSender(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IntentSender;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.afwsamples.testdpc.UNINSTALL_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    return-object v2
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v9

    .line 42
    .local v9, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v10, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v10, v12}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 44
    .local v10, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v10, p2}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v11

    .line 47
    .local v11, "sessionId":I
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    .line 48
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    const-string v1, "TestDPC"

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v8

    .line 49
    .local v8, "out":Ljava/io/OutputStream;
    const/high16 v1, 0x10000

    new-array v6, v1, [B

    .line 51
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "c":I
    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v8, v6, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 56
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 58
    invoke-static {p0, v11}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->createInstallIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 59
    return v12
.end method

.method public static uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 64
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    invoke-static {p0, p1}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->createUninstallIntentSender(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 65
    return-void
.end method
