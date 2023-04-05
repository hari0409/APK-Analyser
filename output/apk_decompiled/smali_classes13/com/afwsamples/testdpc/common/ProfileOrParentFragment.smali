.class public abstract Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "ProfileOrParentFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;
    }
.end annotation


# static fields
.field private static final EXTRA_PARENT_PROFILE:Ljava/lang/String; = "com.afwsamples.testdpc.extra.PARENT"

.field private static final LOG_TAG:Ljava/lang/String; = "ProfileOrParentFragment"

.field private static final TAG_PARENT:Ljava/lang/String; = ":parent"


# instance fields
.field private mDeviceOwner:Z

.field private mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field private mParentInstance:Z

.field private mProfileOwner:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "ProfileOrParentFragment"

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected final getAdmin()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected final getDpm()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    return-object v0
.end method

.method protected isDeviceOwner()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDeviceOwner:Z

    return v0
.end method

.method protected final isManagedProfileInstance()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mProfileOwner:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->isParentProfileInstance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isParentProfileInstance()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    return v0
.end method

.method protected isProfileOwner()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mProfileOwner:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 155
    const-string v3, "com.afwsamples.testdpc.extra.PARENT"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 159
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v3, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 162
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isProfileOwnerApp()Z

    move-result v3

    iput-boolean v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mProfileOwner:Z

    .line 163
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isDeviceOwnerApp()Z

    move-result v3

    iput-boolean v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDeviceOwner:Z

    .line 165
    iget-boolean v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    if-eqz v3, :cond_1

    .line 166
    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mDevicePolicyGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 171
    :cond_1
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    iget-boolean v3, p0, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->mParentInstance:Z

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    .line 178
    .local v2, "pm":Landroidx/preference/PreferenceManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":parent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 180
    .end local v2    # "pm":Landroidx/preference/PreferenceManager;
    :cond_2
    return-void
.end method
