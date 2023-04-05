.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    }
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final CHUNK_SIZE:I = 0x4

.field static final GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

.field static final MURMUR3_32:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    .line 55
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "seed"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 67
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(C)J
    .locals 2
    .param p0, "x0"    # C

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(C)J
    .locals 2
    .param p0, "x0"    # C

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(I)J
    .locals 2
    .param p0, "x0"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(II)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static charToThreeUtf8Bytes(C)J
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 399
    ushr-int/lit8 v0, p0, 0xc

    or-int/lit16 v0, v0, 0x1e0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private static charToTwoUtf8Bytes(C)J
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 405
    ushr-int/lit8 v0, p0, 0x6

    or-int/lit16 v0, v0, 0x3c0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p0, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private static codePointToFourUtf8Bytes(I)J
    .locals 8
    .param p0, "codePoint"    # I

    .prologue
    const-wide/16 v6, 0x80

    .line 392
    const-wide/16 v0, 0xf0

    ushr-int/lit8 v2, p0, 0x12

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-int/lit8 v2, p0, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static fmix(II)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p0, "h1"    # I
    .param p1, "length"    # I

    .prologue
    .line 248
    xor-int/2addr p0, p1

    .line 249
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 250
    const v0, -0x7a143595

    mul-int/2addr p0, v0

    .line 251
    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 252
    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    .line 253
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 254
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static getIntLittleEndian([BI)I
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 229
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v3, p0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method private static mixH1(II)I
    .locals 2
    .param p0, "h1"    # I
    .param p1, "k1"    # I

    .prologue
    .line 240
    xor-int/2addr p0, p1

    .line 241
    const/16 v0, 0xd

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    .line 242
    mul-int/lit8 v0, p0, 0x5

    const v1, -0x19ab949c

    add-int p0, v0, v1

    .line 243
    return p0
.end method

.method private static mixK1(I)I
    .locals 1
    .param p0, "k1"    # I

    .prologue
    .line 233
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    .line 234
    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    .line 235
    const v0, 0x1b873593

    mul-int/2addr p0, v0

    .line 236
    return p0
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x20

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 88
    .local v0, "other":Lcom/google/common/hash/Murmur3_32HashFunction;
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    iget v3, v0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 90
    .end local v0    # "other":Lcom/google/common/hash/Murmur3_32HashFunction;
    :cond_0
    return v1
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 6
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 212
    add-int v4, p2, p3

    array-length v5, p1

    invoke-static {p2, v4, v5}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 213
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 215
    .local v0, "h1":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v4, v1, 0x4

    if-gt v4, p3, :cond_0

    .line 216
    add-int v4, p2, v1

    invoke-static {p1, v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result v4

    invoke-static {v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 217
    .local v2, "k1":I
    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 215
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 220
    .end local v2    # "k1":I
    :cond_0
    const/4 v2, 0x0

    .line 221
    .restart local v2    # "k1":I
    const/4 v3, 0x0

    .local v3, "shift":I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 222
    add-int v4, p2, v1

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    shl-int/2addr v4, v3

    xor-int/2addr v2, v4

    .line 221
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x8

    goto :goto_1

    .line 224
    :cond_1
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v4

    xor-int/2addr v0, v4

    .line 225
    invoke-static {v0, p3}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 3
    .param p1, "input"    # I

    .prologue
    .line 100
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    .line 101
    .local v1, "k1":I
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v2, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 103
    .local v0, "h1":I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 7
    .param p1, "input"    # J

    .prologue
    .line 108
    long-to-int v3, p1

    .line 109
    .local v3, "low":I
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v1, v4

    .line 111
    .local v1, "high":I
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 112
    .local v2, "k1":I
    iget v4, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v4, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 114
    .local v0, "h1":I
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 115
    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 117
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 18
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 144
    sget-object v16, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 145
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 146
    .local v15, "utf16Length":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 147
    .local v10, "h1":I
    const/4 v11, 0x0

    .line 148
    .local v11, "i":I
    const/4 v13, 0x0

    .line 151
    .local v13, "len":I
    :goto_0
    add-int/lit8 v16, v11, 0x4

    move/from16 v0, v16

    if-gt v0, v15, :cond_0

    .line 152
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 153
    .local v5, "c0":C
    add-int/lit8 v16, v11, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 154
    .local v6, "c1":C
    add-int/lit8 v16, v11, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 155
    .local v7, "c2":C
    add-int/lit8 v16, v11, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 156
    .local v8, "c3":C
    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v5, v0, :cond_0

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v6, v0, :cond_0

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    .line 157
    shl-int/lit8 v16, v6, 0x8

    or-int v16, v16, v5

    shl-int/lit8 v17, v7, 0x10

    or-int v16, v16, v17

    shl-int/lit8 v17, v8, 0x18

    or-int v12, v16, v17

    .line 158
    .local v12, "k1":I
    invoke-static {v12}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v12

    .line 159
    invoke-static {v10, v12}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v10

    .line 160
    add-int/lit8 v11, v11, 0x4

    .line 161
    add-int/lit8 v13, v13, 0x4

    .line 165
    goto :goto_0

    .line 167
    .end local v5    # "c0":C
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    .end local v8    # "c3":C
    .end local v12    # "k1":I
    :cond_0
    const-wide/16 v2, 0x0

    .line 168
    .local v2, "buffer":J
    const/4 v14, 0x0

    .line 169
    .local v14, "shift":I
    :goto_1
    if-ge v11, v15, :cond_7

    .line 170
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 171
    .local v4, "c":C
    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v4, v0, :cond_2

    .line 172
    int-to-long v0, v4

    move-wide/from16 v16, v0

    shl-long v16, v16, v14

    or-long v2, v2, v16

    .line 173
    add-int/lit8 v14, v14, 0x8

    .line 174
    add-int/lit8 v13, v13, 0x1

    .line 194
    :goto_2
    const/16 v16, 0x20

    move/from16 v0, v16

    if-lt v14, v0, :cond_1

    .line 195
    long-to-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v12

    .line 196
    .restart local v12    # "k1":I
    invoke-static {v10, v12}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v10

    .line 197
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 198
    add-int/lit8 v14, v14, -0x20

    .line 169
    .end local v12    # "k1":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 175
    :cond_2
    const/16 v16, 0x800

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    .line 176
    invoke-static {v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v16

    shl-long v16, v16, v14

    or-long v2, v2, v16

    .line 177
    add-int/lit8 v14, v14, 0x10

    .line 178
    add-int/lit8 v13, v13, 0x2

    goto :goto_2

    .line 179
    :cond_3
    const v16, 0xd800

    move/from16 v0, v16

    if-lt v4, v0, :cond_4

    const v16, 0xdfff

    move/from16 v0, v16

    if-le v4, v0, :cond_5

    .line 180
    :cond_4
    invoke-static {v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v16

    shl-long v16, v16, v14

    or-long v2, v2, v16

    .line 181
    add-int/lit8 v14, v14, 0x18

    .line 182
    add-int/lit8 v13, v13, 0x3

    goto :goto_2

    .line 184
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 185
    .local v9, "codePoint":I
    if-ne v9, v4, :cond_6

    .line 187
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v16

    .line 206
    .end local v2    # "buffer":J
    .end local v4    # "c":C
    .end local v9    # "codePoint":I
    .end local v10    # "h1":I
    .end local v11    # "i":I
    .end local v13    # "len":I
    .end local v14    # "shift":I
    .end local v15    # "utf16Length":I
    :goto_3
    return-object v16

    .line 189
    .restart local v2    # "buffer":J
    .restart local v4    # "c":C
    .restart local v9    # "codePoint":I
    .restart local v10    # "h1":I
    .restart local v11    # "i":I
    .restart local v13    # "len":I
    .restart local v14    # "shift":I
    .restart local v15    # "utf16Length":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 190
    invoke-static {v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v16

    shl-long v16, v16, v14

    or-long v2, v2, v16

    .line 191
    add-int/lit8 v13, v13, 0x4

    goto :goto_2

    .line 202
    .end local v4    # "c":C
    .end local v9    # "codePoint":I
    :cond_7
    long-to-int v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v12

    .line 203
    .restart local v12    # "k1":I
    xor-int/2addr v10, v12

    .line 204
    invoke-static {v10, v13}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v16

    goto :goto_3

    .line 206
    .end local v2    # "buffer":J
    .end local v10    # "h1":I
    .end local v11    # "i":I
    .end local v12    # "k1":I
    .end local v13    # "len":I
    .end local v14    # "shift":I
    .end local v15    # "utf16Length":I
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v16

    goto :goto_3
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 125
    .local v0, "h1":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 126
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int v2, v3, v4

    .line 127
    .local v2, "k1":I
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 128
    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 125
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 132
    .end local v2    # "k1":I
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 134
    .restart local v2    # "k1":I
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 135
    xor-int/2addr v0, v2

    .line 138
    .end local v2    # "k1":I
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v3

    return-object v3
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_32("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
