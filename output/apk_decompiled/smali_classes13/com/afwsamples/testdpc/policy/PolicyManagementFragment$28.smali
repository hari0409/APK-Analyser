.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSuspendAppsPrompt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$failureResId:I

.field final synthetic val$forUnsuspending:Z

.field final synthetic val$showApps:Ljava/util/List;

.field final synthetic val$successResId:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3556
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$showApps:Ljava/util/List;

    iput-boolean p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$forUnsuspending:Z

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$successResId:I

    iput p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$failureResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onClick$153$PolicyManagementFragment$28(ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 4
    .param p4, "failed"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3563
    array-length v0, p4

    if-nez v0, :cond_0

    .line 3564
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v1, "setPackagesSuspended"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1800(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 3570
    :goto_0
    return-void

    .line 3567
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v1, "setPackagesSuspended"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, p3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1900(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final synthetic lambda$onClick$154$PolicyManagementFragment$28(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 3571
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v1, "setPackagesSuspended"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, p3, p1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3559
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$showApps:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3560
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v2

    iget-boolean v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$forUnsuspending:Z

    if-nez v5, :cond_0

    :goto_0
    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;

    iget v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$successResId:I

    iget v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$failureResId:I

    invoke-direct {v2, p0, v5, v0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;ILjava/lang/String;I)V

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;

    iget v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->val$failureResId:I

    invoke-direct {v5, p0, v6, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;ILjava/lang/String;)V

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPackagesSuspended([Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 3573
    return-void

    :cond_0
    move v1, v2

    .line 3560
    goto :goto_0
.end method
