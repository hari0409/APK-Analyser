.class final Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "ChecksumHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/ChecksumHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChecksumHasher"
.end annotation


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field final synthetic this$0:Lcom/google/common/hash/ChecksumHashFunction;


# direct methods
.method private constructor <init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;)V
    .locals 1
    .param p2, "checksum"    # Ljava/util/zip/Checksum;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->this$0:Lcom/google/common/hash/ChecksumHashFunction;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 61
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Checksum;

    iput-object v0, p0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;Lcom/google/common/hash/ChecksumHashFunction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/hash/ChecksumHashFunction;
    .param p2, "x1"    # Ljava/util/zip/Checksum;
    .param p3, "x2"    # Lcom/google/common/hash/ChecksumHashFunction$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;-><init>(Lcom/google/common/hash/ChecksumHashFunction;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 4

    .prologue
    .line 76
    iget-object v2, p0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 77
    .local v0, "value":J
    iget-object v2, p0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->this$0:Lcom/google/common/hash/ChecksumHashFunction;

    invoke-static {v2}, Lcom/google/common/hash/ChecksumHashFunction;->access$100(Lcom/google/common/hash/ChecksumHashFunction;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 83
    long-to-int v2, v0

    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v2

    .line 85
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v2

    goto :goto_0
.end method

.method protected update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    .line 67
    return-void
.end method

.method protected update([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/hash/ChecksumHashFunction$ChecksumHasher;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 72
    return-void
.end method
