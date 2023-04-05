.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsPrompt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$failureResId:I

.field final synthetic val$showApps:Ljava/util/List;

.field final synthetic val$showHiddenApps:Z

.field final synthetic val$successResId:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3448
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$showApps:Ljava/util/List;

    iput-boolean p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$showHiddenApps:Z

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$successResId:I

    iput p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$failureResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3451
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$showApps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3452
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v5

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$showHiddenApps:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v0, v1}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3454
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$successResId:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3458
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 3452
    goto :goto_0

    .line 3456
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;->val$failureResId:I

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1600(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I)V

    goto :goto_1
.end method
