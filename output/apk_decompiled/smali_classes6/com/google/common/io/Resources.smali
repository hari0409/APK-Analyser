.class public final Lcom/google/common/io/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/Resources$UrlByteSource;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 56
    new-instance v0, Lcom/google/common/io/Resources$UrlByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/Resources$UrlByteSource;-><init>(Ljava/net/URL;Lcom/google/common/io/Resources$1;)V

    return-object v0
.end method

.method public static asCharSource(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/google/common/io/Resources;->asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Ljava/net/URL;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "from"    # Ljava/net/URL;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p0}, Lcom/google/common/io/Resources;->asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 173
    return-void
.end method

.method public static getResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 207
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "resource %s relative to %s not found."

    .line 208
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v1, v2, p1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    return-object v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "resourceName"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Lcom/google/common/io/Resources;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 192
    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 194
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 195
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "resource %s not found."

    invoke-static {v2, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-object v1

    .line 195
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readLines(Ljava/net/URL;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "callback":Lcom/google/common/io/LineProcessor;, "Lcom/google/common/io/LineProcessor<TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/io/Resources;->asCharSource(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/CharSource;->readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/google/common/io/Resources$1;

    invoke-direct {v0}, Lcom/google/common/io/Resources$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/io/Resources;->readLines(Ljava/net/URL;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static toByteArray(Ljava/net/URL;)[B
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/common/io/Resources;->asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/google/common/io/Resources;->asCharSource(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
