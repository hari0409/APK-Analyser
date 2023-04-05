.class public abstract synthetic Lcom/afwsamples/testdpc/common/Dumpable$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static isQuietMode$$STATIC$$([Ljava/lang/String;)Z
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 31
    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    aget-object v1, p0, v0

    const-string v2, "-q"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, v0

    const-string v2, "--quiet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
