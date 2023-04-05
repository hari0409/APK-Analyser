.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$appInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;->val$appInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 1868
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;->val$appInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1869
    return-void
.end method
