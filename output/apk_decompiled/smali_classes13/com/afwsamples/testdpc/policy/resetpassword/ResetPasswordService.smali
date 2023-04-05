.class public Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;
.super Landroid/app/Service;
.source "ResetPasswordService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$LockedBootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_PASSWORD:Ljava/lang/String; = "com.afwsamples.testdpc.RESET_PASSWORD"

.field private static final NOTIFICATION_CHANNEL:Ljava/lang/String; = "reset-password-notification"

.field private static final NOTIFICATION_FOREGROUND:I = 0x3

.field private static final NOTIFICATION_RESET_RESULT:I = 0x2

.field private static final NOTIFICATION_TAP_TO_RESET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResetPasswordService"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mNm:Landroid/app/NotificationManager;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;-><init>(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->dismissNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->doResetPassword()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "reset-password-notification"

    const v2, 0x7f0f0065

    .line 108
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 109
    .local v0, "mChannel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 110
    return-void
.end method

.method private dismissNotification()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 180
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 181
    return-void
.end method

.method private doResetPassword()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    const-string v1, "1234"

    .line 142
    .local v1, "password":Ljava/lang/String;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getActiveResetPasswordToken()[B

    move-result-object v3

    .line 144
    .local v3, "token":[B
    if-eqz v3, :cond_0

    .line 145
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "1234"

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/admin/DevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v2

    .line 151
    .local v2, "result":Z
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0065

    .line 152
    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f080072

    .line 153
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "reset-password-notification"

    .line 154
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 155
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz v2, :cond_1

    .line 156
    const v4, 0x7f0f02b0

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "1234"

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 161
    :goto_1
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    return-void

    .line 148
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "result":Z
    :cond_0
    const-string v4, "ResetPasswordService"

    const-string v5, "Cannot reset password without token"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0

    .line 159
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    const v4, 0x7f0f02af

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private getActiveResetPasswordToken()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B

    move-result-object v0

    .line 130
    .local v0, "token":[B
    if-nez v0, :cond_1

    move-object v0, v1

    .line 137
    .end local v0    # "token":[B
    :cond_0
    :goto_0
    return-object v0

    .line 133
    .restart local v0    # "token":[B
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string v2, "ResetPasswordService"

    const-string v3, "Token exists but is not activated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method private showNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.afwsamples.testdpc.RESET_PASSWORD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 167
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0065

    .line 168
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0f02ab

    .line 169
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 171
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f080072

    .line 172
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "reset-password-notification"

    .line 173
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 175
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 176
    return-void
.end method

.method private startForeground()V
    .locals 3

    .prologue
    .line 113
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0065

    .line 114
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0f02a1

    .line 115
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f080072

    .line 116
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "reset-password-notification"

    .line 117
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 119
    .local v0, "notification":Landroid/app/Notification;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->startForeground(ILandroid/app/Notification;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 83
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x3

    .line 88
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->createNotificationChannel()V

    .line 89
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->startForeground()V

    .line 91
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->getActiveResetPasswordToken()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->stopSelf()V

    .line 94
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    const/4 v1, 0x2

    .line 103
    :goto_0
    return v1

    .line 97
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "com.afwsamples.testdpc.RESET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->showNotification()V

    move v1, v2

    .line 103
    goto :goto_0
.end method
