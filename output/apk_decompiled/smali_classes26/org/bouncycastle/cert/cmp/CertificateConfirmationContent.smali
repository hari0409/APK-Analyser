.class public Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
.super Ljava/lang/Object;


# instance fields
.field private content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    return-void
.end method


# virtual methods
.method public getStatusMessages()[Lorg/bouncycastle/cert/cmp/CertificateStatus;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->toCertStatusArray()[Lorg/bouncycastle/asn1/cmp/CertStatus;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lorg/bouncycastle/cert/cmp/CertificateStatus;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/cert/cmp/CertificateStatus;

    iget-object v4, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    aget-object v5, v1, v0

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/cert/cmp/CertificateStatus;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/asn1/cmp/CertStatus;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    return-object v0
.end method
