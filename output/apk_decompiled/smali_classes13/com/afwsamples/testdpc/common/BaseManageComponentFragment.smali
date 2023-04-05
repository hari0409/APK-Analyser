.class public abstract Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
.super Landroid/app/Fragment;
.source "BaseManageComponentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mAppListView:Landroid/widget/ListView;

.field protected mHeaderView:Landroid/widget/TextView;

.field protected mManagedAppsSpinner:Landroid/widget/Spinner;

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addNewRow()V
.end method

.method protected abstract createListAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected abstract createSpinnerAdapter()Landroid/widget/SpinnerAdapter;
.end method

.method protected abstract loadDefault()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onSpinnerItemSelected(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 107
    :sswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->resetConfig()V

    goto :goto_0

    .line 110
    :sswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->saveConfig()V

    goto :goto_0

    .line 113
    :sswitch_2
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->addNewRow()V

    goto :goto_0

    .line 116
    :sswitch_3
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->loadDefault()V

    goto :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x7f090030 -> :sswitch_2
        0x7f0900eb -> :sswitch_3
        0x7f09013a -> :sswitch_0
        0x7f090141 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    const v1, 0x7f0b0041

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mHeaderView:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    .line 65
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->createSpinnerAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;-><init>(Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 77
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAppListView:Landroid/widget/ListView;

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->createListAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAdapter:Landroid/widget/BaseAdapter;

    .line 79
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAppListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 48
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f01c0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    return-void
.end method

.method protected abstract onSpinnerItemSelected(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract resetConfig()V
.end method

.method protected abstract saveConfig()V
.end method
