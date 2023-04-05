.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
.super Landroid/app/DialogFragment;
.source "WifiEapTlsCreateDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;
    }
.end annotation


# static fields
.field private static final ARG_CONFIG:Ljava/lang/String; = "config"

.field private static final REQUEST_CA_CERT:I = 0x1

.field private static final REQUEST_USER_CERT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "wifi_eap_tls"


# instance fields
.field private mCaCertTextView:Landroid/widget/TextView;

.field private mCaCertUri:Landroid/net/Uri;

.field private mCertPasswordEditText:Landroid/widget/EditText;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIdentityEditText:Landroid/widget/EditText;

.field private mSsidEditText:Landroid/widget/EditText;

.field private mUserCertAlias:Ljava/lang/String;

.field private mUserCertTextView:Landroid/widget/TextView;

.field private mUserCertUri:Landroid/net/Uri;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->extractInputDataAndSave()Z

    move-result v0

    return v0
.end method

.method private extractEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 9

    .prologue
    const v8, 0x7f0f014f

    const/4 v5, 0x0

    .line 189
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 190
    .local v1, "config":Landroid/net/wifi/WifiEnterpriseConfig;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 191
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mIdentityEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "identity":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 194
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    if-nez v6, :cond_1

    .line 198
    const v6, 0x7f0f014e

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    move-object v1, v5

    .line 229
    .end local v1    # "config":Landroid/net/wifi/WifiEnterpriseConfig;
    :goto_0
    return-object v1

    .line 201
    .restart local v1    # "config":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_1
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->parseX509Certificate(Landroid/net/Uri;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 203
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    if-eqz v6, :cond_3

    .line 204
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCertPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "certPassword":Ljava/lang/String;
    const/4 v4, 0x0

    .line 208
    .local v4, "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    .line 207
    invoke-static {v6, v7, v0}, Lcom/afwsamples/testdpc/common/CertificateUtil;->parsePKCS12Certificate(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 213
    :goto_1
    if-nez v4, :cond_2

    .line 214
    invoke-direct {p0, v8}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    move-object v1, v5

    .line 215
    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "wifi_eap_tls"

    const-string v7, "Fail to parse the input certificate: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, v4, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->privateKey:Ljava/security/PrivateKey;

    iget-object v6, v4, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 218
    .end local v0    # "certPassword":Ljava/lang/String;
    .end local v4    # "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    :cond_3
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 219
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->grantKeyPairToWifiAuth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 220
    const v6, 0x7f0f014d

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    move-object v1, v5

    .line 221
    goto :goto_0

    .line 223
    :cond_4
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyPairAlias(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_5
    invoke-direct {p0, v8}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    move-object v1, v5

    .line 226
    goto :goto_0

    .line 209
    .restart local v0    # "certPassword":Ljava/lang/String;
    .restart local v4    # "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method private extractInputDataAndSave()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "ssid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    const v4, 0x7f0f0150

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 169
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 170
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 172
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->extractEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 174
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 179
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 180
    const v2, 0x7f0f038c

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    .line 181
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    :cond_2
    const v3, 0x7f0f038a

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->showToast(I)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/net/wifi/WifiConfiguration;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "config"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;-><init>()V

    .line 71
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1
.end method

.method private onSelectClientCertClicked(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private parseX509Certificate(Landroid/net/Uri;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 238
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 239
    .local v1, "factory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 240
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v3, "wifi_eap_tls"

    const-string v4, "parseX509Certificate: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v3, 0x0

    goto :goto_0

    .line 241
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private populateUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mIdentityEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 293
    return-void
.end method

.method private updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 270
    if-eqz p2, :cond_6

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, "displayName":Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_display_name"

    aput-object v0, v2, v9

    .line 273
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 278
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :cond_1
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const v0, 0x7f0f039b

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    :cond_2
    const v0, 0x7f0f02c0

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v7, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "displayName":Ljava/lang/String;
    .local v8, "selectedText":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void

    .line 278
    .end local v8    # "selectedText":Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :catchall_0
    move-exception v1

    move-object v3, v0

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 283
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    .line 284
    const v0, 0x7f0f02c2

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p3, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selectedText":Ljava/lang/String;
    goto :goto_1

    .line 286
    .end local v8    # "selectedText":Ljava/lang/String;
    :cond_7
    const v0, 0x7f0f02c1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selectedText":Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v8    # "selectedText":Ljava/lang/String;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "displayName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$WifiEapTlsCreateDialogFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->onSelectClientCertClicked(Landroid/view/View;)V

    return-void
.end method

.method final synthetic lambda$null$175$WifiEapTlsCreateDialogFragment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onSelectClientCertClicked$176$WifiEapTlsCreateDialogFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    .line 141
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$Lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 297
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 300
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    .line 301
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    .line 305
    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertAlias:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->updateSelectedCert(Landroid/widget/TextView;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 79
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 83
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 88
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0030

    invoke-virtual {v1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "rootView":Landroid/view/View;
    const v4, 0x7f0900cf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;

    const/4 v6, 0x1

    const-string v7, "application/x-x509-ca-cert"

    invoke-direct {v5, p0, v6, v7}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v4, 0x7f0900d0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;

    const/4 v6, 0x2

    const-string v7, "application/x-pkcs12"

    invoke-direct {v5, p0, v6, v7}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v4, 0x7f090159

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 96
    .local v3, "selectUserCertButton":Landroid/widget/Button;
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_0

    .line 97
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$Lambda$0;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :goto_0
    const v4, 0x7f09015a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCaCertTextView:Landroid/widget/TextView;

    .line 103
    const v4, 0x7f090162

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mUserCertTextView:Landroid/widget/TextView;

    .line 104
    const v4, 0x7f09017b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mSsidEditText:Landroid/widget/EditText;

    .line 105
    const v4, 0x7f0901db

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mCertPasswordEditText:Landroid/widget/EditText;

    .line 106
    const v4, 0x7f0901dc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->mIdentityEditText:Landroid/widget/EditText;

    .line 107
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->populateUi()V

    .line 108
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f00a9

    .line 109
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0395

    .line 111
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0388

    .line 112
    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 114
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 129
    return-object v0

    .line 100
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
