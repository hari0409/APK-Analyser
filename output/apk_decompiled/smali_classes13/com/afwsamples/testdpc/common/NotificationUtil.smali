.class public Lcom/afwsamples/testdpc/common/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field public static final BUGREPORT_NOTIFICATION_ID:I = 0x1

.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "default_testdpc_channel"

.field public static final DEVICE_OWNER_CHANGED_ID:I = 0x9

.field public static final PASSWORD_EXPIRATION_NOTIFICATION_ID:I = 0x2

.field public static final PROFILE_OWNER_CHANGED_ID:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NotificationUtil"

.field public static final TRANSFER_AFFILIATED_PROFILE_OWNERSHIP_COMPLETE_ID:I = 0xb

.field public static final TRANSFER_OWNERSHIP_COMPLETE_ID:I = 0xa

.field public static final USER_ADDED_NOTIFICATION_ID:I = 0x3

.field public static final USER_REMOVED_NOTIFICATION_ID:I = 0x4

.field public static final USER_STARTED_NOTIFICATION_ID:I = 0x5

.field public static final USER_STOPPED_NOTIFICATION_ID:I = 0x6

.field public static final USER_SWITCHED_NOTIFICATION_ID:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultNotificationChannel(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 52
    const-string v3, "notification"

    .line 53
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 54
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const v3, 0x7f0f0065

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v3, "default_testdpc_channel"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 57
    .local v1, "channel":Landroid/app/NotificationChannel;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 58
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 59
    return-void
.end method

.method public static getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 43
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/NotificationUtil;->createDefaultNotificationChannel(Landroid/content/Context;)V

    .line 45
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "default_testdpc_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .local v0, "builder":Landroidx/core/app/NotificationCompat$Builder;
    return-object v0
.end method

.method public static showNotification(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "notificationId"    # I

    .prologue
    .line 30
    const-string v2, "notification"

    .line 31
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 32
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/NotificationUtil;->getNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f080072

    .line 33
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 36
    invoke-virtual {v3, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 38
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v1, p3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 39
    return-void
.end method
