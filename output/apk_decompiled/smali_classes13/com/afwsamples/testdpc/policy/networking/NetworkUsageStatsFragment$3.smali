.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;
.super Ljava/lang/Object;
.source "NetworkUsageStatsFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->pickDate(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$target:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Ljava/util/Calendar;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$target:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 318
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 319
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 320
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$target:Ljava/util/Date;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 321
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$400(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)V

    .line 322
    return-void
.end method
