.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;
.super Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
.source "PolicyManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installUpdate()V
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
    .line 1417
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallUpdateError(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    .line 1421
    return-void
.end method
