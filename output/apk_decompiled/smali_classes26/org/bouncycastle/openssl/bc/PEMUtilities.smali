.class Lorg/bouncycastle/openssl/bc/PEMUtilities;
.super Ljava/lang/Object;


# static fields
.field private static final KEYSIZES:Ljava/util/Map;

.field private static final PKCS5_SCHEME_1:Ljava/util/Set;

.field private static final PKCS5_SCHEME_2:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x28

    const/16 v4, 0xc0

    const/16 v3, 0x80

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypt(Z[B[CLjava/lang/String;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    const/16 v5, 0x80

    const/4 v1, 0x0

    const/16 v7, 0x8

    const/4 v4, 0x0

    const-string v2, "CBC"

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    const-string v3, "-CFB"

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "CFB"

    move-object v0, v1

    :cond_0
    const-string v3, "-ECB"

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DES-EDE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DES-EDE3"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_1
    const-string v2, "ECB"

    move-object v3, v1

    :goto_0
    const-string v6, "-OFB"

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v2, "OFB"

    :goto_1
    const-string v0, "DES-EDE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DES-EDE3"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    const/16 v4, 0x18

    invoke-static {p2, v4, p4, v0}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[BZ)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    move-object v4, v0

    :goto_3
    const-string v0, "CBC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    move-object v5, v0

    :cond_2
    :goto_4
    if-nez v1, :cond_10

    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_5
    if-nez v3, :cond_11

    invoke-virtual {v0, p0, v4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_6
    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    add-int/2addr v1, v0

    array-length v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_12

    :goto_7
    return-object v4

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    const-string v0, "DES-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2, v7, p4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    move-object v4, v0

    goto :goto_3

    :cond_5
    const-string v0, "BF-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x10

    invoke-static {p2, v0, p4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    move-object v4, v0

    goto :goto_3

    :cond_6
    const-string v0, "RC2-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "RC2-40-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    :goto_8
    new-instance v4, Lorg/bouncycastle/crypto/params/RC2Parameters;

    div-int/lit8 v5, v0, 0x8

    invoke-static {p2, v5, p4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    new-instance v0, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    move-object v5, v0

    goto/16 :goto_3

    :cond_7
    const-string v0, "RC2-64-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x40

    goto :goto_8

    :cond_8
    const-string v0, "AES-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    array-length v0, p4

    if-le v0, v7, :cond_9

    new-array v0, v7, [B

    invoke-static {p4, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v0

    :cond_9
    const-string v0, "AES-128-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    div-int/lit8 v0, v5, 0x8

    invoke-static {p2, v0, p4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    move-object v4, v0

    goto/16 :goto_3

    :cond_a
    const-string v0, "AES-192-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v5, 0xc0

    goto :goto_9

    :cond_b
    const-string v0, "AES-256-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v5, 0x100

    goto :goto_9

    :cond_c
    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown AES encryption with private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown encryption with private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v0, "CFB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v5, v2}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    move-object v5, v0

    goto/16 :goto_4

    :cond_f
    const-string v0, "OFB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v5, v2}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    move-object v5, v0

    goto/16 :goto_4

    :cond_10
    :try_start_1
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openssl/EncryptionException;

    const-string v2, "exception using cipher - please check password and data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    :try_start_2
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v4, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_6

    :cond_12
    new-array v0, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v0

    goto/16 :goto_7

    :cond_13
    move v0, v5

    goto/16 :goto_8

    :cond_14
    move-object v1, v0

    goto/16 :goto_1

    :cond_15
    move-object v3, p4

    goto/16 :goto_0
.end method

.method public static generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-static {p0}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object v0
.end method

.method private static getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[BZ)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    return-object v0
.end method

.method private static getKey([CI[BZ)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    const/4 v0, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method static getKeySize(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme1(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme2(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
