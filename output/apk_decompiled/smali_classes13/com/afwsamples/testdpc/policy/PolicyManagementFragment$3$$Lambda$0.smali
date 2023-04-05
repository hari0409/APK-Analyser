.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;

    return-void
.end method


# virtual methods
.method public showToast(I[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;

    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;->lambda$alias$107$PolicyManagementFragment$3(I[Ljava/lang/Object;)V

    return-void
.end method
