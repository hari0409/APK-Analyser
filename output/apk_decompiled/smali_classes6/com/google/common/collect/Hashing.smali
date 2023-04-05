.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final C1:J = -0x3361d2afL

.field private static final C2:J = 0x1b873593L

.field private static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 5
    .param p0, "expectedEntries"    # I
    .param p1, "loadFactor"    # D

    .prologue
    .line 62
    const/4 v2, 0x2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 65
    .local v0, "tableSize":I
    int-to-double v2, v0

    mul-double/2addr v2, p1

    double-to-int v2, v2

    if-le p0, v2, :cond_1

    .line 66
    shl-int/lit8 v0, v0, 0x1

    .line 67
    if-lez v0, :cond_0

    move v2, v0

    :goto_0
    move v1, v0

    .line 69
    .end local v0    # "tableSize":I
    .local v1, "tableSize":I
    :goto_1
    return v2

    .line 67
    .end local v1    # "tableSize":I
    .restart local v0    # "tableSize":I
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    move v1, v0

    .end local v0    # "tableSize":I
    .restart local v1    # "tableSize":I
    move v2, v0

    .line 69
    goto :goto_1
.end method

.method static needsResizing(IID)Z
    .locals 4
    .param p0, "size"    # I
    .param p1, "tableSize"    # I
    .param p2, "loadFactor"    # D

    .prologue
    .line 73
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static smear(I)I
    .locals 6
    .param p0, "hashCode"    # I

    .prologue
    .line 50
    const-wide/32 v0, 0x1b873593

    int-to-long v2, p0

    const-wide/32 v4, -0x3361d2af

    mul-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 54
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
