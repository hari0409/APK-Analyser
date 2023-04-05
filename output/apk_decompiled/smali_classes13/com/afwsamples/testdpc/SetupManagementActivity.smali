.class public Lcom/afwsamples/testdpc/SetupManagementActivity;
.super Landroid/app/Activity;
.source "SetupManagementActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/SetupManagementActivity;->setContentView(I)V

    .line 12
    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/SetupManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090078

    new-instance v2, Lcom/afwsamples/testdpc/SetupManagementFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/SetupManagementFragment;-><init>()V

    const-string v3, "SetupManagementFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 17
    :cond_0
    return-void
.end method
