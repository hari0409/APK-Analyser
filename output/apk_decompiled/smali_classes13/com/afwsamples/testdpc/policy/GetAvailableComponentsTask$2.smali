.class Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;
.super Ljava/lang/Object;
.source "GetAvailableComponentsTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

.field final synthetic val$availableComponentsInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    .prologue
    .line 94
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;->this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;->val$availableComponentsInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;->val$availableComponentsInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;

    .line 98
    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getSelectedComponents()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, "selectedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;->this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->setPermittedComponentsList(Ljava/util/List;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;->this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->access$000(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 103
    return-void
.end method
