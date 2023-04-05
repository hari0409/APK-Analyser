.class public Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toHashtable()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private static copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->table:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contentType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lorg/bouncycastle/asn1/cms/Time;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/cms/Time;-><init>(Ljava/util/Date;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "digest"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    new-instance v1, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v3, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v4, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    new-instance v6, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    const-string v0, "digestAlgID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v7, 0x1

    const-string v1, "signatureAlgID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v6, v0, v7, v1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;->createStandardAttributeTable(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method
