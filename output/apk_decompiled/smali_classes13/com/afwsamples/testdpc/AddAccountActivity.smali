.class public Lcom/afwsamples/testdpc/AddAccountActivity;
.super Landroid/app/Activity;
.source "AddAccountActivity.java"


# static fields
.field public static final EXTRA_NEXT_ACTIVITY_INTENT:Ljava/lang/String; = "nextActivityIntent"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final TAG:Ljava/lang/String; = "AddAccountActivity"

.field private static final WAIT_FOR_FOREGROUND_DELAY_MS:J = 0xaL


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisallowModifyAccounts:Z

.field private mNextActivityIntent:Landroid/content/Intent;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method private accountCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string v2, "authAccount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "accountNameAdded":Ljava/lang/String;
    const-string v2, "AddAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount - accountNameAdded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, v0, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->finish()V

    .line 148
    return-void
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 101
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "authAccount"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    const-string v1, "com.google"

    new-instance v6, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$1;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;)V

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 119
    return-void
.end method

.method private disableUserRestrictions()V
    .locals 3

    .prologue
    .line 151
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 153
    const-string v0, "AddAccountActivity"

    const-string v1, "skip disabling user restriction on N or above"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "AddAccountActivity"

    const-string v1, "disabling user restrictions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_modify_accounts"

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDisallowModifyAccounts:Z

    .line 159
    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v2, "no_modify_accounts"

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreUserRestrictions()V
    .locals 3

    .prologue
    .line 164
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 166
    const-string v0, "AddAccountActivity"

    const-string v1, "skip restoring user restrictions on N or above"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v0, "AddAccountActivity"

    const-string v1, "restoring user restrictions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDisallowModifyAccounts:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v2, "no_modify_accounts"

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitForForeground(Ljava/lang/Runnable;J)V
    .locals 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .prologue
    .line 122
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Timed out waiting for foreground."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 127
    .local v0, "isAppInForeground":Z
    if-eqz v0, :cond_1

    .line 128
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;Ljava/lang/Runnable;J)V

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method final synthetic lambda$addAccount$3$AddAccountActivity(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .param p1, "accountManagerFuture"    # Landroid/accounts/AccountManagerFuture;

    .prologue
    .line 109
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 112
    .local v1, "result":Landroid/os/Bundle;
    new-instance v2, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;

    invoke-direct {v2, p0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/os/Bundle;)V

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v2, v4, v5}, Lcom/afwsamples/testdpc/AddAccountActivity;->waitForForeground(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "AddAccountActivity"

    const-string v3, "addAccount - failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const v2, 0x7f0f015b

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final synthetic lambda$null$2$AddAccountActivity(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/AddAccountActivity;->accountCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method final synthetic lambda$onNavigateNext$5$AddAccountActivity(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    .line 189
    const v2, 0x7f0900d8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 191
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "accountName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/AddAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method final synthetic lambda$waitForForeground$4$AddAccountActivity(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 131
    const-wide/16 v0, 0xa

    sub-long v0, p2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->waitForForeground(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mUserManager:Landroid/os/UserManager;

    .line 73
    const-string v2, "device_policy"

    .line 74
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 75
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 77
    const v2, 0x7f0b001d

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->setContentView(I)V

    .line 78
    const v2, 0x7f09016b

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/GlifLayout;

    .line 79
    .local v1, "layout":Lcom/android/setupwizardlib/GlifLayout;
    const v2, 0x7f09019e

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 83
    const-string v2, "nextActivityIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    .line 85
    :cond_0
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 5
    .param p1, "nextButton"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 177
    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 178
    .local v0, "addAccountOptions":Landroid/widget/RadioGroup;
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 203
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/AddAccountActivity;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0031

    .line 185
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/view/View;)V

    .line 187
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 197
    .end local v1    # "view":Landroid/view/View;
    :pswitch_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity;->mNextActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/AddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->finish()V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f09002b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    invoke-direct {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->restoreUserRestrictions()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/afwsamples/testdpc/AddAccountActivity;->disableUserRestrictions()V

    .line 91
    return-void
.end method
