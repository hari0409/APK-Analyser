.class public Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;
.super Landroid/app/Fragment;
.source "SetSupportMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final ARG_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final TYPE_LONG:I = 0x1

.field public static final TYPE_SHORT:I


# instance fields
.field private mAdmin:Landroid/content/ComponentName;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mMessageType:I

.field private mSupportMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    return-void
.end method

.method public static newInstance(I)Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;
    .locals 3
    .param p0, "messageType"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;-><init>()V

    .line 48
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 99
    :goto_0
    iget v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void

    .line 89
    :sswitch_0
    iget v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v1, :cond_0

    const v1, 0x7f0f00cb

    :goto_2
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    goto :goto_0

    .line 89
    :cond_0
    const v1, 0x7f0f00ca

    goto :goto_2

    .line 93
    :sswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_0

    .line 96
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x7f09006e -> :sswitch_2
        0x7f090164 -> :sswitch_0
        0x7f090165 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 59
    const-string v1, "message_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v1, :cond_1

    const v1, 0x7f0f02f7

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 65
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    .line 66
    return-void

    .line 61
    :cond_1
    const v1, 0x7f0f02e3

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const v1, 0x7f0b0072

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f090165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    .line 76
    iget v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mMessageType:I

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mSupportMessage:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
