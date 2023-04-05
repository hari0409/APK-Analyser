.class public Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;
.super Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;
.source "ManageAffiliationIdsFragment.java"


# instance fields
.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    const v0, 0x7f0f01be

    const v1, 0x7f0f0145

    const v2, 0x7f0f003f

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;-><init>(III)V

    .line 42
    return-void
.end method


# virtual methods
.method protected loadItems()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAffiliationIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 49
    return-void
.end method

.method protected saveItems(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1, p1}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setAffiliationIds(Ljava/util/Set;)V

    .line 61
    return-void
.end method
