.class Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;
.super Ljava/lang/Object;
.source "BlockUninstallationInfoArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    iput p2, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 64
    .local v0, "isBlocked":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->access$000(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->access$200(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->access$100(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    iget v4, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;->val$position:I

    .line 66
    invoke-virtual {v1, v4}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 65
    invoke-virtual {v2, v3, v1, v0}, Landroid/app/admin/DevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method
