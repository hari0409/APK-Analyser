.class public Lcom/afwsamples/testdpc/search/XmlIndexableFragment;
.super Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
.source "XmlIndexableFragment.java"


# static fields
.field private static final NODE_NAME_PREFERENCE_CATEGORY:Ljava/lang/String; = "PreferenceCategory"

.field private static final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String; = "PreferenceScreen"

.field private static final TAG:Ljava/lang/String; = "PreferenceCrawler_Timer"


# instance fields
.field public xmlRes:I
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .param p2, "xmlRes"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;-><init>(Ljava/lang/Class;)V

    .line 30
    iput p2, p0, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;->xmlRes:I

    .line 31
    return-void
.end method


# virtual methods
.method public index(Landroid/content/Context;)Ljava/util/List;
    .locals 14
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
    const/4 v13, 0x3

    const/4 v12, 0x1

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v3, "indexablePreferences":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;->xmlRes:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 43
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :try_start_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    if-eq v9, v12, :cond_1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 47
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "nodeName":Ljava/lang/String;
    const-string v10, "PreferenceScreen"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 49
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 51
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v1

    .line 73
    .local v1, "ex":Ljava/lang/Exception;
    :goto_0
    const-string v10, "PreferenceCrawler_Timer"

    const-string v11, "Error in parsing a preference xml file, skip it"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    return-object v3

    .line 54
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_3
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 55
    .local v6, "outerDepth":I
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 56
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_4
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v12, :cond_2

    if-ne v9, v13, :cond_5

    .line 57
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_2

    .line 58
    :cond_5
    if-eq v9, v13, :cond_4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    .line 61
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {p1, v0}, Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "key":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "title":Ljava/lang/String;
    const-string v10, "PreferenceCategory"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 65
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 68
    new-instance v2, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    iget-object v10, p0, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-direct {v2, v4, v8, v10}, Lcom/afwsamples/testdpc/search/PreferenceIndex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "indexablePreference":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 72
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "indexablePreference":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
