.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$19;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    return-void
.end method


# virtual methods
.method public onPositiveButtonClicked([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$19;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$onPreferenceClick$104$PolicyManagementFragment([Ljava/lang/String;)V

    return-void
.end method
