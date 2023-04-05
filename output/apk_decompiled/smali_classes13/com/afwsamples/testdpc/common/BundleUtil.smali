.class public Lcom/afwsamples/testdpc/common/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleToPersistableBundle(Landroid/os/Bundle;)Landroid/os/PersistableBundle;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 30
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 31
    .local v3, "persistableBundle":Landroid/os/PersistableBundle;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 33
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 35
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 36
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 38
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v3, v1, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, [Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 40
    check-cast v4, [Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 42
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/afwsamples/testdpc/common/BundleUtil;->bundleToPersistableBundle(Landroid/os/Bundle;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 43
    .local v0, "innerBundle":Landroid/os/PersistableBundle;
    invoke-virtual {v3, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 46
    .end local v0    # "innerBundle":Landroid/os/PersistableBundle;
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method public static persistableBundleToBundle(Landroid/os/PersistableBundle;)Landroid/os/Bundle;
    .locals 7
    .param p0, "persistableBundle"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 52
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 56
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 58
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 60
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, [Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 62
    check-cast v4, [Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Landroid/os/PersistableBundle;

    if-eqz v6, :cond_0

    .line 64
    check-cast v4, Landroid/os/PersistableBundle;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/afwsamples/testdpc/common/BundleUtil;->persistableBundleToBundle(Landroid/os/PersistableBundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, "innerBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    .end local v1    # "innerBundle":Landroid/os/Bundle;
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    return-object v0
.end method
