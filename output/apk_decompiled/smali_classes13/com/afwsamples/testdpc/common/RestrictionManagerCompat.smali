.class public Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;
.super Ljava/lang/Object;
.source "RestrictionManagerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestrictionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBundleArrayRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)V
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 101
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v1

    .line 103
    .local v1, "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    array-length v4, v1

    new-array v0, v4, [Landroid/os/Bundle;

    .line 104
    .local v0, "bundleArray":[Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 105
    aget-object v4, v1, v3

    .line 106
    invoke-virtual {v4}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v2

    .line 107
    .local v2, "bundleRestrictions":[Landroid/content/RestrictionEntry;
    if-nez v2, :cond_0

    .line 109
    const-string v4, "RestrictionManager"

    const-string v5, "addRestrictionToBundle: Non-bundle entry found in bundle array"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v0, v3

    .line 104
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_1

    .line 117
    .end local v2    # "bundleRestrictions":[Landroid/content/RestrictionEntry;
    :cond_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 121
    .end local v0    # "bundleArray":[Landroid/os/Bundle;
    .end local v1    # "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    .end local v3    # "i":I
    :goto_2
    return-void

    .line 119
    :cond_2
    const-string v4, "RestrictionManager"

    const-string v5, "addBundleArrayRestrictionToBundle is called in pre-M"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static addBundleRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 90
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v1

    .line 92
    .local v1, "restrictions":[Landroid/content/RestrictionEntry;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    .end local v0    # "childBundle":Landroid/os/Bundle;
    .end local v1    # "restrictions":[Landroid/content/RestrictionEntry;
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v2, "RestrictionManager"

    const-string v3, "addBundleRestrictionToBundle is called in pre-M"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported restrictionEntry type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :goto_0
    return-object p0

    .line 66
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_5
    invoke-static {p0, p1}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->addBundleRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)V

    goto :goto_0

    .line 79
    :pswitch_6
    invoke-static {p0, p1}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->addBundleArrayRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    .line 54
    .local v1, "entry":Landroid/content/RestrictionEntry;
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    goto :goto_0

    .line 56
    .end local v1    # "entry":Landroid/content/RestrictionEntry;
    :cond_0
    return-object v0
.end method
