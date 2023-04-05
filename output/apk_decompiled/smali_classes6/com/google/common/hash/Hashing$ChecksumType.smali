.class abstract enum Lcom/google/common/hash/Hashing$ChecksumType;
.super Ljava/lang/Enum;
.source "Hashing.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ChecksumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/Hashing$ChecksumType;",
        ">;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Hashing$ChecksumType;

.field public static final enum ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

.field public static final enum CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;


# instance fields
.field public final hashFunction:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 389
    new-instance v0, Lcom/google/common/hash/Hashing$ChecksumType$1;

    const-string v1, "CRC_32"

    const-string v2, "Hashing.crc32()"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/hash/Hashing$ChecksumType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    .line 395
    new-instance v0, Lcom/google/common/hash/Hashing$ChecksumType$2;

    const-string v1, "ADLER_32"

    const-string v2, "Hashing.adler32()"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/common/hash/Hashing$ChecksumType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    .line 388
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/hash/Hashing$ChecksumType;

    sget-object v1, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->$VALUES:[Lcom/google/common/hash/Hashing$ChecksumType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p3, "toString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 405
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1, p3}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/Hashing$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/google/common/hash/Hashing$1;

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/hash/Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Hashing$ChecksumType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 388
    const-class v0, Lcom/google/common/hash/Hashing$ChecksumType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Hashing$ChecksumType;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->$VALUES:[Lcom/google/common/hash/Hashing$ChecksumType;

    invoke-virtual {v0}, [Lcom/google/common/hash/Hashing$ChecksumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Hashing$ChecksumType;

    return-object v0
.end method
