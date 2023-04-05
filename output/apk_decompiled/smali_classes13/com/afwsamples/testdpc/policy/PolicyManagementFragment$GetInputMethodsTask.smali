.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;
.super Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
.source "PolicyManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInputMethodsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask",
        "<",
        "Landroid/view/inputmethod/InputMethodInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 2

    .prologue
    .line 3760
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 3761
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02dc

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;-><init>(Landroid/app/Activity;I)V

    .line 3762
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3764
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3757
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

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
    .line 3786
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3774
    .local p1, "inputMethodsInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3775
    .local v1, "inputMethodsResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3776
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3777
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3778
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3779
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3781
    .end local v0    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v1
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
    .line 3791
    .local p1, "permittedInputMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0

    .line 3793
    .local v0, "result":Z
    if-nez p1, :cond_0

    const v1, 0x7f0f0047

    .line 3796
    .local v1, "successMsgId":I
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    if-eqz v0, :cond_1

    .end local v1    # "successMsgId":I
    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3797
    return-void

    .line 3793
    :cond_0
    const v1, 0x7f0f02df

    goto :goto_0

    .line 3796
    .restart local v1    # "successMsgId":I
    :cond_1
    const v1, 0x7f0f02dd

    goto :goto_1
.end method
