.class public Lcom/afwsamples/testdpc/common/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static parsePKCS12Certificate(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 58
    .local v3, "inputStream":Ljava/io/InputStream;
    const-string v6, "PKCS12"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 59
    .local v4, "keystore":Ljava/security/KeyStore;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 60
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 62
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "alias":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    .line 64
    .local v5, "privateKey":Ljava/security/PrivateKey;
    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v4, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 69
    .local v2, "clientCertificate":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 72
    const-string v6, "CertificateUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsePKCS12Certificate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is selected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v6, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;

    invoke-direct {v6, v0, v2, v5}, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    .line 75
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "clientCertificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "privateKey":Ljava/security/PrivateKey;
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
