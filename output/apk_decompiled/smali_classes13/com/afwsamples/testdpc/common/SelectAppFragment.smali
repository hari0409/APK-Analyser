.class public abstract Lcom/afwsamples/testdpc/common/SelectAppFragment;
.super Landroid/app/Fragment;
.source "SelectAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAppListView:Landroid/widget/ListView;

.field private mAppPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSelectedPackage:Landroid/widget/EditText;

.field private mNewSelectedPackage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract clearSelectedPackage()V
.end method

.method protected createAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 86
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v4, v3}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 89
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 90
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v1
.end method

.method protected getExtensionLayout(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 97
    const v0, 0x7f0900b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getSelectedPackage()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->setSelectedPackage(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->clearSelectedPackage()V

    .line 110
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x7f09015e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->createAppList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppPackages:Ljava/util/List;

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v2, 0x7f0b006d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mCurrentSelectedPackage:Landroid/widget/EditText;

    .line 69
    const v2, 0x7f090160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppListView:Landroid/widget/ListView;

    .line 71
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090116

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppPackages:Ljava/util/List;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 73
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    const v2, 0x7f090161

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppPackages:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    .line 55
    return-void
.end method

.method protected reloadSelectedPackage()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->getSelectedPackage()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "selectedPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mCurrentSelectedPackage:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mCurrentSelectedPackage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected abstract setSelectedPackage(Ljava/lang/String;)V
.end method
