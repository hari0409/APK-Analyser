.class final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$onClick$184$SystemUpdatePolicyFragment(Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method
