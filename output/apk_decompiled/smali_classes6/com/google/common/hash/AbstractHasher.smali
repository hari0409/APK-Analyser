.class abstract Lcom/google/common/hash/AbstractHasher;
.super Ljava/lang/Object;
.source "AbstractHasher.java"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final putBoolean(Z)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 32
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/hash/AbstractHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    :cond_0
    return-object p0

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 78
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/AbstractHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 65
    add-int v1, p2, p3

    array-length v2, p1

    invoke-static {p2, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 67
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 111
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 112
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 113
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putDouble(D)Lcom/google/common/hash/Hasher;
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/hash/AbstractHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public final putFloat(F)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 94
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 95
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 96
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 97
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 98
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 104
    ushr-long v2, p1, v0

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 103
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 106
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V

    .line 119
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 87
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 88
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 89
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 48
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/hash/AbstractHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
