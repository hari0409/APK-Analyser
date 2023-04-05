.class public Lorg/bouncycastle/operator/jcajce/JceGenericKey;
.super Lorg/bouncycastle/operator/GenericKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;->getRepresentation(Ljava/security/Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V

    return-void
.end method

.method private static getRepresentation(Ljava/security/Key;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method
