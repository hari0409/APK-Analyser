.class Lcom/afwsamples/testdpc/common/ColorPicker$2;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/ColorPicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/ColorPicker;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$302(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$300(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$100(Lcom/afwsamples/testdpc/common/ColorPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$402(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$400(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$100(Lcom/afwsamples/testdpc/common/ColorPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$500(Lcom/afwsamples/testdpc/common/ColorPicker;)V

    .line 120
    return-void
.end method
