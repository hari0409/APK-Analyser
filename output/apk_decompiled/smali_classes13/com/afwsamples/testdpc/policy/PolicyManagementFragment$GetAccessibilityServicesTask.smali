.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;
.super Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
.source "PolicyManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccessibilityServicesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask",
        "<",
        "Landroid/accessibilityservice/AccessibilityServiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 2

    .prologue
    .line 3710
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3711
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02cd

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;-><init>(Landroid/app/Activity;I)V

    .line 3712
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 3714
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3706
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPermittedComponentsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3724
    .local p1, "accessibilityServiceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3725
    .local v1, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3726
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3727
    .local v0, "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 3730
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3731
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3732
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3735
    .end local v0    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v3
.end method

.method protected setPermittedComponentsList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3745
    .local p1, "permittedAccessibilityServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3746
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v3

    .line 3745
    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0

    .line 3747
    .local v0, "result":Z
    if-nez p1, :cond_0

    const v1, 0x7f0f0040

    .line 3750
    .local v1, "successMsgId":I
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    if-eqz v0, :cond_1

    .end local v1    # "successMsgId":I
    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3751
    return-void

    .line 3747
    :cond_0
    const v1, 0x7f0f02cf

    goto :goto_0

    .line 3750
    .restart local v1    # "successMsgId":I
    :cond_1
    const v1, 0x7f0f02ce

    goto :goto_1
.end method
