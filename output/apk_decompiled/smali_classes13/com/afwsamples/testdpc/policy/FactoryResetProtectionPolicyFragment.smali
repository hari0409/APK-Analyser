.class public Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;
.super Landroid/app/Fragment;
.source "FactoryResetProtectionPolicyFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;
    }
.end annotation


# static fields
.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnabled:Z

.field private mFrpEnabledSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccounts:Ljava/util/List;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method private refreshUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->clear()V

    .line 107
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 109
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 110
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v0

    .line 111
    .local v0, "mFrpPolicy":Landroid/app/admin/FactoryResetProtectionPolicy;
    if-eqz v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v0}, Landroid/app/admin/FactoryResetProtectionPolicy;->getFactoryResetProtectionAccounts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->addAll(Ljava/util/Collection;)V

    .line 113
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    .line 114
    invoke-virtual {v0}, Landroid/app/admin/FactoryResetProtectionPolicy;->isFactoryResetProtectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 113
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 116
    :cond_1
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "stringResId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    return-void
.end method


# virtual methods
.method public createAddAccountDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0900d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 169
    .local v1, "input":Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0030

    .line 170
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 171
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    .line 172
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 173
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;

    invoke-direct {v3, p0, v0, v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 187
    return-void
.end method

.method final synthetic lambda$createAddAccountDialog$191$FactoryResetProtectionPolicyFragment(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic lambda$null$190$FactoryResetProtectionPolicyFragment(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p3, "okButtonView"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const v1, 0x7f0f015b

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->showToast(I)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->add(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 147
    :sswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->createAddAccountDialog()V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 151
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->refreshUi()V

    .line 152
    const v0, 0x7f0f009d

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->showToast(I)V

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    new-instance v2, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;

    invoke-direct {v2}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;-><init>()V

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccounts:Ljava/util/List;

    .line 157
    invoke-virtual {v2, v3}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->setFactoryResetProtectionAccounts(Ljava/util/List;)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mEnabled:Z

    .line 158
    invoke-virtual {v2, v3}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->setFactoryResetProtectionEnabled(Z)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->build()Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 160
    const v0, 0x7f0f02b7

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->showToast(I)V

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09002c -> :sswitch_0
        0x7f09006d -> :sswitch_1
        0x7f090142 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 70
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0158

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 80
    const v6, 0x7f0b0035

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0900bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 83
    .local v3, "frpAccounts":Landroid/widget/ListView;
    new-instance v6, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)V

    iput-object v6, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    .line 84
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mAccountsAdapter:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    const v6, 0x7f09002c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, "addAccountButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v6, 0x7f09006d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 89
    .local v1, "clearButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v6, 0x7f090142

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 91
    .local v4, "saveButton":Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v6, 0x7f0900bd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    .line 94
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f030004

    const v8, 0x1090008

    invoke-static {v6, v7, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 98
    .local v2, "enabledAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v6, 0x1090009

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 99
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mFrpEnabledSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->refreshUi()V

    .line 102
    return-object v5
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f0900bd

    if-ne v0, v1, :cond_0

    .line 192
    packed-switch p3, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 194
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mEnabled:Z

    goto :goto_0

    .line 197
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->mEnabled:Z

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
