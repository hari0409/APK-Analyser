.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->testKeyCanBeUsedForSigning()V
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
    .line 1427
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1430
    if-nez p1, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v1, "No key chosen."

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    .line 1440
    :goto_0
    return-void

    .line 1436
    :cond_0
    new-instance v0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 1437
    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;)V

    invoke-direct {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;-><init>(Landroid/content/Context;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1439
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method final synthetic lambda$alias$107$PolicyManagementFragment$3(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 1439
    return-void
.end method
