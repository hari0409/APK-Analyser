.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->choosePrivateKeyForRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3131
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 3134
    if-nez p1, :cond_0

    .line 3152
    :goto_0
    return-void

    .line 3139
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3140
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 3142
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
