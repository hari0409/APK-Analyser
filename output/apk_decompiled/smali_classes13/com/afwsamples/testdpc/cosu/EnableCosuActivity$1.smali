.class Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;
.super Landroid/os/Handler;
.source "EnableCosuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 217
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$000(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$100(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    .line 221
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$000(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$200(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->onDownloadComplete(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 224
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p0, v5, v0}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->removeMessages(ILjava/lang/Object;)V

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$200(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->areAllInstallsFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$300(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    goto :goto_0

    .line 234
    .end local v0    # "id":Ljava/lang/Long;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 235
    .local v0, "id":J
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$000(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 236
    const-string v2, "CosuSetup"

    const-string v3, "Time out during download of config file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$400(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/app/DownloadManager;

    move-result-object v2

    new-array v3, v4, [J

    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v4}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$000(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 242
    :goto_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$500(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$400(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/app/DownloadManager;

    move-result-object v2

    new-array v3, v4, [J

    aput-wide v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 240
    const-string v2, "CosuSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time out during app download with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v0    # "id":J
    :pswitch_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$200(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->onInstallComplete(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$200(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Lcom/afwsamples/testdpc/cosu/CosuConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->areAllInstallsFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$1;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$300(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    goto/16 :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
