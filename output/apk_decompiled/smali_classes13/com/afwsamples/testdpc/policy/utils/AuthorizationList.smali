.class public Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
.super Ljava/lang/Object;
.source "AuthorizationList.java"


# static fields
.field public static final HW_AUTH_FINGERPRINT:I = 0x2

.field public static final HW_AUTH_PASSWORD:I = 0x1

.field private static final KEYMASTER_TAG_TYPE_MASK:I = 0xfffffff

.field public static final KM_ALGORITHM_EC:I = 0x3

.field public static final KM_ALGORITHM_RSA:I = 0x1

.field private static final KM_BOOL:I = 0x70000000

.field private static final KM_BYTES:I = -0x70000000

.field private static final KM_DATE:I = 0x60000000

.field public static final KM_DIGEST_MD5:I = 0x1

.field public static final KM_DIGEST_NONE:I = 0x0

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA_2_224:I = 0x3

.field public static final KM_DIGEST_SHA_2_256:I = 0x4

.field public static final KM_DIGEST_SHA_2_384:I = 0x5

.field public static final KM_DIGEST_SHA_2_512:I = 0x6

.field public static final KM_EC_CURVE_P224:I = 0x0

.field public static final KM_EC_CURVE_P256:I = 0x1

.field public static final KM_EC_CURVE_P384:I = 0x2

.field public static final KM_EC_CURVE_P521:I = 0x3

.field private static final KM_ENUM:I = 0x10000000

.field private static final KM_ENUM_REP:I = 0x20000000

.field public static final KM_ORIGIN_GENERATED:I = 0x0

.field public static final KM_ORIGIN_IMPORTED:I = 0x2

.field public static final KM_ORIGIN_UNKNOWN:I = 0x3

.field public static final KM_PAD_NONE:I = 0x1

.field public static final KM_PAD_RSA_OAEP:I = 0x2

.field public static final KM_PAD_RSA_PKCS1_1_5_ENCRYPT:I = 0x4

.field public static final KM_PAD_RSA_PKCS1_1_5_SIGN:I = 0x5

.field public static final KM_PAD_RSA_PSS:I = 0x3

.field public static final KM_PURPOSE_DECRYPT:I = 0x1

.field public static final KM_PURPOSE_ENCRYPT:I = 0x0

.field public static final KM_PURPOSE_SIGN:I = 0x2

.field public static final KM_PURPOSE_VERIFY:I = 0x3

.field private static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field private static final KM_TAG_ALGORITHM:I = 0x10000002

.field private static final KM_TAG_ALLOW_WHILE_ON_BODY:I = 0x700001fa

.field private static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field private static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field private static final KM_TAG_ATTESTATION_APPLICATION_ID:I = -0x6ffffd3b

.field private static final KM_TAG_ATTESTATION_ID_BRAND:I = -0x6ffffd3a

.field private static final KM_TAG_ATTESTATION_ID_DEVICE:I = -0x6ffffd39

.field private static final KM_TAG_ATTESTATION_ID_IMEI:I = -0x6ffffd36

.field private static final KM_TAG_ATTESTATION_ID_MANUFACTURER:I = -0x6ffffd34

.field private static final KM_TAG_ATTESTATION_ID_MEID:I = -0x6ffffd35

.field private static final KM_TAG_ATTESTATION_ID_MODEL:I = -0x6ffffd33

.field private static final KM_TAG_ATTESTATION_ID_PRODUCT:I = -0x6ffffd38

.field private static final KM_TAG_ATTESTATION_ID_SERIAL:I = -0x6ffffd37

.field private static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field private static final KM_TAG_BOOT_PATCHLEVEL:I = 0x300002cf

.field private static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field private static final KM_TAG_DEVICE_UNIQUE_ATTESTATION:I = 0x700002d0

.field private static final KM_TAG_DIGEST:I = 0x20000005

.field private static final KM_TAG_EC_CURVE:I = 0x1000000a

.field private static final KM_TAG_KEY_SIZE:I = 0x30000003

.field private static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field private static final KM_TAG_ORIGIN:I = 0x100002be

.field private static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field private static final KM_TAG_OS_PATCHLEVEL:I = 0x300002c2

.field private static final KM_TAG_OS_VERSION:I = 0x300002c1

.field private static final KM_TAG_PADDING:I = 0x20000006

.field private static final KM_TAG_PURPOSE:I = 0x20000001

