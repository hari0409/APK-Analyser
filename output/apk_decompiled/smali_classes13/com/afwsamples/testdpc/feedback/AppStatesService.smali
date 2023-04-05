.class public Lcom/afwsamples/testdpc/feedback/AppStatesService;
.super Landroidx/enterprise/feedback/KeyedAppStatesService;
.source "AppStatesService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "KeyedAppStates"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Keyed App States"

.field static final TAG:Ljava/lang/String; = "KeyedAppStates"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private idMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextNotificationId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppStatesService;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->nextNotificationId:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 5

    .prologue
    .line 97
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 98
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "KeyedAppStates"

    const-string v3, "Keyed App States"

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    .local v0, "channel":Landroid/app/NotificationChannel;
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 101
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 103
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private getIdForState(Landroidx/enterprise/feedback/ReceivedKeyedAppState;)I
    .locals 4
    .param p1, "state"    # Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    iget v2, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->nextNotificationId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->nextNotificationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/feedback/AppStatesService;->idMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private showNotification(Landroidx/enterprise/feedback/ReceivedKeyedAppState;Z)V
    .locals 9
    .param p1, "state"    # Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    .param p2, "requestSync"    # Z

    .prologue
    const/4 v8, 0x2

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_0

    const-string v4, " - SYNC REQUESTED"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "logMessage":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 76
    const-string v4, "KeyedAppStates"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_1
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v4

    if-ne v4, v8, :cond_2

    const-string v3, "ERROR"

    .line 84
    .local v3, "severity":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "KeyedAppStates"

    invoke-direct {v4, p0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f08006d

    .line 86
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_4

    const-string v4, "\nSYNC REQUESTED"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 92
    .local v1, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    .line 93
    .local v2, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->getIdForState(Landroidx/enterprise/feedback/ReceivedKeyedAppState;)I

    move-result v4

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 94
    return-void

    .line 73
    .end local v0    # "logMessage":Ljava/lang/String;
    .end local v1    # "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    .end local v2    # "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    .end local v3    # "severity":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto/16 :goto_0

    .line 78
    .restart local v0    # "logMessage":Ljava/lang/String;
    :cond_1
    const-string v4, "KeyedAppStates"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getSeverity()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v3, "INFO"

    goto/16 :goto_2

    :cond_3
    const-string v3, "UNKNOWN"

    goto/16 :goto_2

    .line 90
    .restart local v3    # "severity":Ljava/lang/String;
    :cond_4
    const-string v4, ""

    goto :goto_3
.end method


# virtual methods
.method public onReceive(Ljava/util/Collection;Z)V
    .locals 5
    .param p2, "requestSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .line 54
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f0f0064

    .line 55
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    .local v0, "shouldNotify":Z
    if-nez v0, :cond_1

    .line 66
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->createNotificationChannel()V

    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    .line 64
    .local v1, "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    invoke-direct {p0, v1, p2}, Lcom/afwsamples/testdpc/feedback/AppStatesService;->showNotification(Landroidx/enterprise/feedback/ReceivedKeyedAppState;Z)V

    goto :goto_0
.end method
