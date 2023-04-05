.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showUninstallPackagePrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$installedApps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3392
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->val$installedApps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 3395
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->val$installedApps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3396
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 3397
    return-void
.end method
