.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;
.super Ljava/lang/Object;
.source "WifiEapTlsCreateDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1$1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method
