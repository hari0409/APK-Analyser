.class public Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$BlockUninstallationAppInfo;
.super Ljava/lang/Object;
.source "BlockUninstallationInfoArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockUninstallationAppInfo"
.end annotation


# instance fields
.field public isUninstallationBlocked:Z

.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$BlockUninstallationAppInfo;->this$0:Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
