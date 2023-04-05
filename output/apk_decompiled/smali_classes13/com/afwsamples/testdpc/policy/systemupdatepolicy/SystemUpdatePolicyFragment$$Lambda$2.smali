.class final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$showDatePicker$185$SystemUpdatePolicyFragment(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;Landroid/widget/DatePicker;III)V

    return-void
.end method
