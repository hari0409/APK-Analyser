.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

.field private final arg$2:I

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

    iput p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;->arg$2:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;->arg$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;->arg$2:I

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$1;->arg$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->lambda$onClick$154$PolicyManagementFragment$28(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
