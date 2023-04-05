.class public Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;
.super Landroid/app/Activity;
.source "EnableCosuActivity.java"


# static fields
.field public static final BUNDLE_KEY_COSU_CONFIG:Ljava/lang/String; = "cosu-demo-config-location"

.field private static final MODE_CUSTOM:Ljava/lang/String; = "custom"

.field private static final MODE_DEFAULT:Ljava/lang/String; = "default"

.field private static final MODE_SINGLE:Ljava/lang/String; = "single"


# instance fields
.field private mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

.field private mConfigDownloadId:Ljava/lang/Long;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 214
    new-instance v0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;-><init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    .line 255
    new-instance v0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;-><init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    new-instance v0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;-><init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfigDownloadId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->onConfigFileDownloaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->startCosuMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/app/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    return-void
.end method

.method static synthetic access$600(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private finishWithFailure()V
    .locals 2

    .prologue
    .line 207
    const v0, 0x7f0f0307

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    .line 212
    return-void
.end method

.method private onConfigFileDownloaded()V
    .locals 6

    .prologue
    .line 120
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    const v4, 0x7f0f030a

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfigDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 133
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {p0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->createConfig(Landroid/content/Context;Ljava/io/InputStream;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    .line 134
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    if-nez v3, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 151
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "CosuSetup"

    const-string v4, "Download file not found."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const-string v3, "CosuSetup"

    const-string v4, "CosuConfig:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v3, "CosuSetup"

    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v4}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->applyPolicies(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->initiateDownloadAndInstall(Landroid/os/Handler;)V

    .line 147
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    const v4, 0x7f0f0308

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->areAllInstallsFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->startCosuMode()V

    goto :goto_0
.end method

.method private startCosuMode()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "launchIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->getMode()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "mode":Ljava/lang/String;
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfig:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->getKioskApps()[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "kioskApps":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 166
    const-string v2, "default"

    .line 168
    :cond_0
    const-string v3, "custom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "launchIntent":Landroid/content/Intent;
    const-class v3, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    const-string v3, "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 173
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v4, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 187
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 188
    const-string v3, "CosuSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No launch intent specified. Mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    .line 204
    :goto_1
    return-void

    .line 176
    :cond_2
    const-string v3, "single"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    array-length v3, v0

    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "launchIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 192
    :cond_4
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    const v3, 0x7f0f030b

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 195
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    const-string v3, "CosuSetup"

    const-string v4, "Download timeout messages remaining on handler thread."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :cond_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 75
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    const-string v5, "CosuSetup"

    const-string v6, "TestDPC is not the device owner, cannot set up COSU device."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 84
    .local v4, "persistableBundle":Landroid/os/PersistableBundle;
    if-nez v4, :cond_1

    .line 85
    const-string v5, "CosuSetup"

    const-string v6, "No admin extra bundle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finish()V

    goto :goto_0

    .line 90
    :cond_1
    const v5, 0x7f0b0033

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->setContentView(I)V

    .line 91
    const v5, 0x7f09016b

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 92
    .local v2, "layout":Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v3

    .line 93
    .local v3, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v3}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    invoke-virtual {v3}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->showProgressBar()V

    .line 96
    const v5, 0x7f090182

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    .line 98
    const-string v5, "download"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    iput-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    .line 101
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.afwsamples.testdpc.INSTALL_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    const-string v5, "cosu-demo-config-location"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "configDownloadLocation":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 109
    const-string v5, "CosuSetup"

    const-string v6, "No download-location specified"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->finishWithFailure()V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v6, v0}, Lcom/afwsamples/testdpc/cosu/CosuUtils;->startDownload(Landroid/app/DownloadManager;Landroid/os/Handler;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mConfigDownloadId:Ljava/lang/Long;

    .line 116
    iget-object v5, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->mStatusText:Landroid/widget/TextView;

    const v6, 0x7f0f0309

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
