.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButtonClicked([Ljava/lang/String;)V
    .locals 1
    .param p1, "lockTaskArray"    # [Ljava/lang/String;

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;[Ljava/lang/String;)V

    .line 1268
    return-void
.end method
