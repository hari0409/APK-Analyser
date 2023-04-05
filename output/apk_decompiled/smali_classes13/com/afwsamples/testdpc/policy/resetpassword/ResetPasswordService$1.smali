.class Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetPasswordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;->this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const-string v0, "ResetPasswordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;->this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->access$000(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V

    .line 71
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;->this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;->this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->access$100(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;->this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->stopSelf()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "com.afwsamples.testdpc.RESET_PASSWORD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService$1;->this$0:Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;->access$200(Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordService;)V

    goto :goto_0
.end method
