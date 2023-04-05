.class Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;
.super Ljava/lang/Object;
.source "CosuConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/cosu/CosuConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalSetting"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/afwsamples/testdpc/cosu/CosuConfig;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->this$0:Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->key:Ljava/lang/String;

    .line 353
    iput-object p3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->value:Ljava/lang/String;

    .line 354
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
