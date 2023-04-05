.class public Lcom/afwsamples/testdpc/SetupManagementFragment;
.super Landroid/app/Fragment;
.source "SetupManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "SetupManagementFragment"

.field private static final NO_COLOR_SPECIFIED:I = -0x1

.field private static final REQUEST_GET_LOGO:I = 0x3

.field private static final REQUEST_PROVISION_DEVICE_OWNER:I = 0x2

.field private static final REQUEST_PROVISION_MANAGED_PROFILE:I = 0x1

.field private static final STATE_COLLAPSED:[I

.field private static final STATE_EXPANDED:[I


# instance fields
.field private mColorPreviewView:Landroid/widget/ImageView;

.field private mColorValue:Landroid/widget/TextView;

.field private mCurrentColor:I

.field private mKeepAccountMigrated:Landroid/widget/CheckBox;

.field private mLogoPreviewView:Landroid/widget/ImageView;

.field private mLogoUri:Landroid/net/Uri;

.field private mLogoValue:Landroid/widget/TextView;

.field private mNavigationNextButton:Landroid/widget/Button;

.field private mParamsIndicator:Landroid/widget/ImageButton;

.field private mParamsView:Landroid/view/View;

.field private mSetupManagementMessage:Landroid/widget/TextView;

.field private mSetupOptions:Landroid/widget/RadioGroup;

.field private mSkipEncryption:Landroid/widget/CheckBox;

.field private mSkipUserConsent:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-array v0, v3, [I

    const v1, 0x7f040149

    aput v1, v0, v2

    sput-object v0, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_EXPANDED:[I

    .line 87
    new-array v0, v3, [I

    const v1, -0x7f040149

    aput v1, v0, v2

    sput-object v0, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_COLLAPSED:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    return-void
.end method

.method private canAnAppHandleGetContent()Z
    .locals 2

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGetContentIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "getContent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    return-object v0
.end method

.method private maybeLaunchProvisioning(Ljava/lang/String;I)V
    .locals 5
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 217
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "intent":Landroid/content/Intent;
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 219
    const-string v3, "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

    .line 220
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    .line 219
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    :goto_0
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeSpecifyNExtras(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 247
    :goto_1
    return-void

    .line 222
    :cond_0
    const-string v3, "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"

    .line 223
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 230
    :cond_1
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 231
    .local v1, "adminExtras":Landroid/os/PersistableBundle;
    invoke-direct {p0, v2, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeSpecifySyncAuthExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 232
    invoke-direct {p0, v2, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybePassAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 233
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifySkipUserConsent(Landroid/content/Intent;)V

    .line 234
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyKeepAccountMigrated(Landroid/content/Intent;)V

    .line 235
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifySkipEncryption(Landroid/content/Intent;)V

    .line 236
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyDefaultDisclaimers(Landroid/content/Intent;)V

    .line 238
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 239
    const-string v3, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {p0, v2, p2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 244
    :cond_3
    const v3, 0x7f0f026c

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 245
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private maybePassAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adminExtras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 277
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->passAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    .line 281
    :cond_0
    return-void
.end method

.method private maybeSpecifyNExtras(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyLogoUri(Landroid/content/Intent;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->specifyColor(Landroid/content/Intent;)V

    .line 306
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private maybeSpecifySyncAuthExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adminExtras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 251
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 253
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {v2}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    .line 259
    .local v0, "accountToMigrate":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 261
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    .line 264
    const-string v3, "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    :cond_1
    :goto_1
    invoke-static {v2, p2}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->prepareDeviceAdminExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 266
    :cond_2
    const v3, 0x7f0f01d9

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private passAffiliationIds(Landroid/content/Intent;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adminExtras"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 285
    new-instance v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, "dpmg":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAffiliationIds()Ljava/util/Set;

    move-result-object v2

    .line 287
    .local v2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 288
    .local v0, "affiliationId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 289
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 290
    .local v3, "randomGenerator":Ljava/security/SecureRandom;
    const v4, 0xf4240

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setAffiliationIds(Ljava/util/Set;)V

    .line 295
    .end local v3    # "randomGenerator":Ljava/security/SecureRandom;
    :goto_0
    const-string v4, "affiliation_id"

    invoke-virtual {p2, v4, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 293
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "affiliationId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "affiliationId":Ljava/lang/String;
    goto :goto_0
.end method

.method private static resourceToUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    const/16 v2, 0x2f

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private setProvisioningMethodsVisibility()Z
    .locals 3

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "hasProvisioningOption":Z
    const-string v1, "android.app.action.PROVISION_MANAGED_PROFILE"

    const v2, 0x7f090168

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setVisibility(Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 395
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    const v2, 0x7f090167

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setVisibility(Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 397
    return v0
.end method

.method private setProvisioningModeSpecificUI()V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 188
    iget-object v4, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 189
    .local v2, "setUpOptionId":I
    const v4, 0x7f090168

    if-ne v2, v4, :cond_3

    move v1, v0

    .line 190
    .local v1, "isManagedProfileAction":Z
    :goto_0
    const v4, 0x7f090167

    if-ne v2, v4, :cond_4

    .line 191
    .local v0, "isManagedDeviceAction":Z
    :goto_1
    iget-object v6, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v4, v7, :cond_5

    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    .line 191
    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 197
    iget-object v6, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v4, v7, :cond_6

    if-eqz v1, :cond_6

    move v4, v3

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 201
    iget-object v4, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    sget v6, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x18

    if-ge v6, v7, :cond_1

    :cond_0
    if-eqz v0, :cond_7

    sget v6, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_7

    :cond_1
    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 209
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupManagementMessage:Landroid/widget/TextView;

    const v4, 0x7f0f030f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :cond_2
    return-void

    .end local v0    # "isManagedDeviceAction":Z
    .end local v1    # "isManagedProfileAction":Z
    :cond_3
    move v1, v3

    .line 189
    goto :goto_0

    .restart local v1    # "isManagedProfileAction":Z
    :cond_4
    move v0, v3

    .line 190
    goto :goto_1

    .restart local v0    # "isManagedDeviceAction":Z
    :cond_5
    move v4, v5

    .line 194
    goto :goto_2

    :cond_6
    move v4, v5

    .line 197
    goto :goto_3

    :cond_7
    move v3, v5

    .line 201
    goto :goto_4
.end method

.method private setVisibility(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "radioButtonId"    # I

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isProvisioningAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 403
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 404
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 401
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showNoProvisioningPossibleUI()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mNavigationNextButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 380
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 381
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f026b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 384
    return-void

    .line 381
    :cond_0
    const v1, 0x7f0f026a

    goto :goto_0
.end method

.method private specifyColor(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 372
    iget v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private specifyDefaultDisclaimers(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 311
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v1, "emmBundle":Landroid/os/Bundle;
    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

    const v3, 0x7f0f00c9

    .line 313
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

    .line 315
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0001

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/SetupManagementFragment;->resourceToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 314
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v0, "companyBundle":Landroid/os/Bundle;
    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

    const v3, 0x7f0f00c8

    .line 318
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

    .line 320
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x7f0e0000

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/SetupManagementFragment;->resourceToUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 319
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 321
    const-string v2, "android.app.extra.PROVISIONING_DISCLAIMERS"

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    .end local v0    # "companyBundle":Landroid/os/Bundle;
    .end local v1    # "emmBundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private specifyKeepAccountMigrated(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 344
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 346
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const-string v0, "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 348
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 347
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    :cond_0
    return-void
.end method

.method private specifyLogoUri(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string v0, "android.app.extra.PROVISIONING_LOGO_URI"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method private specifySkipEncryption(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const-string v0, "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    .line 355
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 354
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    :cond_0
    return-void
.end method

.method private specifySkipUserConsent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    .line 335
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 336
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 339
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    :cond_0
    return-void
.end method

.method private updateColorUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 490
    iget v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorValue:Landroid/widget/TextView;

    const-string v1, "#%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 493
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorValue:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 409
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 411
    .local v0, "activity":Landroid/app/Activity;
    packed-switch p1, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 414
    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 418
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 419
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 423
    :cond_1
    const v1, 0x7f0f0269

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 428
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    .line 430
    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoPreviewView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/common/Util;->updateImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setProvisioningModeSpecificUI()V

    .line 185
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 441
    :sswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    sget-object v1, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_COLLAPSED:[I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    sget-object v1, Lcom/afwsamples/testdpc/SetupManagementFragment;->STATE_EXPANDED:[I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 446
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 450
    :sswitch_1
    iget v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    const-string v1, "SetupManagementFragment"

    const-string v2, "provisioningColor"

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/common/ColorPicker;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/ColorPicker;

    move-result-object v0

    .line 451
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "colorPicker"

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/common/ColorPicker;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :sswitch_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 439
    :sswitch_data_0
    .sparse-switch
        0x7f090073 -> :sswitch_1
        0x7f0900ed -> :sswitch_2
        0x7f090108 -> :sswitch_0
    .end sparse-switch
.end method

.method public onColorSelected(ILjava/lang/String;)V
    .locals 0
    .param p1, "colorValue"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 461
    iput p1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    .line 462
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->updateColorUi()V

    .line 463
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 100
    if-eqz p3, :cond_0

    .line 101
    const-string v5, "android.app.extra.PROVISIONING_LOGO_URI"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    .line 102
    const-string v5, "android.app.extra.PROVISIONING_MAIN_COLOR"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    .line 105
    :cond_0
    const v5, 0x7f0b0075

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 106
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f09016b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/GlifLayout;

    .line 108
    .local v2, "layout":Lcom/android/setupwizardlib/GlifLayout;
    const v5, 0x7f09019e

    invoke-virtual {v2, v5}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mNavigationNextButton:Landroid/widget/Button;

    .line 109
    iget-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mNavigationNextButton:Landroid/widget/Button;

    new-instance v6, Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$0;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/SetupManagementFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v5, 0x7f0900b1

    invoke-virtual {v2, v5}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$1;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/SetupManagementFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v5, 0x7f090169

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupManagementMessage:Landroid/widget/TextView;

    .line 113
    const v5, 0x7f09016a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    .line 114
    iget-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v5, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 115
    const v5, 0x7f090172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipUserConsent:Landroid/widget/CheckBox;

    .line 116
    const v5, 0x7f0900dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mKeepAccountMigrated:Landroid/widget/CheckBox;

    .line 117
    const v5, 0x7f090170

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSkipEncryption:Landroid/widget/CheckBox;

    .line 119
    const v5, 0x7f090107

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsView:Landroid/view/View;

    .line 120
    const v5, 0x7f090108

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    .line 121
    iget-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mParamsIndicator:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v5, 0x7f09015b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorValue:Landroid/widget/TextView;

    .line 125
    const v5, 0x7f09011d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mColorPreviewView:Landroid/widget/ImageView;

    .line 127
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->updateColorUi()V

    .line 129
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    .line 132
    .local v0, "addedAccount":Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 133
    const v5, 0x7f0900f1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v5, 0x7f0900f2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, "managedAccountName":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v0    # "addedAccount":Landroid/accounts/Account;
    .end local v3    # "managedAccountName":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-object v4

    .line 143
    .restart local v0    # "addedAccount":Landroid/accounts/Account;
    :cond_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f018e

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 467
    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mSetupOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090168

    if-ne v0, v1, :cond_0

    .line 471
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeLaunchProvisioning(Ljava/lang/String;I)V

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_0
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->maybeLaunchProvisioning(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setProvisioningMethodsVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->canAnAppHandleGetContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoValue:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoPreviewView:Landroid/widget/ImageView;

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->setProvisioningModeSpecificUI()V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/SetupManagementFragment;->showNoProvisioningPossibleUI()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    const-string v0, "android.app.extra.PROVISIONING_LOGO_URI"

    iget-object v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mLogoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    const-string v0, "android.app.extra.PROVISIONING_MAIN_COLOR"

    iget v1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment;->mCurrentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    return-void
.end method
