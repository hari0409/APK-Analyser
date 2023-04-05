.class public Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "KeyValueBundleArrayFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageAppFragment;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPE:[I


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

.field private mAppName:Ljava/lang/String;

.field private mBundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialBundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->SUPPORTED_TYPE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    return-object v0
.end method

.method private clearBundleValues(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 145
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "valueObject":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 148
    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 150
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 151
    :cond_2
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 153
    :cond_3
    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 154
    check-cast v2, Landroid/os/Bundle;

    .end local v2    # "valueObject":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->clearBundleValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 157
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method public static newInstance(Ljava/lang/String;[Landroid/os/Bundle;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bundles"    # [Landroid/os/Bundle;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "initial_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 81
    const-string v2, "app_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;-><init>()V

    .line 83
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method

.method private showEditDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 170
    const/4 v0, 0x4

    .line 171
    .local v0, "type":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 172
    .local v7, "index":I
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundle #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->SUPPORTED_TYPE:[I

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAppName:Ljava/lang/String;

    move-object v3, p1

    .line 173
    invoke-static/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object v6

    .line 175
    .local v6, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v6, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 176
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v6, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 177
    return-void
.end method


# virtual methods
.method protected addNewRow()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->clearBundleValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->showEditDialog(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 6

    .prologue
    .line 165
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    .line 166
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    .line 191
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 195
    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 196
    .local v1, "value":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "index":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mKey:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "initial_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/os/Bundle;

    move-object v0, v1

    check-cast v0, [Landroid/os/Bundle;

    .line 92
    .local v0, "bundles":[Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/os/Bundle;

    .line 95
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mInitialBundleList:Ljava/util/List;

    .line 97
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAppName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0067

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAppName:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mKey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object v0
.end method

.method public onDeleteButtonClick(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public bridge synthetic onDeleteButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->onDeleteButtonClick(Landroid/os/Bundle;)V

    return-void
.end method

.method public onEditButtonClick(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->showEditDialog(Landroid/os/Bundle;)V

    .line 182
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->onEditButtonClick(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 113
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->clear()V

    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mInitialBundleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 119
    return-void
.end method

.method protected saveConfig()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key"

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v2, "value"

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->mBundleList:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/os/Bundle;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 129
    return-void
.end method
