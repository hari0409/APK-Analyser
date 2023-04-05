.class public abstract Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
.super Ljava/lang/Object;
.source "BaseIndexableFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseIndexableFragment"


# instance fields
.field protected fragmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract index(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

    .line 25
    .local v2, "fragment":Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
    invoke-virtual {v2, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->isAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 30
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    .end local v2    # "fragment":Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
    :goto_0
    return v3

    .line 26
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "BaseIndexableFragment"

    const-string v4, "isAvailable error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const/4 v3, 0x0

    goto :goto_0

    .line 26
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method
