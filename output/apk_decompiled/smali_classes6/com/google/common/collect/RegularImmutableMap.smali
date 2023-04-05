.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$KeySet;,
        Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABSENT:I = -0x1

.field static final EMPTY:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final transient hashTable:[I

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap;-><init>([I[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "hashTable"    # [I
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "size"    # I

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:[I

    .line 121
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 122
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    .line 123
    return-void
.end method

.method static create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 5
    .param p0, "n"    # I
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 66
    if-nez p0, :cond_0

    .line 67
    sget-object v2, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    check-cast v2, Lcom/google/common/collect/RegularImmutableMap;

    .line 75
    :goto_0
    return-object v2

    .line 68
    :cond_0
    if-ne p0, v4, :cond_1

    .line 69
    aget-object v2, p1, v3

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/google/common/collect/RegularImmutableMap;-><init>([I[Ljava/lang/Object;I)V

    goto :goto_0

    .line 72
    :cond_1
    array-length v2, p1

    shr-int/lit8 v2, v2, 0x1

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 73
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 74
    .local v1, "tableSize":I
    invoke-static {p1, p0, v1, v3}, Lcom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)[I

    move-result-object v0

    .line 75
    .local v0, "hashTable":[I
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v2, v0, p1, p0}, Lcom/google/common/collect/RegularImmutableMap;-><init>([I[Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method static createHashTable([Ljava/lang/Object;III)[I
    .locals 10
    .param p0, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p1, "n"    # I
    .param p2, "tableSize"    # I
    .param p3, "keyOffset"    # I

    .prologue
    const/4 v9, -0x1

    .line 84
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 86
    aget-object v7, p0, p3

    xor-int/lit8 v8, p3, 0x1

    aget-object v8, p0, v8

    invoke-static {v7, v8}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    const/4 v1, 0x0

    .line 116
    :cond_0
    return-object v1

    .line 90
    :cond_1
    add-int/lit8 v4, p2, -0x1

    .line 91
    .local v4, "mask":I
    new-array v1, p2, [I

    .line 92
    .local v1, "hashTable":[I
    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([II)V

    .line 93
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 94
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, p3

    aget-object v3, p0, v7

    .line 95
    .local v3, "key":Ljava/lang/Object;
    mul-int/lit8 v7, v2, 0x2

    xor-int/lit8 v8, p3, 0x1

    add-int/2addr v7, v8

    aget-object v6, p0, v7

    .line 96
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v3, v6}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    .line 98
    .local v0, "h":I
    :goto_1
    and-int/2addr v0, v4

    .line 99
    aget v5, v1, v0

    .line 100
    .local v5, "previous":I
    if-ne v5, v9, :cond_2

    .line 101
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, p3

    aput v7, v1, v0

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_2
    aget-object v7, p0, v5

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multiple entries with same key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    xor-int/lit8 v9, v5, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static get([I[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "hashTable"    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "size"    # I
    .param p3, "keyOffset"    # I
    .param p4, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 143
    if-nez p4, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v3

    .line 145
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 146
    aget-object v4, p1, p3

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    xor-int/lit8 v3, p3, 0x1

    aget-object v3, p1, v3

    goto :goto_0

    .line 149
    :cond_2
    if-eqz p0, :cond_0

    .line 152
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 153
    .local v2, "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    .line 154
    .local v0, "h":I
    :goto_1
    and-int/2addr v0, v2

    .line 155
    aget v1, p0, v0

    .line 156
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 158
    aget-object v4, p1, v1

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    xor-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    goto :goto_0

    .line 153
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 239
    .local v0, "keyList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:[I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/RegularImmutableMap;->get([I[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return v0
.end method
