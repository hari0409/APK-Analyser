.class Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;,
        Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateKeyId(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    new-array v2, v4, [B

    :try_start_0
    const-string v2, "DER"

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->update([BII)V

    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-array v0, v4, [B

    goto :goto_0
.end method
