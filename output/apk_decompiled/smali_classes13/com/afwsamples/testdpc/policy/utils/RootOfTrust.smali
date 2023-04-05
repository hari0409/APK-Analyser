.class public Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;
.super Ljava/lang/Object;
.source "RootOfTrust.java"


# static fields
.field private static final DEVICE_LOCKED_INDEX:I = 0x1

.field public static final KM_VERIFIED_BOOT_FAILED:I = 0x3

.field public static final KM_VERIFIED_BOOT_SELF_SIGNED:I = 0x1

.field public static final KM_VERIFIED_BOOT_UNVERIFIED:I = 0x2

.field public static final KM_VERIFIED_BOOT_VERIFIED:I = 0x0

.field private static final VERIFIED_BOOT_KEY_INDEX:I = 0x0

.field private static final VERIFIED_BOOT_STATE_INDEX:I = 0x2


# instance fields
.field private final deviceLocked:Z

.field private final verifiedBootKey:[B

.field private final verifiedBootState:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence for root of trust, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 46
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 47
    .local v0, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootKey:[B

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getBooleanFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->deviceLocked:Z

    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootState:I

    .line 52
    return-void
.end method

.method public static verifiedBootStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "verifiedBootState"    # I

    .prologue
    .line 55
    packed-switch p0, :pswitch_data_0

    .line 65
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "Verified"

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "Self-signed"

    goto :goto_0

    .line 61
    :pswitch_2
    const-string v0, "Unverified"

    goto :goto_0

    .line 63
    :pswitch_3
    const-string v0, "Failed"

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getVerifiedBootKey()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootKey:[B

    return-object v0
.end method

.method public getVerifiedBootState()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootState:I

    return v0
.end method

.method public isDeviceLocked()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->deviceLocked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nVerified boot Key: "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootKey:[B

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDevice locked: "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->deviceLocked:Z

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nVerified boot state: "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootState:I

    .line 89
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
