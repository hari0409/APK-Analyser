.class public Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
.super Landroid/app/Fragment;
.source "SystemUpdatePolicyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;,
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;,
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;,
        Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    }
.end annotation


# instance fields
.field private mCurrentSystemUpdatePolicy:Landroid/widget/EditText;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

.field private mFreezePeriodList:Landroid/widget/ListView;

.field private mFreezePeriodPanel:Landroid/widget/LinearLayout;

.field private mFreezePeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceEnd:I

.field private mMaintenanceStart:I

.field private mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

.field private mSetMaintenanceWindowEnd:Landroid/widget/Button;

.field private mSetMaintenanceWindowStart:Landroid/widget/Button;

.field private mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;
    .param p2, "x2"    # Ljava/time/LocalDate;
    .param p3, "x3"    # Ljava/time/LocalDate;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->promptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;)Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    return-object v0
.end method

.method private formatMinutes(I)Ljava/lang/String;
    .locals 4
    .param p1, "minutes"    # I

    .prologue
    .line 304
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic lambda$null$186$SystemUpdatePolicyFragment(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 0
    .param p2, "pickedEndDate"    # Ljava/time/LocalDate;

    .prologue
    .line 260
    invoke-interface {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;->onResult(Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method

.method static final synthetic lambda$showDatePicker$185$SystemUpdatePolicyFragment(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "pickerObj"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 242
    add-int/lit8 v1, p3, 0x1

    invoke-static {p2, v1, p4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 243
    .local v0, "pickedDate":Ljava/time/LocalDate;
    invoke-interface {p0, v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;->onResult(Ljava/time/LocalDate;)V

    .line 244
    return-void
.end method

.method private promptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 2
    .param p1, "callback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;
    .param p2, "startDate"    # Ljava/time/LocalDate;
    .param p3, "endDate"    # Ljava/time/LocalDate;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 252
    const v0, 0x7f0f033b

    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$3;

    invoke-direct {v1, p0, p3, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Ljava/time/LocalDate;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->showDatePicker(Ljava/time/LocalDate;ILcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V

    .line 262
    return-void
.end method

.method private reloadSystemUpdatePolicy()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x0

    .line 314
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v3

    .line 315
    .local v3, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const-string v4, "Unknown"

    .line 317
    .local v4, "policyDescription":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 318
    const-string v4, "None"

    .line 319
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    const v6, 0x7f0901ac

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 320
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mCurrentSystemUpdatePolicy:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    return-void

    .line 323
    :cond_1
    invoke-virtual {v3}, Landroid/app/admin/SystemUpdatePolicy;->getPolicyType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 346
    :goto_1
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    .line 347
    invoke-virtual {v3}, Landroid/app/admin/SystemUpdatePolicy;->getFreezePeriods()Ljava/util/List;

    move-result-object v0

    .line 348
    .local v0, "freezePeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 349
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 350
    .local v2, "period":Landroid/app/admin/FreezePeriod;
    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v6

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;-><init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V

    .line 351
    .local v1, "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 325
    .end local v0    # "freezePeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    .end local v1    # "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    .end local v2    # "period":Landroid/app/admin/FreezePeriod;
    :pswitch_0
    const-string v4, "Automatic"

    .line 326
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    const v6, 0x7f0901a7

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 327
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 330
    :pswitch_1
    invoke-virtual {v3}, Landroid/app/admin/SystemUpdatePolicy;->getInstallWindowStart()I

    move-result v5

    iput v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    .line 331
    invoke-virtual {v3}, Landroid/app/admin/SystemUpdatePolicy;->getInstallWindowEnd()I

    move-result v5

    iput v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    .line 332
    const-string v5, "Windowed: %s-%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    .line 333
    invoke-direct {p0, v7}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget v8, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    invoke-direct {p0, v8}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 332
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->updateMaintenanceWindowDisplay()V

    .line 336
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    const v6, 0x7f0901a6

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 337
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 341
    :pswitch_2
    const-string v4, "Postpone"

    .line 342
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    const v6, 0x7f0901ad

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 343
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 353
    .restart local v0    # "freezePeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    :cond_2
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {v5}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->notifyDataSetChanged()V

    .line 354
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private selectTime(Z)V
    .locals 7
    .param p1, "isWindowStart"    # Z

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget v6, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    .line 194
    .local v6, "defaultMinutes":I
    :goto_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Z)V

    div-int/lit8 v3, v6, 0x3c

    rem-int/lit8 v4, v6, 0x3c

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 202
    .local v0, "timePicker":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 203
    return-void

    .line 193
    .end local v0    # "timePicker":Landroid/app/TimePickerDialog;
    .end local v6    # "defaultMinutes":I
    :cond_0
    iget v6, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    goto :goto_0
.end method

.method private setSystemUpdatePolicy()Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 267
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 280
    const/4 v1, 0x0

    .line 284
    .local v1, "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :goto_0
    :try_start_0
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v3, "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    .line 288
    .local v2, "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    invoke-virtual {v2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->toFreezePeriod()Landroid/app/admin/FreezePeriod;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    .end local v2    # "p":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    .end local v3    # "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set system update policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 300
    const/4 v4, 0x0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v4

    .line 269
    .end local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_0
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy;->createAutomaticInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    .line 270
    .restart local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 272
    .end local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_1
    iget v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    iget v6, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    invoke-static {v5, v6}, Landroid/app/admin/SystemUpdatePolicy;->createWindowedInstallPolicy(II)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    .line 274
    .restart local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 276
    .end local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_2
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy;->createPostponeInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    .line 277
    .restart local v1    # "newPolicy":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_0

    .line 290
    .restart local v3    # "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/app/admin/SystemUpdatePolicy;->setFreezePeriods(Ljava/util/List;)Landroid/app/admin/SystemUpdatePolicy;

    .line 292
    .end local v3    # "periods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    :cond_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/admin/DevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 294
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Policy set successfully"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 267
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901a6 -> :sswitch_1
        0x7f0901a7 -> :sswitch_0
        0x7f0901ad -> :sswitch_2
    .end sparse-switch
.end method

.method private showDatePicker(Ljava/time/LocalDate;ILcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V
    .locals 6
    .param p1, "hint"    # Ljava/time/LocalDate;
    .param p2, "titleResId"    # I
    .param p3, "resultCallback"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 240
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$2;

    invoke-direct {v2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V

    .line 244
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Month;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 245
    .local v0, "picker":Landroid/app/DatePickerDialog;
    invoke-virtual {p0, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 247
    return-void
.end method

.method private updateMaintenanceWindowDisplay()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowStart:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowEnd:Landroid/widget/Button;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->formatMinutes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method


# virtual methods
.method final synthetic lambda$onClick$184$SystemUpdatePolicyFragment(Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 2
    .param p1, "startDate"    # Ljava/time/LocalDate;
    .param p2, "endDate"    # Ljava/time/LocalDate;

    .prologue
    .line 222
    new-instance v0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;-><init>()V

    .line 223
    .local v0, "period":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->set(Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    .line 224
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->notifyDataSetChanged()V

    .line 226
    return-void
.end method

.method final synthetic lambda$promptToSetFreezePeriod$187$SystemUpdatePolicyFragment(Ljava/time/LocalDate;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;)V
    .locals 2
    .param p1, "proposedEndDate"    # Ljava/time/LocalDate;
    .param p3, "pickedStartDate"    # Ljava/time/LocalDate;

    .prologue
    .line 254
    .line 255
    invoke-virtual {p1, p3}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    if-gez v0, :cond_0

    .line 256
    move-object p1, p3

    .line 258
    :cond_0
    const v0, 0x7f0f033a

    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;

    invoke-direct {v1, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$4;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->showDatePicker(Ljava/time/LocalDate;ILcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$DatePickResult;)V

    .line 261
    return-void
.end method

.method final synthetic lambda$selectTime$183$SystemUpdatePolicyFragment(ZLandroid/widget/TimePicker;II)V
    .locals 1
    .param p2, "picker"    # Landroid/widget/TimePicker;
    .param p3, "hour"    # I
    .param p4, "minutes"    # I

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    mul-int/lit8 v0, p3, 0x3c

    add-int/2addr v0, p4

    iput v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceStart:I

    .line 200
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->updateMaintenanceWindowDisplay()V

    .line 201
    return-void

    .line 198
    :cond_0
    mul-int/lit8 v0, p3, 0x3c

    add-int/2addr v0, p4

    iput v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceEnd:I

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v2, 0x0

    .line 362
    const v0, 0x7f0901a6

    if-ne p2, v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->updateMaintenanceWindowDisplay()V

    .line 364
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    :goto_0
    const v0, 0x7f0901ac

    if-eq p2, v0, :cond_0

    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    :goto_1
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->selectTime(Z)V

    goto :goto_0

    .line 213
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->selectTime(Z)V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->setSystemUpdatePolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->reloadSystemUpdatePolicy()V

    goto :goto_0

    .line 221
    :pswitch_4
    new-instance v0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;)V

    .line 226
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    .line 221
    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->promptToSetFreezePeriod(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901aa
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    const v1, 0x7f0b00b7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mCurrentSystemUpdatePolicy:Landroid/widget/EditText;

    .line 170
    const v1, 0x7f0901ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    .line 171
    const v1, 0x7f0901b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mMaintenanceWindowDetails:Landroid/widget/LinearLayout;

    .line 172
    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowStart:Landroid/widget/Button;

    .line 173
    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowEnd:Landroid/widget/Button;

    .line 174
    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    .line 175
    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodList:Landroid/widget/ListView;

    .line 177
    new-instance v1, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    .line 178
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodAdapter:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowStart:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSetMaintenanceWindowEnd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v1, 0x7f0901af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mSystemUpdatePolicySelection:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 187
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->mFreezePeriodPanel:Landroid/widget/LinearLayout;

    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    return-object v0

    .line 187
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0335

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 118
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->reloadSystemUpdatePolicy()V

    .line 119
    return-void
.end method
