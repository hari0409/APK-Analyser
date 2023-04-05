.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WifiModificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)V
    .locals 3

    .prologue
    .line 101
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    .line 102
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1090005

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$000(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$000(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment$ConfigsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->access$000(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v1, p2

    .line 122
    check-cast v1, Landroid/widget/CheckedTextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method
