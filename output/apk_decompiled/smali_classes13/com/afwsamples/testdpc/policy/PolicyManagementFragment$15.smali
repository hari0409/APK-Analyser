.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveUserPromptLegacy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2292
    const-wide/16 v0, -0x1

    .line 2294
    .local v0, "serialNumber":J
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2295
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserHandle(J)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2299
    :goto_0
    return-void

    .line 2296
    :catch_0
    move-exception v2

    goto :goto_0
.end method
