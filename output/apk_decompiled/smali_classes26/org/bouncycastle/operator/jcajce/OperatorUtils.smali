.class Lorg/bouncycastle/operator/jcajce/OperatorUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/Key;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v2, "ENC"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown generic key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
