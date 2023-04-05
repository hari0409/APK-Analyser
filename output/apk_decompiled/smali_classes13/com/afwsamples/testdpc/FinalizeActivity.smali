.class public Lcom/afwsamples/testdpc/FinalizeActivity;
.super Landroid/app/Activity;
.source "FinalizeActivity.java"


# instance fields
.field private mFinishButton:Landroid/widget/Button;

.field private mSetupWizardLayout:Lcom/android/setupwizardlib/GlifLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAddedAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "addedAccount":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 95
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccountName(Landroid/os/PersistableBundle;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method

.method private isAccountMigrated(Ljava/lang/String;)Z
    .locals 6
    .param p1, "addedAccount"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 103
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 104
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    const/4 v2, 0x1

    .line 108
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return v2

    .line 103
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-nez p1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 47
    invoke-static {p0}, Lcom/afwsamples/testdpc/provision/ProvisioningUtil;->enableProfile(Landroid/content/Context;)V

    .line 50
    :cond_0
    const v8, 0x7f0b0037

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->setContentView(I)V

    .line 51
    const v8, 0x7f09016b

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/setupwizardlib/GlifLayout;

    iput-object v8, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mSetupWizardLayout:Lcom/android/setupwizardlib/GlifLayout;

    .line 52
    iget-object v8, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mSetupWizardLayout:Lcom/android/setupwizardlib/GlifLayout;

    const v9, 0x7f09019e

    invoke-virtual {v8, v9}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mFinishButton:Landroid/widget/Button;

    .line 53
    iget-object v8, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mFinishButton:Landroid/widget/Button;

    const v9, 0x7f0f0166

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget-object v8, p0, Lcom/afwsamples/testdpc/FinalizeActivity;->mFinishButton:Landroid/widget/Button;

    new-instance v9, Lcom/afwsamples/testdpc/FinalizeActivity$$Lambda$0;

    invoke-direct {v9, p0}, Lcom/afwsamples/testdpc/FinalizeActivity$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/FinalizeActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v8, 0x7f09004a

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 59
    .local v2, "appIcon":Landroid/widget/ImageView;
    const v8, 0x7f09004b

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    .local v3, "appLabel":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 63
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 62
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 64
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->getAddedAccountName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "addedAccount":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/FinalizeActivity;->isAccountMigrated(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 75
    const v8, 0x7f090011

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "accountMigrationStatusLayout":Landroid/view/View;
    :goto_1
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v8, 0x7f0900f2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 82
    .local v6, "managedAccountName":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v0    # "accountMigrationStatusLayout":Landroid/view/View;
    .end local v6    # "managedAccountName":Landroid/widget/TextView;
    :cond_1
    const v8, 0x7f0900b4

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f0f0045

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 88
    return-void

    .line 66
    .end local v1    # "addedAccount":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 67
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "TestDPC"

    const-string v9, "Couldn\'t look up our own package?!?!"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "addedAccount":Ljava/lang/String;
    :cond_2
    const v8, 0x7f090010

    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/FinalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "accountMigrationStatusLayout":Landroid/view/View;
    goto :goto_1

    .line 85
    .end local v0    # "accountMigrationStatusLayout":Landroid/view/View;
    :cond_3
    const v9, 0x7f0f0046

    goto :goto_2
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 1
    .param p1, "nextButton"    # Landroid/view/View;

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/FinalizeActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/FinalizeActivity;->finish()V

    .line 114
    return-void
.end method
