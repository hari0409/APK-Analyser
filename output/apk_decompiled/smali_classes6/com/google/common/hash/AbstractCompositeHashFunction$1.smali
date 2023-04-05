.class Lcom/google/common/hash/AbstractCompositeHashFunction$1;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

.field final synthetic val$hashers:[Lcom/google/common/hash/Hasher;


# direct methods
.method constructor <init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/hash/AbstractCompositeHashFunction;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iput-object p2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractCompositeHashFunction;->makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 145
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 146
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # B

    .prologue
    .line 71
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 72
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 96
    .local v1, "pos":I
    iget-object v3, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 97
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 79
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 80
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 87
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 88
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 153
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 154
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(D)Lcom/google/common/hash/Hasher;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 137
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 138
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 129
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 130
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 114
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 121
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 122
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .locals 4
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
    .line 177
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 178
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "s"    # S

    .prologue
    .line 105
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 106
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putShort(S)Lcom/google/common/hash/Hasher;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 170
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 162
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
