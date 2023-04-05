.class public Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
.super Ljava/lang/Object;
.source "AttestationPackageInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_INDEX:I = 0x0

.field private static final VERSION_INDEX:I = 0x1


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final version:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 5
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected sequence for AttestationPackageInfo, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    .line 43
    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 45
    .local v1, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    .line 46
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    .line 53
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Converting octet stream to String triggered an UnsupportedEncodingException"

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I
    .locals 8
    .param p1, "other"    # Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    .prologue
    .line 71
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "res":I
    if-eqz v0, :cond_0

    move v1, v0

    .end local v0    # "res":I
    .local v1, "res":I
    move v2, v0

    .line 75
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 73
    .end local v2    # "res":I
    .restart local v0    # "res":I
    :cond_0
    iget-wide v4, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    iget-wide v6, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 74
    if-eqz v0, :cond_1

    move v1, v0

    .end local v0    # "res":I
    .restart local v1    # "res":I
    move v2, v0

    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .end local v2    # "res":I
    .restart local v0    # "res":I
    :cond_1
    move v1, v0

    .end local v0    # "res":I
    .restart local v1    # "res":I
    move v2, v0

    .line 75
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v0, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    .line 81
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->getVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
