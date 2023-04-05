.class public Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "KeyValueBundleFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageAppFragment;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPE:[I


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

.field private mAppName:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mEditingKey:Ljava/lang/String;

.field private mInitialBundle:Landroid/os/Bundle;

.field private mKey:Ljava/lang/String;

.field mKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->SUPPORTED_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 211
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "initial_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    const-string v2, "app_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;-><init>()V

    .line 91
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private showEditDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 155
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "type":I
    const/4 v3, 0x0

    .line 158
    .local v3, "value":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    instance-of v2, v3, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 174
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    sget-object v4, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->SUPPORTED_TYPE:[I

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAppName:Ljava/lang/String;

    move-object v2, p1

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object v6

    .line 177
    .local v6, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    invoke-virtual {v6, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 178
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v6, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 179
    return-void

    .line 162
    .end local v6    # "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 165
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :cond_3
    instance-of v2, v3, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 167
    const/4 v0, 0x3

    goto :goto_0

    .line 168
    :cond_4
    instance-of v2, v3, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 169
    const/4 v0, 0x4

    goto :goto_0

    .line 170
    :cond_5
    instance-of v2, v3, [Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 171
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    :goto_0
    return-void

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_4
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 243
    :pswitch_5
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->showEditDialog(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKeyList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    .line 124
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadDefault()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    .line 193
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "type":I
    const-string v2, "key"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, v1, v0, p3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->updateBundleFromResultIntent(ILjava/lang/String;Landroid/content/Intent;)V

    .line 201
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {v2, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 205
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->notifyDataSetChanged()V

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mEditingKey:Ljava/lang/String;

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAppName:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKey:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    .line 101
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    .line 104
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mInitialBundle:Landroid/os/Bundle;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKeyList:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKeyList:Ljava/util/List;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0067

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAppName:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-object v0
.end method

.method public bridge synthetic onDeleteButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->onDeleteButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onDeleteButtonClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->onEditButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onEditButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->showEditDialog(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 128
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->clear()V

    .line 133
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mAdapter:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mInitialBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment$StringEditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 134
    return-void
.end method

.method protected saveConfig()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key"

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "value"

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 144
    return-void
.end method
