.class final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;

.field private final arg$2:Ljava/time/LocalDate;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;->arg$2:Ljava/time/LocalDate;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/time/LocalDate;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;->arg$2:Ljava/time/LocalDate;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$null$186$SystemUpdatePolicyFragment(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method
