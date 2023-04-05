.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$null$147$PolicyManagementFragment(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
