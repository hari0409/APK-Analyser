.class public final Lcom/google/common/io/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/CharStreams$NullWriter;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .param p0, "target"    # Ljava/lang/Appendable;

    .prologue
    .line 342
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 343
    check-cast p0, Ljava/io/Writer;

    .line 345
    .end local p0    # "target":Ljava/lang/Appendable;
    :goto_0
    return-object p0

    .restart local p0    # "target":Ljava/lang/Appendable;
    :cond_0
    new-instance v0, Lcom/google/common/io/AppendableWriter;

    invoke-direct {v0, p0}, Lcom/google/common/io/AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 6
    .param p0, "from"    # Ljava/lang/Readable;
    .param p1, "to"    # Ljava/lang/Appendable;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_2

    .line 75
    instance-of v1, p1, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 76
    check-cast p0, Ljava/io/Reader;

    .end local p0    # "from":Ljava/lang/Readable;
    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1    # "to":Ljava/lang/Appendable;
    invoke-static {p0, p1}, Lcom/google/common/io/CharStreams;->copyReaderToBuilder(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    move-result-wide v2

    .line 91
    .restart local p1    # "to":Ljava/lang/Appendable;
    :cond_0
    :goto_0
    return-wide v2

    .line 78
    .restart local p0    # "from":Ljava/lang/Readable;
    :cond_1
    check-cast p0, Ljava/io/Reader;

    .end local p0    # "from":Ljava/lang/Readable;
    invoke-static {p1}, Lcom/google/common/io/CharStreams;->asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/io/CharStreams;->copyReaderToWriter(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v2

    goto :goto_0

    .line 81
    .restart local p0    # "from":Ljava/lang/Readable;
    :cond_2
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "total":J
    invoke-static {}, Lcom/google/common/io/CharStreams;->createBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 85
    .local v0, "buf":Ljava/nio/CharBuffer;
    :goto_1
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 88
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 89
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method static copyReaderToBuilder(Ljava/io/Reader;Ljava/lang/StringBuilder;)J
    .locals 6
    .param p0, "from"    # Ljava/io/Reader;
    .param p1, "to"    # Ljava/lang/StringBuilder;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v4, 0x800

    new-array v0, v4, [C

    .line 119
    .local v0, "buf":[C
    const-wide/16 v2, 0x0

    .line 120
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "nRead":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 121
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 122
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 124
    :cond_0
    return-wide v2
.end method

.method static copyReaderToWriter(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .param p0, "from"    # Ljava/io/Reader;
    .param p1, "to"    # Ljava/io/Writer;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v4, 0x800

    new-array v0, v4, [C

    .line 147
    .local v0, "buf":[C
    const-wide/16 v2, 0x0

    .line 148
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "nRead":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 149
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    .line 150
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 152
    :cond_0
    return-wide v2
.end method

.method static createBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static exhaust(Ljava/lang/Readable;)J
    .locals 8
    .param p0, "readable"    # Ljava/lang/Readable;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const-wide/16 v4, 0x0

    .line 240
    .local v4, "total":J
    invoke-static {}, Lcom/google/common/io/CharStreams;->createBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 241
    .local v0, "buf":Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    int-to-long v2, v1

    .local v2, "read":J
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 242
    add-long/2addr v4, v2

    .line 243
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 245
    :cond_0
    return-wide v4
.end method

.method public static nullWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/google/common/io/CharStreams$NullWriter;->access$000()Lcom/google/common/io/CharStreams$NullWriter;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/lang/Readable;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "readable"    # Ljava/lang/Readable;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Readable;",
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
    .line 217
    .local p1, "processor":Lcom/google/common/io/LineProcessor;, "Lcom/google/common/io/LineProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 222
    .local v1, "lineReader":Lcom/google/common/io/LineReader;
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 223
    invoke-interface {p1, v0}, Lcom/google/common/io/LineProcessor;->processLine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/LineProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readLines(Ljava/lang/Readable;)Ljava/util/List;
    .locals 3
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Readable;",
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
    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 200
    .local v1, "lineReader":Lcom/google/common/io/LineReader;
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_0
    return-object v2
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 7
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 258
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 260
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 261
    .local v0, "amt":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 262
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 264
    :cond_0
    sub-long/2addr p1, v0

    .line 265
    goto :goto_0

    .line 266
    .end local v0    # "amt":J
    :cond_1
    return-void
.end method

.method public static toString(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 178
    check-cast p0, Ljava/io/Reader;

    .end local p0    # "r":Ljava/lang/Readable;
    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copyReaderToBuilder(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    .line 182
    :goto_0
    return-object v0

    .line 180
    .restart local p0    # "r":Ljava/lang/Readable;
    :cond_0
    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    goto :goto_0
.end method
