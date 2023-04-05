.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showBlockUninstallationPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$blockUninstallationInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3296
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$blockUninstallationInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3298
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;->val$blockUninstallationInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 3299
    return-void
.end method
