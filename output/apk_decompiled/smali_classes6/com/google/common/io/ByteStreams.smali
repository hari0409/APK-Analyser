.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$LimitedInputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;,
        Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final ZERO_COPY_CHUNK_SIZE:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 102
    .local v0, "buf":[B
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 105
    .local v1, "r":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 111
    return-wide v2

    .line 108
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 110
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 14
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    instance-of v4, p0, Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 128
    check-cast v1, Ljava/nio/channels/FileChannel;

    .line 129
    .local v1, "sourceChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    .line 130
    .local v10, "oldPosition":J
    move-wide v2, v10

    .line 133
    .local v2, "position":J
    :cond_0
    const-wide/32 v4, 0x80000

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 134
    .local v8, "copied":J
    add-long/2addr v2, v8

    .line 135
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 136
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 137
    sub-long v12, v2, v10

    .line 149
    .end local v1    # "sourceChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "position":J
    .end local v8    # "copied":J
    .end local v10    # "oldPosition":J
    :cond_1
    return-wide v12

    .line 140
    :cond_2
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v12, 0x0

    .line 142
    .local v12, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 144
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v12, v4

    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method static createBuffer()[B
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x2000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static exhaust(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "total":J
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 227
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    int-to-long v2, v1

    .local v2, "read":J
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 228
    add-long/2addr v4, v2

    goto :goto_0

    .line 230
    :cond_0
    return-wide v4
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # J

    .prologue
    .line 630
    new-instance v0, Lcom/google/common/io/ByteStreams$LimitedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "byteArrayInputStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 261
    new-instance v1, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-object v1
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 238
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .prologue
    .line 249
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 250
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .prologue
    .line 411
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 5
    .param p0, "size"    # I

    .prologue
    .line 423
    if-gez p0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 2
    .param p0, "byteArrayOutputSteam"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 442
    new-instance v1, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method

.method public static nullOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    if-gez p3, :cond_0

    .line 848
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 850
    :cond_0
    const/4 v1, 0x0

    .line 851
    .local v1, "total":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 852
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 853
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 858
    .end local v0    # "result":I
    :cond_1
    return v1

    .line 856
    .restart local v0    # "result":I
    :cond_2
    add-int/2addr v1, v0

    .line 857
    goto :goto_0
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 814
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 815
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 717
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 733
    .local v0, "read":I
    if-eq v0, p3, :cond_0

    .line 734
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reached end of stream after reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_0
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {p0, p1, p2}, Lcom/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 750
    .local v0, "skipped":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 751
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reached end of stream after skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_0
    return-void
.end method

.method private static skipSafely(Ljava/io/InputStream;J)J
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 794
    .local v0, "available":I
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    goto :goto_0
.end method

.method static skipUpTo(Ljava/io/InputStream;J)J
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    const-wide/16 v6, 0x0

    .line 763
    .local v6, "totalSkipped":J
    invoke-static {}, Lcom/google/common/io/ByteStreams;->createBuffer()[B

    move-result-object v0

    .line 765
    .local v0, "buf":[B
    :goto_0
    cmp-long v8, v6, p1

    if-gez v8, :cond_0

    .line 766
    sub-long v2, p1, v6

    .line 767
    .local v2, "remaining":J
    invoke-static {p0, v2, v3}, Lcom/google/common/io/ByteStreams;->skipSafely(Ljava/io/InputStream;J)J

    move-result-wide v4

    .line 769
    .local v4, "skipped":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 772
    array-length v8, v0

    int-to-long v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v1, v8

    .line 773
    .local v1, "skip":I
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    int-to-long v4, v8

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 782
    .end local v1    # "skip":I
    .end local v2    # "remaining":J
    .end local v4    # "skipped":J
    :cond_0
    return-wide v6

    .line 779
    .restart local v2    # "remaining":J
    .restart local v4    # "skipped":J
    :cond_1
    add-long/2addr v6, v4

    .line 780
    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 164
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static toByteArray(Ljava/io/InputStream;I)[B
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 174
    new-array v1, p1, [B

    .line 175
    .local v1, "bytes":[B
    move v5, p1

    .line 177
    .local v5, "remaining":I
    :goto_0
    if-lez v5, :cond_2

    .line 178
    sub-int v2, p1, v5

    .line 179
    .local v2, "off":I
    invoke-virtual {p0, v1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 180
    .local v4, "read":I
    if-ne v4, v7, :cond_1

    .line 183
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 202
    .end local v1    # "bytes":[B
    .end local v2    # "off":I
    .end local v4    # "read":I
    :cond_0
    :goto_1
    return-object v1

    .line 185
    .restart local v1    # "bytes":[B
    .restart local v2    # "off":I
    .restart local v4    # "read":I
    :cond_1
    sub-int/2addr v5, v4

    .line 186
    goto :goto_0

    .line 189
    .end local v2    # "off":I
    .end local v4    # "read":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 190
    .local v0, "b":I
    if-eq v0, v7, :cond_0

    .line 195
    new-instance v3, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;-><init>(Lcom/google/common/io/ByteStreams$1;)V

    .line 196
    .local v3, "out":Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    invoke-virtual {v3, v0}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->write(I)V

    .line 197
    invoke-static {p0, v3}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 199
    array-length v7, v1

    invoke-virtual {v3}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->size()I

    move-result v8

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 200
    .local v6, "result":[B
    array-length v7, v1

    invoke-static {v1, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    array-length v7, v1

    invoke-virtual {v3, v6, v7}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->writeTo([BI)V

    move-object v1, v6

    .line 202
    goto :goto_1
.end method
