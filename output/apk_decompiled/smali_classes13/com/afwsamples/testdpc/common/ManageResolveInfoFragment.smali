.class public abstract Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;
.super Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
.source "ManageResolveInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field protected mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSpinnerAdapter()Landroid/widget/SpinnerAdapter;
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;->loadResolveInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;->mResolveInfos:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/afwsamples/testdpc/common/ResolveInfoSpinnerAdapter;

    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0022

    const v3, 0x7f090116

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/ManageResolveInfoFragment;->mResolveInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/afwsamples/testdpc/common/ResolveInfoSpinnerAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-object v0
.end method

.method protected abstract loadResolveInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
