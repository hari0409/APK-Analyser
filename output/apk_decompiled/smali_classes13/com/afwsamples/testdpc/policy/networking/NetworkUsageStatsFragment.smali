.class public Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
.super Landroid/app/ListFragment;
.source "NetworkUsageStatsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/afwsamples/testdpc/common/OnBackPressedHandler;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final QUERY_APPHISTORY_POS:I = 0x4

.field private static final QUERY_APPSUMMARY_POS:I = 0x3

.field private static final QUERY_DEVICE_POS:I = 0x1

.field private static final QUERY_PROFILE_POS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TestDPC.NetworkUsageStatsFragment"


# instance fields
.field private mAppHistoryList:Landroid/widget/ListView;

.field private mDataUsageList:Landroid/widget/ListView;

.field private mDataUsageSummary:Landroid/widget/TextView;

.field private mDateStringFormat:Ljava/text/DateFormat;

.field private mEndDate:Ljava/util/Date;

.field private mEndDateButton:Landroid/widget/Button;

.field private mExplanation:Landroid/widget/TextView;

.field private mHourMinuteDateFormat:Ljava/text/DateFormat;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mQuerySpinner:Landroid/widget/Spinner;

.field private mStartDate:Ljava/util/Date;

.field private mStartDateButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->bindView(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDateStringFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mHourMinuteDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->updateButtonsText()V

    return-void
.end method

.method private bindView(Landroid/view/View;Ljava/util/List;)V
    .locals 26
    .param p1, "appView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/NetworkStats$Bucket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "item":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;

    .line 352
    .local v21, "viewHolder":Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 353
    .local v19, "title":Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v18, v0

    .line 354
    .local v18, "summary":Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->state:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 355
    .local v17, "state":Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;->image:Landroid/widget/ImageView;

    .line 356
    .local v9, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 357
    .local v16, "res":Landroid/content/res/Resources;
    const v22, 0x108009b

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 358
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/NetworkStats$Bucket;

    .line 359
    .local v5, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v20

    .line 360
    .local v20, "uid":I
    sparse-switch v20, :sswitch_data_0

    .line 371
    const v22, 0x7f0f01ef

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "packageNames":[Ljava/lang/String;
    if-eqz v14, :cond_1

    array-length v11, v14

    .line 376
    .local v11, "length":I
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_2

    .line 377
    const/16 v22, 0x0

    :try_start_0
    aget-object v15, v14, v22

    .line 378
    .local v15, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 380
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 407
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "length":I
    .end local v14    # "packageNames":[Ljava/lang/String;
    .end local v15    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    .line 409
    .local v6, "bucketsCount":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_4

    .line 410
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v22

    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 426
    :goto_2
    :pswitch_0
    return-void

    .line 362
    .end local v6    # "bucketsCount":I
    :sswitch_0
    const v22, 0x7f0f01f0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 365
    :sswitch_1
    const v22, 0x7f0f01f2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 368
    :sswitch_2
    const v22, 0x7f0f01f1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 374
    .restart local v14    # "packageNames":[Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 385
    .restart local v11    # "length":I
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v11, :cond_0

    .line 386
    :try_start_1
    aget-object v13, v14, v7

    .line 387
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 389
    .local v12, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 392
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_3

    if-eqz v12, :cond_3

    .line 393
    iget v0, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v23, v0

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 385
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 413
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i":I
    .end local v11    # "length":I
    .end local v12    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "packageNames":[Ljava/lang/String;
    .restart local v6    # "bucketsCount":I
    :pswitch_1
    const v22, 0x7f0f01e8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 416
    :pswitch_2
    const v22, 0x7f0f01e3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 419
    :pswitch_3
    const v22, 0x7f0f01e2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 423
    :cond_4
    const v22, 0x7f0f01e9

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const v22, 0x7f0f01e2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 402
    .end local v6    # "bucketsCount":I
    .restart local v11    # "length":I
    .restart local v14    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v22

    goto/16 :goto_1

    .line 360
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        -0x4 -> :sswitch_0
        0x3e8 -> :sswitch_2
    .end sparse-switch

    .line 411
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "sizeBytes"    # J

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTodayPlus(II)Ljava/util/Date;
    .locals 3
    .param p1, "calendarField"    # I
    .param p2, "valueToAdd"    # I

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 340
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 341
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 342
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 344
    if-lez p2, :cond_0

    .line 345
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private pickDate(Ljava/util/Date;)V
    .locals 7
    .param p1, "target"    # Ljava/util/Date;

    .prologue
    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 311
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 312
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;

    invoke-direct {v2, p0, v6, p1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$3;-><init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Ljava/util/Calendar;Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 323
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 324
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 325
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 326
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01e7

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    .line 303
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 307
    return-void
.end method

.method private transitionAppHistoryView(I)V
    .locals 2
    .param p1, "appHistoryVisibility"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 432
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateButtonsText()V
    .locals 3

    .prologue
    .line 329
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 330
    .local v0, "dateFormat":Ljava/text/DateFormat;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->transitionAppHistoryView(I)V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 155
    :sswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->pickDate(Ljava/util/Date;)V

    goto :goto_0

    .line 158
    :sswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->pickDate(Ljava/util/Date;)V

    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x7f0900ab -> :sswitch_1
        0x7f09017e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "*dd/MM/yyyy*"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDateStringFormat:Ljava/text/DateFormat;

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "kk:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mHourMinuteDateFormat:Ljava/text/DateFormat;

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 103
    const v0, 0x7f0b0043

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 105
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b002e

    const v4, 0x1020016

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 130
    const v0, 0x7f090132

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mQuerySpinner:Landroid/widget/Spinner;

    .line 131
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mQuerySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    const v0, 0x7f0900b4

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    .line 133
    invoke-direct {p0, v8, v8}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getTodayPlus(II)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 134
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getTodayPlus(II)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    .line 135
    const v0, 0x7f09017e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_0
    const v0, 0x7f0900ab

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->updateButtonsText()V

    .line 144
    const v0, 0x7f09008c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    .line 145
    const v0, 0x102000a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    .line 146
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    const v0, 0x7f090049

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    .line 148
    return-object v7
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v11, 0x0

    .line 178
    .local v11, "result":Landroid/app/usage/NetworkStats;
    const/4 v0, 0x0

    .line 179
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    packed-switch p3, :pswitch_data_0

    .line 249
    :goto_0
    if-eqz v11, :cond_0

    .line 250
    invoke-virtual {v11}, Landroid/app/usage/NetworkStats;->close()V

    .line 253
    :cond_0
    :goto_1
    return-void

    .line 186
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 187
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    .line 188
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 186
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    const v2, 0x7f0f01e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    const v2, 0x7f0f01e4

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 192
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 190
    invoke-virtual {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v9

    .line 245
    .local v9, "e":Ljava/lang/SecurityException;
    :goto_2
    const v1, 0x7f0f01ed

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->showErrorDialog(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v11, :cond_0

    .line 250
    invoke-virtual {v11}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_1

    .line 196
    .end local v9    # "e":Ljava/lang/SecurityException;
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 197
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    .line 198
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 196
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mExplanation:Landroid/widget/TextView;

    const v2, 0x7f0f01eb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    const v2, 0x7f0f01ea

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 201
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 202
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 200
    invoke-virtual {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageSummary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 246
    :catch_1
    move-exception v1

    :goto_3
    move-object v9, v1

    .line 247
    .local v9, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->showErrorDialog(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    if-eqz v11, :cond_0

    .line 250
    invoke-virtual {v11}, Landroid/app/usage/NetworkStats;->close()V

    goto/16 :goto_1

    .line 206
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_4
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 207
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    .line 208
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 206
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v11

    .line 209
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    if-eqz v11, :cond_2

    move-object v8, v0

    .line 211
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .local v8, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :goto_5
    :try_start_5
    invoke-virtual {v11}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :try_start_6
    invoke-virtual {v11, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 214
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/usage/NetworkStats$Bucket;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_5

    :cond_1
    move-object v0, v8

    .line 217
    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 218
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 246
    :catch_2
    move-exception v1

    :goto_6
    move-object v9, v1

    goto :goto_4

    .line 221
    :pswitch_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mNetstatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mStartDate:Ljava/util/Date;

    .line 222
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mEndDate:Ljava/util/Date;

    .line 223
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 221
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v11

    .line 224
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 225
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    .local v13, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;>;"
    if-eqz v11, :cond_5

    move-object v8, v0

    .line 227
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :goto_7
    :try_start_7
    invoke-virtual {v11}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 229
    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :try_start_8
    invoke-virtual {v11, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 230
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v12

    .line 231
    .local v12, "uid":I
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 232
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    if-nez v10, :cond_3

    .line 233
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListData:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v13, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    :cond_3
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    .line 238
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_7

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    .end local v12    # "uid":I
    :cond_4
    move-object v0, v8

    .line 240
    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :cond_5
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 241
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mDataUsageList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 249
    .end local v13    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;>;"
    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v11, :cond_6

    .line 250
    invoke-virtual {v11}, Landroid/app/usage/NetworkStats;->close()V

    :cond_6
    throw v1

    .line 249
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_8

    .line 246
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_3
    move-exception v1

    move-object v0, v8

    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto/16 :goto_3

    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_4
    move-exception v1

    move-object v0, v8

    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto :goto_6

    .line 244
    .end local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_5
    move-exception v9

    move-object v0, v8

    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    .restart local v0    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    goto/16 :goto_2

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 262
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 263
    .local v5, "item":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->transitionAppHistoryView(I)V

    .line 264
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->transitionAppHistoryView(I)V

    .line 266
    new-instance v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;

    .line 267
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x109000d

    const v4, 0x1020016

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;)V

    .line 296
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/app/usage/NetworkStats$Bucket;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->mAppHistoryList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/app/usage/NetworkStats$Bucket;>;"
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