.field private static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field private static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field private static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field private static final KM_TAG_TRUSTED_CONFIRMATION_REQUIRED:I = 0x700001fc

.field private static final KM_TAG_TRUSTED_USER_PRESENCE_REQUIRED:I = 0x700001fb

.field private static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field private static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field private static final KM_TAG_VENDOR_PATCHLEVEL:I = 0x300002ce

.field private static final KM_UINT:I = 0x30000000

.field private static final KM_ULONG:I = 0x50000000

.field private static final digestMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final paddingMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final purposeMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeDateTime:Ljava/util/Date;

.field private algorithm:Ljava/lang/Integer;

.field private allApplications:Z

.field private allowWhileOnBody:Z

.field private applicationId:[B

.field private attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

.field private authTimeout:Ljava/lang/Integer;

.field private bootPatchLevel:Ljava/lang/Integer;

.field private brand:Ljava/lang/String;

.field private confirmationRequired:Z

.field private creationDateTime:Ljava/util/Date;

.field private device:Ljava/lang/String;

.field private digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ecCurve:Ljava/lang/Integer;

.field private imei:Ljava/lang/String;

.field private individualAttestation:Z

.field private keySize:Ljava/lang/Integer;

.field private manufacturer:Ljava/lang/String;

.field private meid:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private noAuthRequired:Z

.field private origin:Ljava/lang/Integer;

.field private originationExpireDateTime:Ljava/util/Date;

.field private osPatchLevel:Ljava/lang/Integer;

.field private osVersion:Ljava/lang/Integer;

.field private paddingModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private product:Ljava/lang/String;

.field private purposes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rollbackResistant:Z

.field private rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

.field private rsaPublicExponent:Ljava/lang/Long;

.field private serialNumber:Ljava/lang/String;

.field private usageExpireDateTime:Ljava/util/Date;

.field private userAuthType:Ljava/lang/Integer;

.field private userPresenceRequired:Z

.field private vendorPatchLevel:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 138
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OAEP"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PSS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PKCS1 ENCRYPT"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PKCS1 SIGN"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingMap:Lcom/google/common/collect/ImmutableMap;

    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestMap:Lcom/google/common/collect/ImmutableMap;

    .line 160
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DECRYPT"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ENCRYPT"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SIGN"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VERIFY"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposeMap:Lcom/google/common/collect/ImmutableMap;

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 8
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    instance-of v4, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v4, :cond_0

    .line 207
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected sequence for authorization list, found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p1    # "sequence":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    .line 212
    .local v1, "parser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 213
    .local v0, "entry":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    .line 215
    .local v2, "tag":I
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 216
    .local v3, "value":Lorg/bouncycastle/asn1/ASN1Primitive;
    const-string v4, "Attestation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing tag: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], value: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sparse-switch v2, :sswitch_data_0

    .line 219
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :sswitch_0
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    .line 213
    :goto_1
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    goto :goto_0

    .line 225
    :sswitch_1
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    goto :goto_1

    .line 228
    :sswitch_2
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    .line 229
    const-string v4, "Attestation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found KEY SIZE, value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :sswitch_3
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    goto :goto_1

    .line 235
    :sswitch_4
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    goto :goto_1

    .line 238
    :sswitch_5
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    goto :goto_1

    .line 241
    :sswitch_6
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->noAuthRequired:Z

    goto :goto_1

    .line 244
    :sswitch_7
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    goto :goto_1

    .line 247
    :sswitch_8
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    goto :goto_1

    .line 250
    :sswitch_9
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    goto :goto_1

    .line 253
    :sswitch_a
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    goto :goto_1

    .line 256
    :sswitch_b
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    goto :goto_1

    .line 259
    :sswitch_c
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 262
    :sswitch_d
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    goto/16 :goto_1

    .line 265
    :sswitch_e
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    goto/16 :goto_1

    .line 268
    :sswitch_f
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    goto/16 :goto_1

    .line 271
    :sswitch_10
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    goto/16 :goto_1

    .line 274
    :sswitch_11
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rollbackResistant:Z

    goto/16 :goto_1

    .line 277
    :sswitch_12
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 280
    :sswitch_13
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allowWhileOnBody:Z

    goto/16 :goto_1

    .line 283
    :sswitch_14
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 286
    :sswitch_15
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 289
    :sswitch_16
    new-instance v4, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    invoke-direct {v4, v3}, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    goto/16 :goto_1

    .line 292
    :sswitch_17
    new-instance v4, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    .line 293
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getAsn1EncodableFromBytes([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    goto/16 :goto_1

    .line 296
    :sswitch_18
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    goto/16 :goto_1

    .line 299
    :sswitch_19
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    goto/16 :goto_1

    .line 302
    :sswitch_1a
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->product:Ljava/lang/String;

    goto/16 :goto_1

    .line 305
    :sswitch_1b
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->serialNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 308
    :sswitch_1c
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->imei:Ljava/lang/String;

    goto/16 :goto_1

    .line 311
    :sswitch_1d
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->meid:Ljava/lang/String;

    goto/16 :goto_1

    .line 314
    :sswitch_1e
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->manufacturer:Ljava/lang/String;

    goto/16 :goto_1

    .line 317
    :sswitch_1f
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->model:Ljava/lang/String;

    goto/16 :goto_1

    .line 320
    :sswitch_20
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allApplications:Z

    goto/16 :goto_1

    .line 323
    :sswitch_21
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userPresenceRequired:Z

    goto/16 :goto_1

    .line 326
    :sswitch_22
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->confirmationRequired:Z

    goto/16 :goto_1

    .line 329
    :sswitch_23
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->individualAttestation:Z

    goto/16 :goto_1

    .line 334
    .end local v2    # "tag":I
    .end local v3    # "value":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    return-void

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xa -> :sswitch_14
        0xc8 -> :sswitch_5
        0x190 -> :sswitch_d
        0x191 -> :sswitch_e
        0x192 -> :sswitch_f
        0x1f7 -> :sswitch_6
        0x1f8 -> :sswitch_15
        0x1f9 -> :sswitch_12
        0x1fa -> :sswitch_13
        0x1fb -> :sswitch_21
        0x1fc -> :sswitch_22
        0x258 -> :sswitch_20
        0x259 -> :sswitch_10
        0x2bd -> :sswitch_7
        0x2be -> :sswitch_8
        0x2bf -> :sswitch_11
        0x2c0 -> :sswitch_16
        0x2c1 -> :sswitch_9
        0x2c2 -> :sswitch_a
        0x2c5 -> :sswitch_17
        0x2c6 -> :sswitch_18
        0x2c7 -> :sswitch_19
        0x2c8 -> :sswitch_1a
        0x2c9 -> :sswitch_1b
        0x2ca -> :sswitch_1c
        0x2cb -> :sswitch_1d
        0x2cc -> :sswitch_1e
        0x2cd -> :sswitch_1f
        0x2ce -> :sswitch_b
        0x2cf -> :sswitch_c
        0x2d0 -> :sswitch_23
    .end sparse-switch
.end method

.method public static algorithmToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "algorithm"    # I

    .prologue
    .line 337
    packed-switch p0, :pswitch_data_0

    .line 343
    :pswitch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 339
    :pswitch_1
    const-string v0, "RSA"

    goto :goto_0

    .line 341
    :pswitch_2
    const-string v0, "ECDSA"

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static digestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "digest"    # I

    .prologue
    .line 360
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static digestsToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "digests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 398
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 614
    :try_start_0
    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Error parsing ASN.1 value"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static joinStrings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    .line 392
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static originToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # I

    .prologue
    .line 377
    packed-switch p0, :pswitch_data_0

    .line 385
    :pswitch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 379
    :pswitch_1
    const-string v0, "Generated"

    goto :goto_0

    .line 381
    :pswitch_2
    const-string v0, "Imported"

    goto :goto_0

    .line 383
    :pswitch_3
    const-string v0, "Unknown (KM0)"

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static paddingModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "paddingMode"    # I

    .prologue
    .line 352
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static paddingModesToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "paddingModes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p0, "parser"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 414
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Failed to parse ASN1 sequence"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 4
    .param p0, "parser"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 404
    .local v0, "asn1Encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local v0    # "asn1Encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    return-object v0

    .line 407
    .restart local v0    # "asn1Encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected tagged object, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static purposesToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposeMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userAuthTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "userAuthType"    # I

    .prologue
    .line 368
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 369
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "Fingerprint"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 372
    const-string v1, "Password"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public ecCurveAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 476
    const-string v0, "NULL"

    .line 488
    :goto_0
    return-object v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    const-string v0, "unknown"

    goto :goto_0

    .line 480
    :pswitch_0
    const-string v0, "secp224r1"

    goto :goto_0

    .line 482
    :pswitch_1
    const-string v0, "secp256r1"

    goto :goto_0

    .line 484
    :pswitch_2
    const-string v0, "secp384r1"

    goto :goto_0

    .line 486
    :pswitch_3
    const-string v0, "secp521r1"

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getActiveDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApplicationId()[B
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    return-object v0
.end method

.method public getAttestationApplicationId()Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    return-object v0
.end method

.method public getAuthTimeout()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBootPatchLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDigests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    return-object v0
.end method

.method public getEcCurve()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->meid:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOriginationExpireDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getOsPatchLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaddingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    return-object v0
.end method

.method public getPaddingModesAsStrings()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 442
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 467
    :goto_0
    return-object v2

    .line 445
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 446
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 447
    .local v1, "paddingMode":I
    packed-switch v1, :pswitch_data_0

    .line 464
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid padding mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :pswitch_0
    const-string v2, "NoPadding"

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 452
    :pswitch_1
    const-string v2, "OAEPPadding"

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 455
    :pswitch_2
    const-string v2, "PKCS1Padding"

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 458
    :pswitch_3
    const-string v2, "PKCS1"

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 461
    :pswitch_4
    const-string v2, "PSS"

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 467
    .end local v1    # "paddingMode":I
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    return-object v0
.end method

.method public getRootOfTrust()Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    return-object v0
.end method

.method public getRsaPublicExponent()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageExpireDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserAuthType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVendorPatchLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAllApplications()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allApplications:Z

    return v0
.end method

.method public isAllowWhileOnBody()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allowWhileOnBody:Z

    return v0
.end method

.method public isConfirmationRequired()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->confirmationRequired:Z

    return v0
.end method

.method public isIndividualAttestation()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->individualAttestation:Z

    return v0
.end method

.method public isNoAuthRequired()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->noAuthRequired:Z

    return v0
.end method

.method public isRollbackResistant()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rollbackResistant:Z

    return v0
.end method

.method public isUserPresenceRequired()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userPresenceRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v1, "s":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 625
    const-string v2, "\nAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithmToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 629
    const-string v2, "\nKeySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 633
    const-string v2, "\nPurposes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposesToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 637
    const-string v2, "\nDigests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestsToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_3
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 641
    const-string v2, "\nPadding modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModesToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_4
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 645
    const-string v2, "\nEC Curve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurveAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_5
    const-string v0, "\nRSA exponent: "

    .line 649
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 650
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 653
    :cond_6
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    if-eqz v2, :cond_7

    .line 654
    const-string v2, "\nActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_7
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    if-eqz v2, :cond_8

    .line 658
    const-string v2, "\nOrigination expire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_8
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    if-eqz v2, :cond_9

    .line 662
    const-string v2, "\nUsage expire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_9
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->noAuthRequired:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 666
    const-string v2, "\nAuth types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 668
    const-string v2, "\nAuth timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    :cond_a
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    if-eqz v2, :cond_b

    .line 673
    const-string v2, "\nApplication ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_b
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    if-eqz v2, :cond_c

    .line 677
    const-string v2, "\nCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_c
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 681
    const-string v2, "\nOrigin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_d
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rollbackResistant:Z

    if-eqz v2, :cond_e

    .line 685
    const-string v2, "\nRollback resistant: true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_e
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    if-eqz v2, :cond_f

    .line 689
    const-string v2, "\nRoot of Trust:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 693
    :cond_f
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 694
    const-string v2, "\nOS Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 697
    :cond_10
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 698
    const-string v2, "\nOS Patchlevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    :cond_11
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 702
    const-string v2, "\nVendor Patchlevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    :cond_12
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    .line 706
    const-string v2, "\nBoot Patchlevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 709
    :cond_13
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    if-eqz v2, :cond_14

    .line 710
    const-string v2, "\nAttestation Application Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 713
    :cond_14
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userPresenceRequired:Z

    if-eqz v2, :cond_15

    .line 714
    const-string v2, "\nUser presence required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_15
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->confirmationRequired:Z

    if-eqz v2, :cond_16

    .line 718
    const-string v2, "\nConfirmation required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_16
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->individualAttestation:Z

    if-eqz v2, :cond_17

    .line 722
    const-string v2, "\nIndividual attestation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_17
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 726
    const-string v2, "\nBrand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_18
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 729
    const-string v2, "\nDevice type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
