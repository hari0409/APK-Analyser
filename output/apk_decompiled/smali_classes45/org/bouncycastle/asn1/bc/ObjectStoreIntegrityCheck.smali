.class public Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final PBKD_MAC_CHECK:I


# instance fields
.field private final integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    invoke-static {p1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown check object in integrity check."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to parse integrity check details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIntegrityCheck()Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
