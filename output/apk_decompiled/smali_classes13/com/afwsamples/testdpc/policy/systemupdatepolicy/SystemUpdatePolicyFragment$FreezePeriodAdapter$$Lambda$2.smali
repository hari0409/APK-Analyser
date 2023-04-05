.class final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

.field private final arg$2:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;->arg$2:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;->arg$2:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    invoke-virtual {v0, v1, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->lambda$null$180$SystemUpdatePolicyFragment$FreezePeriodAdapter(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method
