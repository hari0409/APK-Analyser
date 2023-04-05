.class public Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;
.super Landroid/app/Fragment;
.source "SetUserSessionMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetUserSessionMessage"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEndSessionMessage:Landroid/widget/EditText;

.field private mStartSessionMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "startSessionMessage":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 70
    .local v0, "endSessionMessage":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/app/admin/DevicePolicyManager;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 72
    :sswitch_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006e -> :sswitch_1
        0x7f090165 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0301

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 48
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 50
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v1, 0x7f0b0073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    .line 60
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    .line 61
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mStartSessionMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mEndSessionMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v0
.end method
