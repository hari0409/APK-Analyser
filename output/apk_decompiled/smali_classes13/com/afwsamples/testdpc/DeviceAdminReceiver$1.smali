.class Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;
.super Landroid/os/AsyncTask;
.source "DeviceAdminReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/DeviceAdminReceiver;->onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/DeviceAdminReceiver;

.field final synthetic val$bugreportFileHash:Ljava/lang/String;

.field final synthetic val$bugreportUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/DeviceAdminReceiver;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/DeviceAdminReceiver;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->this$0:Lcom/afwsamples/testdpc/DeviceAdminReceiver;

    iput-object p2, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportFileHash:Ljava/lang/String;

    iput-object p5, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 179
    :try_start_0
    iget-object v10, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportUri:Landroid/net/Uri;

    const-string v12, "r"

    .line 180
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 181
    .local v3, "mInputPfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 182
    .local v2, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    iget-object v10, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    iget-object v11, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportUri:Landroid/net/Uri;

    .line 183
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v6, "outputBugreportFile":Ljava/io/File;
    const-string v10, "DeviceAdminReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Writing bugreport to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 186
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 188
    .local v0, "buffer":[B
    const-wide/16 v8, 0x0

    .line 189
    .local v8, "totalRead":J
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    .line 190
    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 191
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "mInputPfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "outputBugreportFile":Ljava/io/File;
    .end local v7    # "read":I
    .end local v8    # "totalRead":J
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "DeviceAdminReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v10, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    const v11, 0x7f0f0274

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    .local v4, "message":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 193
    .end local v4    # "message":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "mInputPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "outputBugreportFile":Ljava/io/File;
    .restart local v7    # "read":I
    .restart local v8    # "totalRead":J
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 194
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 195
    iget-object v10, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    const v11, 0x7f0f0273

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$bugreportFileHash:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    .line 195
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "message":Ljava/lang/String;
    const-string v10, "DeviceAdminReceiver"

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$context:Landroid/content/Context;

    const v1, 0x7f0f0080

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 209
    iget-object v0, p0, Lcom/afwsamples/testdpc/DeviceAdminReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 210
    return-void
.end method
