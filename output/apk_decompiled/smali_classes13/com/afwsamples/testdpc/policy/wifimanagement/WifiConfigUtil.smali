.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;
.super Ljava/lang/Object;
.source "WifiConfigUtil.java"


# static fields
.field private static final INVALID_NETWORK_ID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 58
    .local v0, "networkId":I
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 67
    .end local v0    # "networkId":I
    :cond_0
    :goto_0
    return v0

    .line 61
    .restart local v0    # "networkId":I
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 63
    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveAddedWifiConfiguration(Landroid/net/wifi/WifiManager;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 64
    goto :goto_0
.end method

.method private static saveAddedWifiConfiguration(Landroid/net/wifi/WifiManager;I)Z
    .locals 2
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "networkId"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    .line 72
    .local v0, "saveConfigurationSuccess":Z
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 74
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static saveUpdatedWifiConfiguration(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    return v0
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 36
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 38
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_0

    .line 39
    invoke-static {v1, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->addWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 43
    .local v0, "networkId":I
    :goto_0
    if-ne v0, v4, :cond_1

    .line 47
    :goto_1
    return v2

    .line 41
    .end local v0    # "networkId":I
    :cond_0
    invoke-static {v1, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->updateWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .restart local v0    # "networkId":I
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 47
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static updateWifiNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 87
    .local v0, "networkId":I
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 96
    .end local v0    # "networkId":I
    :cond_0
    :goto_0
    return v0

    .line 90
    .restart local v0    # "networkId":I
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 92
    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveUpdatedWifiConfiguration(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0
.end method
