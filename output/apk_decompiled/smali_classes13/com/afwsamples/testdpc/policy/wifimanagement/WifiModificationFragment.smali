.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
.super Landroid/app/Fragment;
.source "WifiModificationFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;
    }
.end annotation


# static fields
.field private static final ARG_OWNED_NETWORKS_ONLY:Ljava/lang/String; = "owned_networks_only"

.field private static final TAG_WIFI_CONFIG_MODIFICATION:Ljava/lang/String; = "wifi_config_modification"


# instance fields
.field private mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

.field private mConfigsList:Landroid/widget/ListView;

.field private mConfiguredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOwnedNetworksOnly:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getClickedItem()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    return-void
.end method

.method public static createFragment(Z)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
    .locals 3
    .param p0, "showOwnedNetworksOnly"    # Z

    .prologue
    .line 255
    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;-><init>()V

    .line 256
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "owned_networks_only"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 259
    return-object v1
.end method

.method private getClickedItem()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 87
    .local v0, "clickedIds":[J
    array-length v5, v0

    if-nez v5, :cond_1

    move-object v1, v4

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :cond_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 91
    .local v2, "configuredNetworksSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 92
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 93
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    int-to-long v6, v5

    const/4 v5, 0x0

    aget-wide v8, v0, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object v1, v4

    .line 97
    goto :goto_0
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0390

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 244
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 248
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateConfigsList()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mShowOwnedNetworksOnly:Z

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCallerConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->notifyDataSetChanged()V

    .line 83
    return-void

    .line 77
    .end local v0    # "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "configuredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "owned_networks_only"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mShowOwnedNetworksOnly:Z

    .line 151
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 152
    const v4, 0x7f0b00bc

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 154
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0901da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    .line 155
    const v4, 0x7f0b00bb

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, "configsHeader":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 159
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    .line 160
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsAdapter:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mConfigsList:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 163
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->shouldRequestLocationPermission(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v4, v6

    invoke-virtual {p0, v4, v6}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 170
    :goto_0
    const v4, 0x7f0901ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 171
    .local v2, "updateConfigButton":Landroid/widget/Button;
    if-eqz v2, :cond_0

    .line 172
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    const v4, 0x7f090137

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 197
    .local v1, "removeConfigButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 198
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_1
    return-object v3

    .line 167
    .end local v1    # "removeConfigButton":Landroid/widget/Button;
    .end local v2    # "updateConfigButton":Landroid/widget/Button;
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    .line 223
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Location permission denied, network list unavailable."

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->showToast(Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 143
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 131
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->updateConfigsList()V

    .line 132
    return-void
.end method

.method public shouldRequestLocationPermission(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 230
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->mShowOwnedNetworksOnly:Z

    if-nez v1, :cond_0

    .line 236
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
