.class public Lcom/afwsamples/testdpc/CommonReceiverOperations;
.super Ljava/lang/Object;
.source "CommonReceiverOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/CommonReceiverOperations$EventSavingTask;
    }
.end annotation


# static fields
.field public static final NETWORK_LOGS_FILE_PREFIX:Ljava/lang/String; = "network_logs_"

.field private static final TAG:Ljava/lang/String; = "AdminReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static final synthetic lambda$onNetworkLogsAvailable$195$CommonReceiverOperations(Ljava/util/ArrayList;Landroid/app/admin/NetworkEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/app/admin/NetworkEvent;

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onChoosePrivateKeyAlias(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne p1, v2, :cond_0

    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "override_key_selection"

    .line 59
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "chosenAlias":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Substituting private key alias: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 64
    goto :goto_0
.end method

.method public static onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/ComponentName;JI)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "batchToken"    # J
    .param p4, "networkLogsCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    const-string v5, "AdminReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNetworkLogsAvailable(), batchToken: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v5, "device_policy"

    .line 75
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 76
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    .line 78
    .local v3, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 85
    :goto_0
    if-nez v3, :cond_0

    .line 86
    const-string v5, "AdminReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve network logs batch with batchToken: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const v5, 0x7f0f0211

    new-array v6, v9, [Ljava/lang/Object;

    .line 88
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    .line 87
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "AdminReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while retrieving network logs batch with batchToken: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    const v5, 0x7f0f0210

    new-array v6, v9, [Ljava/lang/Object;

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {p0, v5}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "loggedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_1

    .line 97
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/NetworkEvent;

    .line 98
    .local v2, "event":Landroid/app/admin/NetworkEvent;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    .end local v2    # "event":Landroid/app/admin/NetworkEvent;
    :cond_1
    new-instance v5, Lcom/afwsamples/testdpc/CommonReceiverOperations$$Lambda$0;

    invoke-direct {v5, v4}, Lcom/afwsamples/testdpc/CommonReceiverOperations$$Lambda$0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    :cond_2
    new-instance v5, Lcom/afwsamples/testdpc/CommonReceiverOperations$EventSavingTask;

    invoke-direct {v5, p0, p2, p3, v4}, Lcom/afwsamples/testdpc/CommonReceiverOperations$EventSavingTask;-><init>(Landroid/content/Context;JLjava/util/ArrayList;)V

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/afwsamples/testdpc/CommonReceiverOperations$EventSavingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 137
    const v1, 0x7f0f0065

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "appName":Ljava/lang/String;
    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 141
    return-void
.end method
