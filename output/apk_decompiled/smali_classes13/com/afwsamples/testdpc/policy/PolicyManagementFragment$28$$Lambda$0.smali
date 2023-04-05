.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

.field private final arg$2:I

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

    iput p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$2:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$3:Ljava/lang/String;

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$4:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$2:I

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$3:Ljava/lang/String;

    iget v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28$$Lambda$0;->arg$4:I

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;->lambda$onClick$153$PolicyManagementFragment$28(ILjava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method
