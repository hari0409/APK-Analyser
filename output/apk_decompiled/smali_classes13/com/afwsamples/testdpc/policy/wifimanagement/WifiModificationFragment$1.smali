.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;
.super Ljava/lang/Object;
.source "WifiModificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$100(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 176
    .local v2, "oldConf":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_0

    .line 192
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 182
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->newInstance(Landroid/net/wifi/WifiConfiguration;Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    move-result-object v0

    .line 188
    .local v0, "dialog":Landroid/app/DialogFragment;
    :goto_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "wifi_config_modification"

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$200(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->newInstance(Landroid/net/wifi/WifiConfiguration;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    goto :goto_1
.end method
