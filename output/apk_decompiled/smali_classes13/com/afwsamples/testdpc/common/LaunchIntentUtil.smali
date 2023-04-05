.class public Lcom/afwsamples/testdpc/common/LaunchIntentUtil;
.super Ljava/lang/Object;
.source "LaunchIntentUtil.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final EXTRA_AFFILIATION_ID:Ljava/lang/String; = "affiliation_id"

.field private static final EXTRA_IS_SETUP_WIZARD:Ljava/lang/String; = "is_setup_wizard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAddedAccountName(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .locals 2
    .param p0, "persistableBundle"    # Landroid/os/PersistableBundle;

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p0, :cond_0

    const-string v1, "account_name"

    .line 81
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isCosuLaunch(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "extras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    const-string v0, "cosu-demo-config-location"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSynchronousAuthLaunch(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_setup_wizard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSynchronousAuthLaunch(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "extras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    const-string v0, "is_setup_wizard"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static prepareDeviceAdminExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 4
    .param p0, "launchIntent"    # Landroid/content/Intent;
    .param p1, "newBundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "is_setup_wizard"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 92
    .local v1, "isSetupWizard":Z
    const-string v2, "is_setup_wizard"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    .line 95
    .local v0, "addedAccount":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 96
    const-string v2, "account_name"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v0    # "addedAccount":Landroid/accounts/Account;
    .end local v1    # "isSetupWizard":Z
    :cond_0
    return-void
.end method
