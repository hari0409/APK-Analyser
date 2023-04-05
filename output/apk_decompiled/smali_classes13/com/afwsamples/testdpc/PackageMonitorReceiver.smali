.class public Lcom/afwsamples/testdpc/PackageMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitorReceiver.java"


# static fields
.field private static final PACKAGE_CHANGED_NOTIIFICATION_ID:I = 0x8829

.field private static final TAG:Ljava/lang/String; = "PackageMonitorReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private buildNotificationText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f0222

    .line 56
    .local v0, "res":I
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 53
    .end local v0    # "res":I
    :cond_0
    const v0, 0x7f0f0227

    goto :goto_0
.end method

.method private getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 20
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/PackageMonitorReceiver;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 27
    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 28
    .local v5, "replacing":Z
    if-nez v5, :cond_0

    .line 31
    invoke-direct {p0, p1, v4, v0}, Lcom/afwsamples/testdpc/PackageMonitorReceiver;->buildNotificationText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "notificationBody":Ljava/lang/String;
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/NotificationUtil;->getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f080072

    .line 33
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f0f0223

    .line 34
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 35
    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 36
    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x4

    .line 37
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 38
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 39
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 40
    .local v1, "notification":Landroid/app/Notification;
    const-string v6, "notification"

    .line 41
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 42
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const v6, 0x8829

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
