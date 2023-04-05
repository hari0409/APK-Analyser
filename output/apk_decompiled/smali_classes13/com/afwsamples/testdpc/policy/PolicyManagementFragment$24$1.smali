.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->alias(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

.field final synthetic val$removed:Z


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

    .prologue
    .line 3142
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;->this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

    iput-boolean p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;->val$removed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3145
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;->val$removed:Z

    if-eqz v0, :cond_0

    .line 3146
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;->this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v1, 0x7f0f0281

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3150
    :goto_0
    return-void

    .line 3148
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24$1;->this$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v1, 0x7f0f0280

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
