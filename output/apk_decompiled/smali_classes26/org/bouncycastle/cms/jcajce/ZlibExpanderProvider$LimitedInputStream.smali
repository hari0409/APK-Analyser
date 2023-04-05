.class Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private remaining:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    return-void
.end method


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/util/io/StreamOverflowException;

    const-string v1, "expanded byte limit exceeded"

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->read()I

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    long-to-int p3, v0

    goto :goto_1
.end method
