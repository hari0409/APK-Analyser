.class public Lcom/afwsamples/testdpc/DeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdminReceiver.java"


# static fields
.field public static final ACTION_PASSWORD_REQUIREMENTS_CHANGED:Ljava/lang/String; = "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED"

.field private static final CHANGE_PASSWORD_NOTIFICATION_ID:I = 0x65

.field private static final FAILED_PASSWORD_LOG_FILE:Ljava/lang/String; = "failed_pw_attempts_timestamps.log"

.field private static final LOGS_DIR:Ljava/lang/String; = "logs"

.field private static final PASSWORD_FAILED_NOTIFICATION_ID:I = 0x66

.field private static final TAG:Ljava/lang/String; = "DeviceAdminReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method public static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/DeviceAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getFailedPasswordAttempts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 432
    .local v5, "logFile":Ljava/io/File;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v6

    .line 438
    :cond_1
    const/4 v2, 0x0

    .line 440
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 443
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 444
    .local v4, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 445
    new-instance v7, Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 449
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 450
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v7, "DeviceAdminReceiver"

    const-string v8, "Unable to read failed password attempts"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    if-eqz v2, :cond_0

    .line 454
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 455
    :catch_1
    move-exception v1

    .line 456
    const-string v7, "DeviceAdminReceiver"

    const-string v8, "Unable to close failed password attempts log file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 448
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 452
    if-eqz v3, :cond_4

    .line 454
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v2, v3

    .line 457
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 455
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 456
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "DeviceAdminReceiver"

    const-string v8, "Unable to close failed password attempts log file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 457
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 452
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_3

    .line 454
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 457
    :cond_3
    :goto_4
    throw v7

    .line 455
    :catch_3
    move-exception v1

    .line 456
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "DeviceAdminReceiver"

    const-string v9, "Unable to close failed password attempts log file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 452
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 449
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "titleResId"    # I
    .param p4, "messageResId"    # I
    .param p5, "notificationId"    # I

    .prologue
    .line 591
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 592
    .local v1, "userManager":Landroid/os/UserManager;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 593
    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 592
    invoke-virtual {p1, p4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "message":Ljava/lang/String;
    const-string v2, "DeviceAdminReceiver"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {p1, p3, v0, p5}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 596
    return-void
.end method

.method private static isUsingUnifiedPassword(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 530
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 531
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 534
    :goto_0
    return-object v1

    .line 533
    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 534
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private static logFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    const-string v1, "logs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 427
    .local v0, "parent":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "failed_pw_attempts_timestamps.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private onDeviceOwnerChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0f034e

    .line 563
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onDeviceOwnerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    .line 564
    invoke-static {p1, v2, v0, v1}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 568
    return-void
.end method

.method private onProfileOwnerChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0f0351

    .line 555
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onProfileOwnerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 556
    invoke-static {p1, v2, v0, v1}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 560
    return-void
.end method

.method private static saveFailedPasswordAttempts(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "attempts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 468
    .local v3, "logFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 472
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 473
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 475
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 476
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 480
    .end local v1    # "date":Ljava/util/Date;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 481
    return-void
.end method

.method public static sendPasswordRequirementsChanged(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "changedIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    return-void
.end method

.method private showToast(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 599
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 603
    const-string v0, "DeviceAdminReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 605
    return-void
.end method

.method private static updatePasswordConstraintNotification(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x65

    .line 484
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 486
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v7, "user"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 488
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 526
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string v7, "notification"

    .line 495
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 497
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v3, "problems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v7

    if-nez v7, :cond_1

    .line 499
    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_1
    const-string v7, "no_unified_password"

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 503
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 504
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->isUsingUnifiedPassword(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 505
    const v7, 0x7f0f02c9

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 509
    new-instance v4, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 510
    .local v4, "style":Landroidx/core/app/NotificationCompat$InboxStyle;
    const v7, 0x7f0f02e5

    .line 511
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 510
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 512
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 513
    .local v2, "problem":Ljava/lang/CharSequence;
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_1

    .line 516
    .end local v2    # "problem":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/NotificationUtil;->getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 517
    .local v6, "warn":Landroidx/core/app/NotificationCompat$Builder;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f080072

    .line 518
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 519
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, -0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 520
    invoke-static {p0, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 522
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v1, v11, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 524
    .end local v4    # "style":Landroidx/core/app/NotificationCompat$InboxStyle;
    .end local v6    # "warn":Landroidx/core/app/NotificationCompat$Builder;
    :cond_4
    invoke-virtual {v1, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "failureCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 219
    packed-switch p3, :pswitch_data_0

    .line 227
    const v1, 0x7f0f007b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "failureReason":Ljava/lang/String;
    :goto_0
    const-string v1, "DeviceAdminReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bugreport failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const v1, 0x7f0f0080

    const v2, 0x7f0f007d

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 232
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {p1, v1, v2, v5}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 234
    return-void

    .line 221
    .end local v0    # "failureReason":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f0f007c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "failureReason":Ljava/lang/String;
    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bugreportFileHash"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 166
    const-string v0, "DeviceAdminReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bugreport shared, hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, "bugreportUri":Landroid/net/Uri;
    const-string v0, "DeviceAdminReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bugreport URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 171
    .local v5, "result":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;-><init>(Lcom/afwsamples/testdpc/DeviceAdminReceiver;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 212
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method

.method public onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 156
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "Bugreport sharing declined"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const v0, 0x7f0f0080

    const v1, 0x7f0f007f

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 157
    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 160
    return-void
.end method

.method public onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 288
    invoke-static {p1, p3}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onChoosePrivateKeyAlias(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 420
    const-string v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 421
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 422
    .local v0, "serialNumber":J
    const-string v3, "DeviceAdminReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device admin enabled in user with serial number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method public onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0, p3, p4, p5}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/ComponentName;JI)V

    .line 130
    return-void
.end method

.method public onOperationSafetyStateChanged(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reasonType"    # I
    .param p3, "safe"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 97
    const-string v3, "DeviceAdminReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOperationSafetyStateChanged(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz p3, :cond_0

    const v3, 0x7f0f02b4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "status":Ljava/lang/String;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 106
    const v3, 0x7f0f0364

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "reason":Ljava/lang/String;
    :goto_1
    const v3, 0x7f0f02b5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    return-void

    .line 98
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0f0362

    .line 99
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 103
    .restart local v2    # "status":Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f0f0363

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 408
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->updatePasswordConstraintNotification(Landroid/content/Context;)V

    .line 416
    :cond_0
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 303
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 325
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v6, "device_policy"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 315
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 317
    .local v4, "timeNow":J
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 318
    .local v2, "timeAdminExpires":J
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 320
    .local v1, "expiredBySelf":Z
    :goto_1
    const v7, 0x7f0f0237

    if-eqz v1, :cond_2

    const v6, 0x7f0f0236

    .line 321
    :goto_2
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    .line 320
    invoke-static {p1, v7, v6, v8}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    .line 318
    .end local v1    # "expiredBySelf":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 320
    .restart local v1    # "expiredBySelf":Z
    :cond_2
    const v6, 0x7f0f0235

    goto :goto_2
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 331
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 388
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v17, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 347
    .local v9, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v4

    .line 348
    .local v4, "attempts":I
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v12

    .line 350
    .local v12, "maxAttempts":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0001

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 351
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 350
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 353
    .local v15, "title":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getFailedPasswordAttempts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v14

    .line 354
    .local v14, "previousFailedAttempts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 355
    .local v7, "date":Ljava/util/Date;
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 358
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->saveFailedPasswordAttempts(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_1
    if-nez v12, :cond_1

    const v17, 0x7f0f0238

    .line 364
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "content":Ljava/lang/String;
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/afwsamples/testdpc/common/NotificationUtil;->getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v16

    .line 369
    .local v16, "warn":Landroidx/core/app/NotificationCompat$Builder;
    const v17, 0x7f080072

    invoke-virtual/range {v16 .. v17}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v17

    .line 370
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v17

    .line 371
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v17

    .line 372
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v17

    const/16 v18, -0x1

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    .line 373
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 376
    new-instance v11, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v11}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 377
    .local v11, "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    invoke-virtual {v11, v15}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 379
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v8

    .line 380
    .local v8, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 381
    .local v6, "d":Ljava/util/Date;
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_3

    .line 359
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "d":Ljava/util/Date;
    .end local v8    # "dateFormat":Ljava/text/DateFormat;
    .end local v11    # "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    .end local v16    # "warn":Landroidx/core/app/NotificationCompat$Builder;
    :catch_0
    move-exception v10

    .line 360
    .local v10, "e":Ljava/io/IOException;
    const-string v17, "DeviceAdminReceiver"

    const-string v18, "Unable to save failed password attempts"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 365
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f0d0000

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 366
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 365
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 383
    .restart local v5    # "content":Ljava/lang/String;
    .restart local v8    # "dateFormat":Ljava/text/DateFormat;
    .restart local v11    # "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    .restart local v16    # "warn":Landroidx/core/app/NotificationCompat$Builder;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 385
    const-string v17, "notification"

    .line 386
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 387
    .local v13, "nm":Landroid/app/NotificationManager;
    const/16 v17, 0x66

    invoke-virtual/range {v16 .. v16}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 394
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 402
    :cond_0
    return-void
.end method

.method public onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;

    invoke-direct {v1, p1}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, "task":Lcom/afwsamples/testdpc/provision/PostProvisioningTask;
    invoke-virtual {v1, p2}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->performPostProvisioningOperations(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v1, p2}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->getPostProvisioningLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v2, "DeviceAdminReceiver"

    const-string v3, "DeviceAdminReceiver.onProvisioningComplete() invoked, but ownership not assigned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const v2, 0x7f0f00de

    invoke-direct {p0, p1, v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 91
    :goto_1
    return-void

    .line 76
    :sswitch_0
    const-string v2, "com.afwsamples.testdpc.policy.PASSWORD_REQUIREMENTS_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "android.app.action.PROFILE_OWNER_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->updatePasswordConstraintNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 82
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onProfileOwnerChanged(Landroid/content/Context;)V

    goto :goto_1

    .line 85
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onDeviceOwnerChanged(Landroid/content/Context;)V

    goto :goto_1

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bf984ba -> :sswitch_2
        -0x54445da0 -> :sswitch_0
        0x161995ab -> :sswitch_3
        0x2f94f923 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 116
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onSecurityLogsAvailable() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const v0, 0x7f0f0212

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;I)V

    .line 118
    return-void
.end method

.method public onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 275
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    .line 276
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm:ss dd/MM/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "sdf":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "timeString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System update received at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    .end local v0    # "sdf":Ljava/text/DateFormat;
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onTransferAffiliatedProfileOwnershipComplete(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 582
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onTransferAffiliatedProfileOwnershipComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const v0, 0x7f0f034a

    const v1, 0x7f0f0349

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 585
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 583
    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 587
    return-void
.end method

.method public onTransferOwnershipComplete(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 572
    const-string v0, "DeviceAdminReceiver"

    const-string v1, "onTransferOwnershipComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const v0, 0x7f0f034c

    const v1, 0x7f0f034b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 576
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v2, v3

    .line 575
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 573
    invoke-static {p1, v0, v1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 578
    return-void
.end method

.method public onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "newUser"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 240
    const v3, 0x7f0f0214

    const v4, 0x7f0f0213

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 242
    return-void
.end method

.method public onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "removedUser"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 247
    const v3, 0x7f0f0216

    const v4, 0x7f0f0215

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 249
    return-void
.end method

.method public onUserStarted(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "startedUser"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 254
    const v3, 0x7f0f0218

    const v4, 0x7f0f0217

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 256
    return-void
.end method

.method public onUserStopped(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "stoppedUser"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 261
    const v3, 0x7f0f021a

    const v4, 0x7f0f0219

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 263
    return-void
.end method

.method public onUserSwitched(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "switchedUser"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 268
    const v3, 0x7f0f021c

    const v4, 0x7f0f021b

    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->handleUserAction(Landroid/content/Context;Landroid/os/UserHandle;III)V

    .line 270
    return-void
.end method
