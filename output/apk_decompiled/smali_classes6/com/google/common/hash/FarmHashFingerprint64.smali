.class final Lcom/google/common/hash/FarmHashFingerprint64;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "FarmHashFingerprint64.java"


# static fields
.field static final FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x3c5a37a36834ced9L

.field private static final K1:J = -0x4b6d499041670d8dL

.field private static final K2:J = -0x651e95c4d06fbfb1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/common/hash/FarmHashFingerprint64;

    invoke-direct {v0}, Lcom/google/common/hash/FarmHashFingerprint64;-><init>()V

    sput-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method static fingerprint([BII)J
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 70
    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength0to16([BII)J

    move-result-wide v0

    .line 78
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength17to32([BII)J

    move-result-wide v0

    goto :goto_0

    .line 75
    :cond_1
    const/16 v0, 0x40

    if-gt p2, v0, :cond_2

    .line 76
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength33To64([BII)J

    move-result-wide v0

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength65Plus([BII)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static hashLength0to16([BII)J
    .locals 20
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 118
    const/16 v8, 0x8

    move/from16 v0, p2

    if-lt v0, v8, :cond_0

    .line 119
    const-wide v8, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-int/lit8 v10, p2, 0x2

    int-to-long v10, v10

    add-long v6, v8, v10

    .line 120
    .local v6, "mul":J
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long v14, v8, v10

    .line 121
    .local v14, "a":J
    add-int v8, p1, p2

    add-int/lit8 v8, v8, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    .line 122
    .local v16, "b":J
    const/16 v8, 0x25

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long v2, v8, v14

    .line 123
    .local v2, "c":J
    const/16 v8, 0x19

    invoke-static {v14, v15, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long v8, v8, v16

    mul-long v4, v8, v6

    .line 124
    .local v4, "d":J
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v8

    .line 139
    .end local v2    # "c":J
    .end local v4    # "d":J
    .end local v6    # "mul":J
    .end local v14    # "a":J
    .end local v16    # "b":J
    :goto_0
    return-wide v8

    .line 126
    :cond_0
    const/4 v8, 0x4

    move/from16 v0, p2

    if-lt v0, v8, :cond_1

    .line 127
    const-wide v8, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-int/lit8 v10, p2, 0x2

    int-to-long v10, v10

    add-long v6, v8, v10

    .line 128
    .restart local v6    # "mul":J
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long v14, v8, v10

    .line 129
    .restart local v14    # "a":J
    move/from16 v0, p2

    int-to-long v8, v0

    const/4 v10, 0x3

    shl-long v10, v14, v10

    add-long/2addr v8, v10

    add-int v10, p1, p2

    add-int/lit8 v10, v10, -0x4

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v8

    goto :goto_0

    .line 131
    .end local v6    # "mul":J
    .end local v14    # "a":J
    :cond_1
    if-lez p2, :cond_2

    .line 132
    aget-byte v14, p0, p1

    .line 133
    .local v14, "a":B
    shr-int/lit8 v8, p2, 0x1

    add-int v8, v8, p1

    aget-byte v16, p0, v8

    .line 134
    .local v16, "b":B
    add-int/lit8 v8, p2, -0x1

    add-int v8, v8, p1

    aget-byte v2, p0, v8

    .line 135
    .local v2, "c":B
    and-int/lit16 v8, v14, 0xff

    move/from16 v0, v16

    and-int/lit16 v9, v0, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int v18, v8, v9

    .line 136
    .local v18, "y":I
    and-int/lit16 v8, v2, 0xff

    shl-int/lit8 v8, v8, 0x2

    add-int v19, p2, v8

    .line 137
    .local v19, "z":I
    move/from16 v0, v18

    int-to-long v8, v0

    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long/2addr v8, v10

    move/from16 v0, v19

    int-to-long v10, v0

    const-wide v12, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v10, v12

    xor-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v8

    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long/2addr v8, v10

    goto :goto_0

    .line 139
    .end local v2    # "c":B
    .end local v14    # "a":B
    .end local v16    # "b":B
    .end local v18    # "y":I
    .end local v19    # "z":I
    :cond_2
    const-wide v8, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    goto :goto_0
.end method

.method private static hashLength16(JJJ)J
    .locals 8
    .param p0, "u"    # J
    .param p2, "v"    # J
    .param p4, "mul"    # J

    .prologue
    const/16 v6, 0x2f

    .line 87
    xor-long v4, p0, p2

    mul-long v0, v4, p4

    .line 88
    .local v0, "a":J
    ushr-long v4, v0, v6

    xor-long/2addr v0, v4

    .line 89
    xor-long v4, p2, v0

    mul-long v2, v4, p4

    .line 90
    .local v2, "b":J
    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    .line 91
    mul-long/2addr v2, p4

    .line 92
    return-wide v2
.end method

.method private static hashLength17to32([BII)J
    .locals 15
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 143
    const-wide v0, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-int/lit8 v2, p2, 0x2

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 144
    .local v4, "mul":J
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    const-wide v2, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v6, v0, v2

    .line 145
    .local v6, "a":J
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    .line 146
    .local v8, "b":J
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x8

    invoke-static {p0, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    mul-long v10, v0, v4

    .line 147
    .local v10, "c":J
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x10

    invoke-static {p0, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    const-wide v2, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v12, v0, v2

    .line 148
    .local v12, "d":J
    add-long v0, v6, v8

    const/16 v2, 0x2b

    .line 149
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    const/16 v2, 0x1e

    invoke-static {v10, v11, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v0, v12

    const-wide v2, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v2, v8

    const/16 v14, 0x12

    invoke-static {v2, v3, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v2, v10

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hashLength33To64([BII)J
    .locals 32
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 153
    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-int/lit8 v8, p2, 0x2

    int-to-long v8, v8

    add-long v6, v4, v8

    .line 154
    .local v6, "mul":J
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    const-wide v8, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v14, v4, v8

    .line 155
    .local v14, "a":J
    add-int/lit8 v4, p1, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    .line 156
    .local v16, "b":J
    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    mul-long v18, v4, v6

    .line 157
    .local v18, "c":J
    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    const-wide v8, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v20, v4, v8

    .line 158
    .local v20, "d":J
    add-long v4, v14, v16

    const/16 v8, 0x2b

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const/16 v8, 0x1e

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v4, v8

    add-long v2, v4, v20

    .line 159
    .local v2, "y":J
    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long v4, v4, v16

    const/16 v8, 0x12

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v14

    add-long v4, v4, v18

    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v30

    .line 160
    .local v30, "z":J
    add-int/lit8 v4, p1, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    mul-long v22, v4, v6

    .line 161
    .local v22, "e":J
    add-int/lit8 v4, p1, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v24

    .line 162
    .local v24, "f":J
    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x20

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v4, v2

    mul-long v26, v4, v6

    .line 163
    .local v26, "g":J
    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x18

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v4, v30

    mul-long v28, v4, v6

    .line 164
    .local v28, "h":J
    add-long v4, v22, v24

    const/16 v8, 0x2b

    .line 165
    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const/16 v8, 0x1e

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v4, v8

    add-long v8, v4, v28

    add-long v4, v24, v14

    const/16 v10, 0x12

    invoke-static {v4, v5, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long v4, v4, v22

    add-long v10, v4, v26

    move-wide v12, v6

    .line 164
    invoke-static/range {v8 .. v13}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private static hashLength65Plus([BII)J
    .locals 30
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 172
    const/16 v20, 0x51

    .line 174
    .local v20, "seed":I
    const-wide/16 v24, 0x51

    .line 176
    .local v24, "x":J
    const-wide v26, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    .line 177
    .local v26, "y":J
    const-wide v2, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v2, v2, v26

    const-wide/16 v4, 0x71

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v28, v2, v4

    .line 178
    .local v28, "z":J
    const/4 v2, 0x2

    new-array v8, v2, [J

    .line 179
    .local v8, "v":[J
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v16, v0

    .line 180
    .local v16, "w":[J
    const-wide v2, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v2, v2, v24

    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v24, v2, v4

    .line 183
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x40

    mul-int/lit8 v2, v2, 0x40

    add-int v9, p1, v2

    .line 184
    .local v9, "end":I
    add-int/lit8 v2, p2, -0x1

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v9

    add-int/lit8 v17, v2, -0x3f

    .line 186
    .local v17, "last64offset":I
    :cond_0
    add-long v2, v24, v26

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    add-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0x25

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v4, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v24, v2, v4

    .line 187
    const/4 v2, 0x1

    aget-wide v2, v8, v2

    add-long v2, v2, v26

    add-int/lit8 v4, p1, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v4, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v26, v2, v4

    .line 188
    const/4 v2, 0x1

    aget-wide v2, v16, v2

    xor-long v24, v24, v2

    .line 189
    const/4 v2, 0x0

    aget-wide v2, v8, v2

    add-int/lit8 v4, p1, 0x28

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long v26, v26, v2

    .line 190
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-long v2, v2, v28

    const/16 v4, 0x21

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v4, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v28, v2, v4

    .line 191
    const/4 v2, 0x1

    aget-wide v2, v8, v2

    const-wide v4, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long/2addr v4, v2

    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-long v6, v24, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 192
    add-int/lit8 v11, p1, 0x20

    const/4 v2, 0x1

    aget-wide v2, v16, v2

    add-long v12, v28, v2

    add-int/lit8 v2, p1, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long v14, v26, v2

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 193
    move-wide/from16 v22, v24

    .line 194
    .local v22, "tmp":J
    move-wide/from16 v24, v28

    .line 195
    move-wide/from16 v28, v22

    .line 196
    add-int/lit8 p1, p1, 0x40

    .line 197
    move/from16 v0, p1

    if-ne v0, v9, :cond_0

    .line 198
    const-wide v2, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const-wide/16 v4, 0xff

    and-long v4, v4, v28

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    add-long v18, v2, v4

    .line 200
    .local v18, "mul":J
    move/from16 p1, v17

    .line 201
    const/4 v2, 0x0

    aget-wide v4, v16, v2

    add-int/lit8 v3, p2, -0x1

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v16, v2

    .line 202
    const/4 v2, 0x0

    aget-wide v4, v8, v2

    const/4 v3, 0x0

    aget-wide v6, v16, v3

    add-long/2addr v4, v6

    aput-wide v4, v8, v2

    .line 203
    const/4 v2, 0x0

    aget-wide v4, v16, v2

    const/4 v3, 0x0

    aget-wide v6, v8, v3

    add-long/2addr v4, v6

    aput-wide v4, v16, v2

    .line 204
    add-long v2, v24, v26

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    add-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0x25

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v24, v2, v18

    .line 205
    const/4 v2, 0x1

    aget-wide v2, v8, v2

    add-long v2, v2, v26

    add-int/lit8 v4, p1, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v26, v2, v18

    .line 206
    const/4 v2, 0x1

    aget-wide v2, v16, v2

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    xor-long v24, v24, v2

    .line 207
    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    add-int/lit8 v4, p1, 0x28

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long v26, v26, v2

    .line 208
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-long v2, v2, v28

    const/16 v4, 0x21

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v28, v2, v18

    .line 209
    const/4 v2, 0x1

    aget-wide v2, v8, v2

    mul-long v4, v2, v18

    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-long v6, v24, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 210
    add-int/lit8 v11, p1, 0x20

    const/4 v2, 0x1

    aget-wide v2, v16, v2

    add-long v12, v28, v2

    add-int/lit8 v2, p1, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long v14, v26, v2

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 211
    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    move-wide/from16 v6, v18

    .line 212
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    invoke-static/range {v26 .. v27}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v4

    const-wide v6, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long v10, v2, v24

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    const/4 v4, 0x1

    aget-wide v4, v16, v4

    move-wide/from16 v6, v18

    .line 213
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    add-long v4, v2, v28

    move-wide v2, v10

    move-wide/from16 v6, v18

    .line 211
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static shiftMix(J)J
    .locals 2
    .param p0, "val"    # J

    .prologue
    .line 83
    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static weakHashLength32WithSeeds([BIJJ[J)V
    .locals 16
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "seedA"    # J
    .param p4, "seedB"    # J
    .param p6, "output"    # [J

    .prologue
    .line 102
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    .line 103
    .local v4, "part1":J
    add-int/lit8 v12, p1, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v6

    .line 104
    .local v6, "part2":J
    add-int/lit8 v12, p1, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v8

    .line 105
    .local v8, "part3":J
    add-int/lit8 v12, p1, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    .line 107
    .local v10, "part4":J
    add-long p2, p2, v4

    .line 108
    add-long v12, p4, p2

    add-long/2addr v12, v10

    const/16 v14, 0x15

    invoke-static {v12, v13, v14}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    .line 109
    move-wide/from16 v2, p2

    .line 110
    .local v2, "c":J
    add-long p2, p2, v6

    .line 111
    add-long p2, p2, v8

    .line 112
    const/16 v12, 0x2c

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v12}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    add-long p4, p4, v12

    .line 113
    const/4 v12, 0x0

    add-long v14, p2, v10

    aput-wide v14, p6, v12

    .line 114
    const/4 v12, 0x1

    add-long v14, p4, v2

    aput-wide v14, p6, v12

    .line 115
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x40

    return v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 51
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 52
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/FarmHashFingerprint64;->fingerprint([BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Hashing.farmHashFingerprint64()"

    return-object v0
.end method
