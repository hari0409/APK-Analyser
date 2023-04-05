.class public Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;
.super Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
.source "UserRestrictionIndexableFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method public index(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
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

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "preferenceIndices":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    sget-object v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 20
    .local v1, "userRestriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    new-instance v5, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    iget-object v6, v1, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    iget v7, v1, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    .line 22
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/afwsamples/testdpc/search/PreferenceIndex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "userRestriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    :cond_0
    return-object v0
.end method
