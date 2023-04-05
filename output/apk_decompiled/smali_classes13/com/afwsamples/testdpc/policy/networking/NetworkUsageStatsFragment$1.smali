.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "NetworkUsageStatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 113
    .local p5, "arg3":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    iput-object p6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    move-object v0, p2

    .line 117
    .local v0, "appView":Landroid/view/View;
    if-nez p2, :cond_0

    .line 118
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0b002e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x1020010

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 121
    .local v4, "summary":Landroid/widget/TextView;
    const v6, 0x7f090180

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, "state":Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 123
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v6, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;

    invoke-direct {v6, v5, v4, v3, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "state":Landroid/widget/TextView;
    .end local v4    # "summary":Landroid/widget/TextView;
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 126
    .local v2, "item":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v6, v0, v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->access$000(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/view/View;Ljava/util/List;)V

    .line 127
    return-object v0
.end method
