.class public Lcom/afwsamples/testdpc/search/PreferenceCrawler;
.super Ljava/lang/Object;
.source "PreferenceCrawler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCrawler_Timer"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PreferenceCrawler;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public doCrawl()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v3, Landroid/util/TimingLogger;

    const-string v4, "PreferenceCrawler_Timer"

    const-string v5, "doCrawl"

    invoke-direct {v3, v4, v5}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v3, "logger":Landroid/util/TimingLogger;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v2, "indexablePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/search/IndexableFragments;->values()Ljava/util/List;

    move-result-object v1

    .line 26
    .local v1, "indexableFragments":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/BaseIndexableFragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;

    .line 27
    .local v0, "indexableFragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    iget-object v5, p0, Lcom/afwsamples/testdpc/search/PreferenceCrawler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->index(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v0    # "indexableFragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    :cond_0
    const-string v4, "Finish crawling"

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 32
    return-object v2
.end method
