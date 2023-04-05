.class public Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "ManageAppPermissionsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageAppPermissions"


# instance fields
.field private mAdminComponent:Landroid/content/ComponentName;

.field private mAppPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPermissionsView:Landroid/widget/TextView;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    return-void
.end method

.method private displayAppPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 155
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addNewRow()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 5

    .prologue
    .line 137
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissions:Ljava/util/List;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "delegation-permission-grant"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/Util;->hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAppPermissionsView:Landroid/widget/TextView;

    const v2, 0x7f0f0066

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    return-object v0
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 17
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 81
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v6, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 87
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x1000

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    if-eqz v2, :cond_2

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 94
    iget-object v12, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_2

    aget-object v10, v12, v11

    .line 96
    .local v10, "requestedPerm":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 97
    .local v3, "pInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_0

    .line 98
    iget v14, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v14, v14, 0xf

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 100
    iget-object v14, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v3    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 88
    .end local v10    # "requestedPerm":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "ManageAppPermissions"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not retrieve info about the package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .line 103
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v6    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "requestedPerm":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 104
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "ManageAppPermissions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not retrieve info about the permission: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "requestedPerm":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v9, "populatedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    .local v4, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 114
    .local v5, "permissionState":I
    new-instance v8, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

    invoke-direct {v8, v7, v4, v5}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .local v8, "populatedPerm":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 119
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "permissionState":I
    .end local v8    # "populatedPerm":Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->displayAppPermissions(Ljava/util/List;)V

    goto :goto_2
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected saveConfig()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
