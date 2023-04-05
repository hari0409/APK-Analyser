.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;
.super Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
.source "PolicyManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNotificationListenersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 2

    .prologue
    .line 3870
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3871
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02e8

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;-><init>(Landroid/app/Activity;I)V

    .line 3872
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3869
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$2000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.notification.NotificationListenerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPermittedComponentsList()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

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
    .line 3890
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3891
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3884
    .local p1, "notificationListenerServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object p1
.end method

.method protected setPermittedComponentsList(Ljava/util/List;)V
    .locals 1
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
    .line 3896
    .local p1, "permittedNotificationListeners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$2100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3897
    return-void
.end method
