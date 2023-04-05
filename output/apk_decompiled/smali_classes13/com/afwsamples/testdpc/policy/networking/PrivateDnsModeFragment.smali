.class public Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;
.super Landroid/app/Fragment;
.source "PrivateDnsModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field static final PRIVATE_DNS_MODE_OFF:I = 0x1

.field static final PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field static final PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field static final PRIVATE_DNS_MODE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PDNS_FRAG"


# instance fields
.field private mCurrentResolver:Landroid/widget/EditText;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

.field private mSelectedMode:I

.field private mSetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getPrivateDnsHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 141
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PDNS_FRAG"

    const-string v2, "Failure getting host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const-string v1, "<error getting resolver>"

    goto :goto_0
.end method

.method private getPrivateDnsMode()I
    .locals 3

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 130
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "PDNS_FRAG"

    const-string v2, "Failure getting current mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPrivateDnsMode(ILjava/lang/String;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "resolver"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 150
    const-string v0, "PDNS_FRAG"

    const-string v1, "Setting mode %d host %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 153
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$Lambda$0;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;)V

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;ILjava/lang/String;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method private updateSelectedMode(I)V
    .locals 3
    .param p1, "checkedId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 121
    :pswitch_0
    iput v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 122
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    :goto_0
    return-void

    .line 108
    :pswitch_1
    iput v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 112
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 116
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f090121
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method final synthetic lambda$setPrivateDnsMode$194$PrivateDnsModeFragment(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->updateSelectedMode(I)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mCurrentResolver:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "resolver":Ljava/lang/String;
    iget v1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->setPrivateDnsMode(ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSelectedMode:I

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v2, 0x7f0b0066

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    .line 79
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    .line 82
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getPrivateDnsMode()I

    move-result v0

    .line 83
    .local v0, "currentMode":I
    packed-switch v0, :pswitch_data_0

    .line 94
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    const v3, 0x7f090126

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 98
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->updateSelectedMode(I)V

    .line 100
    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mCurrentResolver:Landroid/widget/EditText;

    .line 101
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mCurrentResolver:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->getPrivateDnsHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-object v1

    .line 85
    :pswitch_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    const v3, 0x7f090123

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    const v3, 0x7f090121

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->mPrivateDnsModeSelection:Landroid/widget/RadioGroup;

    const v3, 0x7f090125

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
