.class abstract Lcom/google/common/hash/AbstractCompositeHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "AbstractCompositeHashFunction.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final functions:[Lcom/google/common/hash/HashFunction;


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 3
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 34
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 35
    .local v0, "function":Lcom/google/common/hash/HashFunction;
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "function":Lcom/google/common/hash/HashFunction;
    :cond_0
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 38
    return-void
.end method

.method private fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;-><init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V

    return-object v0
.end method


# virtual methods
.method abstract makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    new-array v0, v2, [Lcom/google/common/hash/Hasher;

    .line 51
    .local v0, "hashers":[Lcom/google/common/hash/Hasher;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;

    move-result-object v2

    return-object v2
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .locals 3
    .param p1, "expectedInputSize"    # I

    .prologue
    .line 59
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 60
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    new-array v0, v2, [Lcom/google/common/hash/Hasher;

    .line 61
    .local v0, "hashers":[Lcom/google/common/hash/Hasher;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/google/common/hash/HashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "hashers":[Lcom/google/common/hash/Hasher;
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .restart local v0    # "hashers":[Lcom/google/common/hash/Hasher;
    .restart local v1    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractCompositeHashFunction;->fromHashers([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/Hasher;

    move-result-object v2

    return-object v2
.end method
