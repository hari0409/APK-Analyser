.class Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
.super Ljava/lang/Object;
.source "CosuConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/cosu/CosuConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAppInfo"
.end annotation


# instance fields
.field public downloadCompleted:Z

.field public downloadId:Ljava/lang/Long;

.field public final downloadLocation:Ljava/lang/String;

.field public installCompleted:Z

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/afwsamples/testdpc/cosu/CosuConfig;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "downloadLocation"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 333
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->this$0:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadLocation:Ljava/lang/String;

    .line 336
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadCompleted:Z

    .line 337
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    .line 338
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
