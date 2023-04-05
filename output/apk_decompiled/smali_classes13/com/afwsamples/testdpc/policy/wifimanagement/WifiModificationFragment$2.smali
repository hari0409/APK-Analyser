.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;
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
    .line 198
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$100(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 202
    .local v1, "oldConf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$300(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    const v4, 0x7f0f0394

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 206
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 205
    invoke-virtual {v3, v4, v5}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$200(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$400(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$200(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
