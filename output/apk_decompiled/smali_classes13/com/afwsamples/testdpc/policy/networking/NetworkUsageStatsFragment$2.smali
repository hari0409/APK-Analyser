.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "NetworkUsageStatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/app/usage/NetworkStats$Bucket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 267
    .local p5, "arg3":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method private getDateString(Ljava/util/Date;Ljava/util/Date;)Landroid/text/Spanned;
    .locals 6
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 288
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$200(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "startDateString":Ljava/lang/String;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$300(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "startHourMinuteString":Ljava/lang/String;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$300(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "endHourMinuteString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "resultString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 270
    move-object/from16 v7, p2

    .line 271
    .local v7, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-virtual {v8}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0b0042

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 275
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/NetworkStats$Bucket;

    .line 276
    .local v3, "item":Landroid/app/usage/NetworkStats$Bucket;
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getStartTimeStamp()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 277
    .local v4, "startDate":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getEndTimeStamp()J

    move-result-wide v8

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 278
    .local v2, "endDate":Ljava/util/Date;
    const v8, 0x7f0901b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 279
    .local v5, "text1":Landroid/widget/TextView;
    const v8, 0x7f0901b9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 280
    .local v6, "text2":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->getDateString(Ljava/util/Date;Ljava/util/Date;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    const v9, 0x7f0f01e0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .line 282
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$100(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$2;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    .line 283
    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$100(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 281
    invoke-virtual {v8, v9, v10}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-object v7
.end method
