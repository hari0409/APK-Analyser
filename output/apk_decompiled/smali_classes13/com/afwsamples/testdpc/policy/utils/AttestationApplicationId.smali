.class public Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
.super Ljava/lang/Object;
.source "AttestationApplicationId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_INFOS_INDEX:I = 0x0

.field private static final SIGNATURE_DIGESTS_INDEX:I = 0x1


# instance fields
.field private final packageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 44
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 45
    .local v6, "uid":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    .line 47
    :cond_0
    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v8, "No names found for uid"

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 49
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    .line 50
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 53
    .local v1, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v3, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 54
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    new-instance v10, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    iget v11, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v12, v11

    invoke-direct {v10, v1, v12, v13}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    .line 61
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/16 v8, 0x40

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v5, v8, v7

    .line 63
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v10, "SHA-256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 64
    .local v4, "sha256":Ljava/security/MessageDigest;
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 67
    .end local v4    # "sha256":Ljava/security/MessageDigest;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_3
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance v8, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$1;)V

    invoke-interface {v7, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence for AttestationApplicationId, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
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

    .line 79
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 80
    .local v0, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    .line 82
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    .line 85
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance v2, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {v2, p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 86
    return-void
.end method

.method private parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;
    .locals 6
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 143
    instance-of v3, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected set for AttestationApplicationsInfos, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p1

    .line 149
    check-cast v2, Lorg/bouncycastle/asn1/ASN1Set;

    .line 150
    .local v2, "set":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;>;"
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 152
    .local v0, "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    new-instance v4, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-direct {v4, v0}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    return-object v1
.end method

.method private parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;
    .locals 6
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 159
    instance-of v3, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v3, :cond_0

    .line 160
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected set for Signature digests, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p1

    .line 164
    check-cast v2, Lorg/bouncycastle/asn1/ASN1Set;

    .line 165
    .local v2, "set":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 168
    .local v0, "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v0    # "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)I
    .locals 7
    .param p1, "other"    # Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    .prologue
    .line 119
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 120
    .local v2, "res":I
    if-eqz v2, :cond_0

    move v3, v2

    .end local v2    # "res":I
    .local v3, "res":I
    move v4, v2

    .line 132
    .end local v3    # "res":I
    .local v4, "res":I
    :goto_0
    return v4

    .line 121
    .end local v4    # "res":I
    .restart local v2    # "res":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 122
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    iget-object v6, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-virtual {v5, v6}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I

    move-result v2

    .line 123
    if-eqz v2, :cond_1

    move v3, v2

    .end local v2    # "res":I
    .restart local v3    # "res":I
    move v4, v2

    .end local v3    # "res":I
    .restart local v4    # "res":I
    goto :goto_0

    .line 121
    .end local v4    # "res":I
    .restart local v2    # "res":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_2
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 126
    if-eqz v2, :cond_3

    move v3, v2

    .end local v2    # "res":I
    .restart local v3    # "res":I
    move v4, v2

    .end local v3    # "res":I
    .restart local v4    # "res":I
    goto :goto_0

    .line 127
    .end local v4    # "res":I
    .restart local v2    # "res":I
    :cond_3
    new-instance v0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$1;)V

    .line 128
    .local v0, "cmp":Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 129
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v0, v5, v6}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;->compare([B[B)I

    move-result v2

    .line 130
    if-eqz v2, :cond_4

    move v3, v2

    .end local v2    # "res":I
    .restart local v3    # "res":I
    move v4, v2

    .end local v3    # "res":I
    .restart local v4    # "res":I
    goto :goto_0

    .line 128
    .end local v4    # "res":I
    .restart local v2    # "res":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v3, v2

    .end local v2    # "res":I
    .restart local v3    # "res":I
    move v4, v2

    .line 132
    .end local v3    # "res":I
    .restart local v4    # "res":I
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 137
    instance-of v0, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    .line 138
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttestationPackageInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSignatureDigests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v8, "AttestationApplicationId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 101
    .local v4, "noOfInfos":I
    const/4 v1, 0x1

    .line 102
    .local v1, "i":I
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    .line 103
    .local v3, "info":Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n### Package info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ###\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 106
    .end local v3    # "info":Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
    :cond_0
    const/4 v1, 0x1

    .line 107
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 108
    .local v5, "noOfSigs":I
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 109
    .local v7, "sig":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nSignature digest "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    array-length v11, v7

    move v8, v9

    :goto_2
    if-ge v8, v11, :cond_1

    aget-byte v0, v7, v8

    .line 111
    .local v0, "b":B
    const-string v12, " %02X"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v0    # "b":B
    :cond_1
    move v1, v2

    .line 113
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 114
    .end local v7    # "sig":[B
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
