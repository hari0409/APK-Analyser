.class public Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;
.super Landroid/os/AsyncTask;
.source "SignAndVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PolicyManagement"


# instance fields
.field private mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 48
    aget-object v1, p1, v10

    .line 50
    .local v1, "alias":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 53
    .local v5, "privateKey":Ljava/security/PrivateKey;
    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    const-string v11, "RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 54
    const-string v0, "SHA256withRSA"

    .line 59
    .local v0, "algorithmIdentifier":Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/lang/String;

    const-string v11, "hello"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 60
    .local v3, "data":[B
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 61
    .local v8, "signer":Ljava/security/Signature;
    invoke-virtual {v8, v5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 62
    invoke-virtual {v8, v3}, Ljava/security/Signature;->update([B)V

    .line 63
    invoke-virtual {v8}, Ljava/security/Signature;->sign()[B

    move-result-object v7

    .line 65
    .local v7, "signature":[B
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v2, v10, v11

    .line 66
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 67
    .local v6, "publicKey":Ljava/security/PublicKey;
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v9

    .line 68
    .local v9, "verifier":Ljava/security/Signature;
    invoke-virtual {v9, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 69
    invoke-virtual {v9, v3}, Ljava/security/Signature;->update([B)V

    .line 70
    invoke-virtual {v9, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 71
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v10

    .line 84
    .end local v0    # "algorithmIdentifier":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "data":[B
    .end local v5    # "privateKey":Ljava/security/PrivateKey;
    .end local v6    # "publicKey":Ljava/security/PublicKey;
    .end local v7    # "signature":[B
    .end local v8    # "signer":Ljava/security/Signature;
    .end local v9    # "verifier":Ljava/security/Signature;
    :goto_1
    return-object v10

    .line 56
    .restart local v5    # "privateKey":Ljava/security/PrivateKey;
    :cond_0
    const-string v0, "SHA256withECDSA"
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4

    .restart local v0    # "algorithmIdentifier":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v0    # "algorithmIdentifier":Ljava/lang/String;
    .end local v5    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Landroid/security/KeyChainException;
    const-string v10, "PolicyManagement"

    const-string v11, "Error getting key"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v4    # "e":Landroid/security/KeyChainException;
    :cond_1
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 75
    :catch_1
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v10, "PolicyManagement"

    const-string v11, "Interrupted while getting the key"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 77
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v4

    .line 78
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v10, "PolicyManagement"

    const-string v11, "Algorithm not supported"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 79
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v4

    .line 80
    .local v4, "e":Ljava/security/SignatureException;
    const-string v10, "PolicyManagement"

    const-string v11, "Failed signing with key"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 81
    .end local v4    # "e":Ljava/security/SignatureException;
    :catch_4
    move-exception v4

    .line 82
    .local v4, "e":Ljava/security/InvalidKeyException;
    const-string v10, "PolicyManagement"

    const-string v11, "Provided alias resolves to an invalid key"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    const v1, 0x7f0f019f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/SignAndVerifyTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    const v1, 0x7f0f019e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
