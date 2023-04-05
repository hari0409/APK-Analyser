.class Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;
.super Ljava/lang/Object;
.source "ToggleComponentsArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iput p2, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->canModifyComponent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_0
    return-void

    .line 100
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
