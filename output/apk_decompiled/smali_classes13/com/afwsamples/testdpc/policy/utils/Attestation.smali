.class public Lcom/afwsamples/testdpc/policy/utils/Attestation;
.super Ljava/lang/Object;
.source "Attestation.java"


# static fields
.field static final ATTESTATION_CHALLENGE_INDEX:I = 0x4

.field static final ATTESTATION_SECURITY_LEVEL_INDEX:I = 0x1

.field static final ATTESTATION_VERSION_INDEX:I = 0x0

.field static final KEYMASTER_SECURITY_LEVEL_INDEX:I = 0x3

.field static final KEYMASTER_VERSION_INDEX:I = 0x2

.field static final KEY_DESCRIPTION_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field public static final KM_SECURITY_LEVEL_SOFTWARE:I = 0x0

.field public static final KM_SECURITY_LEVEL_TRUSTED_ENVIRONMENT:I = 0x1

.field static final SW_ENFORCED_INDEX:I = 0x6

.field static final TEE_ENFORCED_INDEX:I = 0x7

.field static final UNIQUE_ID_INDEX:I = 0x5


# instance fields
.field private final attestationChallenge:[B

.field private final attestationSecurityLevel:I

.field private final attestationVersion:I

.field private final keymasterSecurityLevel:I

.field private final keymasterVersion:I

.field private final softwareEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

.field private final teeEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

.field private final uniqueId:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->getAttestationSequence(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 66
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationVersion:I

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationSecurityLevel:I

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->keymasterVersion:I

    .line 69
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->keymasterSecurityLevel:I

    .line 71
    const/4 v1, 0x4

    .line 72
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationChallenge:[B

    .line 74
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->uniqueId:[B

    .line 76
    new-instance v1, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->softwareEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    .line 77
    new-instance v1, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->teeEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    .line 78
    return-void
.end method

.method private getAttestationSequence(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 3
    .param p1, "x509Cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v1, "1.3.6.1.4.1.11129.2.1.17"

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    .local v0, "attestationExtensionBytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 154
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Did not find extension with OID 1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getAsn1SequenceFromBytes([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    return-object v1
.end method

.method public static securityLevelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "attestationSecurityLevel"    # I

    .prologue
    .line 81
    packed-switch p0, :pswitch_data_0

    .line 87
    const-string v0, "Unkown"

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "Software"

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "TEE"

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAttestationChallenge()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationChallenge:[B

    return-object v0
.end method

.method public getAttestationSecurityLevel()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationSecurityLevel:I

    return v0
.end method

.method public getAttestationVersion()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationVersion:I

    return v0
.end method

.method public getKeymasterSecurityLevel()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->keymasterSecurityLevel:I

    return v0
.end method

.method public getKeymasterVersion()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->keymasterVersion:I

    return v0
.end method

.method public getSoftwareEnforced()Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->softwareEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    return-object v0
.end method

.method public getTeeEnforced()Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->teeEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    return-object v0
.end method

.method public getUniqueId()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->uniqueId:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "s":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attest version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nAttest security: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationSecurityLevel:I

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->securityLevelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nKM version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->keymasterVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nKM security: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->keymasterSecurityLevel:I

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->securityLevelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "\nChallenge"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationChallenge:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 133
    .local v1, "stringChallenge":Ljava/lang/String;
    sget-object v2, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v2, v1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->uniqueId:[B

    if-eqz v2, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nUnique ID (base64): ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->uniqueId:[B

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    const-string v2, "\n-- SW enforced --"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->softwareEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, "\n-- TEE enforced --"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->teeEnforced:Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (base64): ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/Attestation;->attestationChallenge:[B

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
