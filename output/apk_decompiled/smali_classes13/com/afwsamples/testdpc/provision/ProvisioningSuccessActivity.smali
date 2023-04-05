.class public Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;
.super Landroid/app/Activity;
.source "ProvisioningSuccessActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisioningSuccess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v1, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "task":Lcom/afwsamples/testdpc/provision/PostProvisioningTask;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->performPostProvisioningOperations(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->finish()V

    .line 54
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->getPostProvisioningLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningSuccessActivity;->finish()V

    goto :goto_0

    .line 48
    :cond_1
    const-string v2, "ProvisioningSuccess"

    const-string v3, "ProvisioningSuccessActivity.onCreate() invoked, but ownership not assigned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v2, 0x7f0f00de

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
