.class public Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;
.super Ljava/lang/Object;
.source "Asn1Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bigIntegerToInt(Ljava/math/BigInteger;)I
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 155
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 156
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "INTEGER out of bounds"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method private static bigIntegerToLong(Ljava/math/BigInteger;)J
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 163
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 164
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    const-string v1, "INTEGER out of bounds"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAsn1EncodableFromBytes([B)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "asn1InputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v3, 0x0

    .line 75
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 76
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "asn1InputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Failed to parse Encodable"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "asn1InputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 74
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static getAsn1SequenceFromBytes([B)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "asn1InputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v3, 0x0

    .line 84
    :try_start_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getAsn1SequenceFromStream(Lorg/bouncycastle/asn1/ASN1InputStream;)Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 85
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "asn1InputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Failed to parse SEQUENCE"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "asn1InputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 83
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static getAsn1SequenceFromStream(Lorg/bouncycastle/asn1/ASN1InputStream;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 6
    .param p0, "asn1InputStream"    # Lorg/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 93
    .local v0, "asn1Primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected octet stream, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 98
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 97
    .local v1, "seqInputStream":Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v4, 0x0

    .line 99
    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 100
    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_2

    .line 101
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected sequence, found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :catchall_0
    move-exception v3

    move-object v4, v2

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    throw v3

    .line 104
    :cond_2
    :try_start_3
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .end local v0    # "asn1Primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    return-object v0

    :catch_1
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V

    goto :goto_2

    .restart local v0    # "asn1Primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_2
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    goto :goto_0
.end method

.method public static getBooleanFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 3
    .param p0, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 147
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected boolean, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Boolean;

    .end local p0    # "value":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public static getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p0, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 65
    if-eqz p0, :cond_0

    instance-of v1, p0, Lorg/bouncycastle/asn1/DEROctetString;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Expected DEROctetString"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p0

    .line 68
    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 69
    .local v0, "derOctectString":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    return-object v1
.end method

.method public static getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;
    .locals 4
    .param p0, "value"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 3
    .param p0, "asn1Value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    .end local p0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->bigIntegerToInt(Ljava/math/BigInteger;)I

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 46
    .restart local p0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v0, :cond_1

    .line 47
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    .end local p0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->bigIntegerToInt(Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_0

    .line 49
    .restart local p0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer value expected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;
    .locals 5
    .param p0, "set"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 110
    instance-of v2, p0, Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected set, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v1, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Set;

    .end local p0    # "set":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    return-object v1
.end method

.method public static getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;
    .locals 3
    .param p0, "asn1Value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 55
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    .end local p0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->bigIntegerToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 58
    .restart local p0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer value expected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 4
    .param p0, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 132
    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected octet string, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    move-object v0, p0

    .line 137
    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 138
    .local v0, "octetString":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method
