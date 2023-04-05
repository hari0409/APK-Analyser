.class public Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "BindDeviceAdminFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final INSTALL_CA_CERTIFICATE_REQUEST_CODE:I = 0x0

.field private static final KEY_HIDE_PO_LAUNCHER_ICON:Ljava/lang/String; = "hide_po_launcher_icon"

.field private static final KEY_INSTALL_CA_CERTIFICATE:Ljava/lang/String; = "install_ca_cert"

.field private static final KEY_PO_USER_STATUS:Ljava/lang/String; = "po_user_status"

.field private static final TAG:Ljava/lang/String; = "BindDeviceAdminFragment"


# instance fields
.field private mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper",
            "<",
            "Lcom/afwsamples/testdpc/comp/IProfileOwnerService;",
            ">;"
        }
    .end annotation
.end field

.field private mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mProfileOwnerUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private getCustomConstraint(I)Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .locals 1
    .param p1, "secondaryUserConstraint"    # I

    .prologue
    .line 110
    new-instance v0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;I)V

    return-object v0
.end method

.method private isManagedProfileOwner()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    .line 179
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isManagedProfileRunning()Z
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isManagedProfileUnlocked()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final synthetic lambda$onPreferenceChange$215$BindDeviceAdminFragment(Ljava/lang/Object;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 1
    .param p1, "service"    # Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;->setLauncherIconHidden(Z)V

    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "targetUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    .line 137
    :goto_0
    new-instance v1, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .line 138
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/afwsamples/testdpc/comp/ProfileOwnerService;

    sget-object v4, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$2;->$instance:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    iget-object v5, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .line 143
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->refreshUserStatePreference()V

    .line 144
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->refreshEnabledState()V

    .line 145
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    new-instance v2, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$3;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 150
    return-void

    .line 133
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    .line 134
    const-string v1, "BindDeviceAdminFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting to be able to bind to exactly one profile owner, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshUserStatePreference()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    if-nez v1, :cond_0

    .line 185
    const v0, 0x7f0f0291

    .line 196
    .local v0, "stringRes":I
    :goto_0
    const-string v1, "po_user_status"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    return-void

    .line 186
    .end local v0    # "stringRes":I
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    const v0, 0x7f0f0259

    .restart local v0    # "stringRes":I
    goto :goto_0

    .line 188
    .end local v0    # "stringRes":I
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const v0, 0x7f0f01ce

    .restart local v0    # "stringRes":I
    goto :goto_0

    .line 190
    .end local v0    # "stringRes":I
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    const v0, 0x7f0f01cb

    .restart local v0    # "stringRes":I
    goto :goto_0

    .line 193
    .end local v0    # "stringRes":I
    :cond_3
    const v0, 0x7f0f01c9

    .restart local v0    # "stringRes":I
    goto :goto_0
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 69
    const-string v2, "device_policy"

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 71
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final synthetic lambda$getCustomConstraint$213$BindDeviceAdminFragment(I)I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mProfileOwnerUser:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    .line 113
    const p1, 0x7f0f0291

    .line 119
    :cond_0
    :goto_0
    return p1

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->isManagedProfileUnlocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :cond_2
    const p1, 0x7f0f01ca

    goto :goto_0

    .line 119
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method final synthetic lambda$null$216$BindDeviceAdminFragment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    return-void
.end method

.method final synthetic lambda$onActivityResult$217$BindDeviceAdminFragment(Landroid/content/res/AssetFileDescriptor;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 4
    .param p2, "service"    # Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p2, p1}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;->installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v0

    .line 216
    .local v0, "isCaInstalled":Z
    if-eqz v0, :cond_0

    const v2, 0x7f0f0182

    .line 217
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "toastMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 222
    return-void

    .line 217
    .end local v1    # "toastMessage":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0f0181

    .line 218
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method final synthetic lambda$onCreatePreferences$212$BindDeviceAdminFragment(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$refresh$214$BindDeviceAdminFragment(Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V
    .locals 2
    .param p1, "service"    # Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;->isLauncherIconHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 203
    if-nez p1, :cond_0

    .line 205
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 209
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v5, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    new-instance v6, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;

    invoke-direct {v6, p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {v5, v6}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    move-result v1

    .line 223
    .local v1, "bindSuccess":Z
    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f0073

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 226
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 231
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "bindSuccess":Z
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 210
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v4    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v5, "BindDeviceAdminFragment"

    const-string v6, "Could not find certificate file"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 77
    const/high16 v0, 0x7f120000

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mUserManager:Landroid/os/UserManager;

    .line 80
    const-string v0, "hide_po_launcher_icon"

    .line 81
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 82
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v0, "install_ca_cert"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 86
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v1, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mHideLauncherIconPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    const v1, 0x7f0f0259

    .line 96
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getCustomConstraint(I)Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 99
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mInstallCaCertificatePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getCustomConstraint(I)Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 101
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 165
    :cond_1
    :goto_1
    return v0

    .line 155
    :pswitch_0
    const-string v4, "hide_po_launcher_icon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->mBindDeviceAdminServiceHelper:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    new-instance v2, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$4;

    invoke-direct {v2, p2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0073

    .line 159
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x285210d5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->refresh()V

    .line 107
    return-void
.end method
