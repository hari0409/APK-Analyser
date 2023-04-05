.class public Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
.super Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;
.source "SetTrustAgentConfigFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;,
        Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPE:[I


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/PersistableBundle;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEditingKey:Ljava/lang/String;

.field private mInitialBundle:Landroid/os/PersistableBundle;

.field private mKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->SUPPORTED_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mKeyList:Ljava/util/List;

    .line 271
    return-void
.end method

.method private getAdmin()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 147
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDevicePolicyManagerFromType(I)Landroid/app/admin/DevicePolicyManager;
    .locals 3
    .param p1, "type"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 264
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 267
    .end local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-object v0

    .restart local v0    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;-><init>()V

    .line 94
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v1
.end method

.method private setTrustAgentConfiguration()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 174
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 176
    return-void
.end method

.method private showEditDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 179
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "type":I
    const/4 v3, 0x0

    .line 182
    .local v3, "value":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    instance-of v2, v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 197
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    sget-object v4, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->SUPPORTED_TYPE:[I

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 199
    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    .line 198
    invoke-static/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object v6

    .line 200
    .local v6, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    invoke-virtual {v6, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 201
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v6, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    return-void

    .line 186
    .end local v6    # "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 189
    const/4 v0, 0x2

    goto :goto_0

    .line 190
    :cond_3
    instance-of v2, v3, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 191
    const/4 v0, 0x3

    goto :goto_0

    .line 192
    :cond_4
    instance-of v2, v3, Landroid/os/PersistableBundle;

    if-eqz v2, :cond_0

    .line 193
    const/4 v0, 0x4

    .line 194
    check-cast v3, Landroid/os/PersistableBundle;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/afwsamples/testdpc/common/BundleUtil;->persistableBundleToBundle(Landroid/os/PersistableBundle;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, "value":Landroid/os/Bundle;
    goto :goto_0
.end method

.method private updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 238
    packed-switch p1, :pswitch_data_0

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    const-string v2, "value"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    :goto_0
    return-void

    .line 243
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    const-string v2, "value"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_4
    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 253
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/BundleUtil;->bundleToPersistableBundle(Landroid/os/Bundle;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->showEditDialog(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mKeyList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    .line 126
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected loadResolveInfoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 109
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.service.trust.TrustAgentService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "trustAgentIntent":Landroid/content/Intent;
    const/16 v7, 0x80

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 113
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "agents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 115
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 116
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 117
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_0

    .line 115
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    .line 220
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 226
    .local v1, "type":I
    const-string v2, "key"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v1, v0, p3}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V

    .line 228
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v2, v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mEditingKey:Ljava/lang/String;

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mType:I

    .line 102
    iget v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mType:I

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getDevicePolicyManagerFromType(I)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 103
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    return-void
.end method

.method public bridge synthetic onDeleteButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->onDeleteButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteButtonClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->onEditButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onEditButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->showEditDialog(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 132
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 133
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    .line 134
    .local v0, "admin":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 135
    invoke-virtual {v3, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    .line 141
    :goto_0
    new-instance v3, Landroid/os/PersistableBundle;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-direct {v3, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mInitialBundle:Landroid/os/PersistableBundle;

    .line 142
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 143
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 144
    return-void

    .line 139
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    goto :goto_0
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->onSpinnerItemSelected(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mInitialBundle:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    .line 153
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 154
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 155
    return-void
.end method

.method protected saveConfig()V
    .locals 3

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->setTrustAgentConfiguration()V

    .line 160
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02b8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method
