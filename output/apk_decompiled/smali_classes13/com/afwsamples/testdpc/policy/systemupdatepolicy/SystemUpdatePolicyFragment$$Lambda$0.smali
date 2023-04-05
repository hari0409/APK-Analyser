.class final synthetic Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

.field private final arg$2:Z


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    iput-boolean p2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;->arg$2:Z

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;->arg$2:Z

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->lambda$selectTime$183$SystemUpdatePolicyFragment(ZLandroid/widget/TimePicker;II)V

    return-void
.end method
