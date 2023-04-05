.class public Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;
.super Ljava/lang/Object;
.source "PreferenceXmlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getData(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 28
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p2, v3, v4

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 30
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 31
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 32
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 33
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 34
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 39
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 41
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    .line 36
    :cond_1
    :try_start_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 41
    .end local v0    # "data":Ljava/lang/CharSequence;
    .end local v2    # "tv":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .prologue
    .line 23
    const v0, 0x10101e8

    invoke-static {p0, p1, v0}, Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .prologue
    .line 18
    const v0, 0x10101e1

    invoke-static {p0, p1, v0}, Lcom/afwsamples/testdpc/search/PreferenceXmlUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
