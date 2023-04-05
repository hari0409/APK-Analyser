.class public Lcom/afwsamples/testdpc/DelegatedAdminReceiver;
.super Landroid/app/admin/DelegatedAdminReceiver;
.source "DelegatedAdminReceiver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/admin/DelegatedAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1, p3}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onChoosePrivateKeyAlias(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p4, p5}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/ComponentName;JI)V

    .line 39
    return-void
.end method
