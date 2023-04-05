.class Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
.super Ljava/lang/Object;
.source "SystemUpdatePolicyFragment.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Period"
.end annotation


# instance fields
.field mEnd:Ljava/time/MonthDay;

.field mStart:Ljava/time/MonthDay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V
    .locals 0
    .param p1, "start"    # Ljava/time/MonthDay;
    .param p2, "end"    # Ljava/time/MonthDay;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Ljava/time/MonthDay;

    .line 72
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Ljava/time/MonthDay;

    .line 73
    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Ljava/time/MonthDay;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Ljava/time/MonthDay;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 2
    .param p1, "startDate"    # Ljava/time/LocalDate;
    .param p2, "endDate"    # Ljava/time/LocalDate;

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Ljava/time/MonthDay;

    .line 77
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Ljava/time/MonthDay;

    .line 78
    return-void
.end method

.method public toFreezePeriod()Landroid/app/admin/FreezePeriod;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 96
    new-instance v0, Landroid/app/admin/FreezePeriod;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Ljava/time/MonthDay;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Ljava/time/MonthDay;

    invoke-direct {v0, v1, v2}, Landroid/app/admin/FreezePeriod;-><init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    const-string v1, "MMM dd"

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 83
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mStart:Ljava/time/MonthDay;

    invoke-virtual {v2, v0}, Ljava/time/MonthDay;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->mEnd:Ljava/time/MonthDay;

    invoke-virtual {v2, v0}, Ljava/time/MonthDay;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
