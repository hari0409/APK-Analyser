.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Z


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-boolean p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;->arg$2:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;->arg$2:Z

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setKeyGuardDisabled$119$PolicyManagementFragment(ZLjava/lang/Void;)V

    return-void
.end method
