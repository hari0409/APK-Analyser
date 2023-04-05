.class Lcom/google/common/io/CharSource$StringCharSource;
.super Lcom/google/common/io/CharSource$CharSequenceCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringCharSource"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    .line 556
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/google/common/io/CharSink;)J
    .locals 6
    .param p1, "sink"    # Lcom/google/common/io/CharSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 574
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Writer;

    .line 575
    .local v2, "writer":Ljava/io/Writer;
    iget-object v3, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    iget-object v3, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    int-to-long v4, v3

    .line 580
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 576
    return-wide v4

    .line 577
    .end local v2    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v3
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .locals 2
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 566
    iget-object v0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public openStream()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 560
    new-instance v1, Ljava/io/StringReader;

    iget-object v0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
