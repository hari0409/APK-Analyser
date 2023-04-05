.class public Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;
.super Landroid/os/AsyncTask;
.source "GenerateKeyAndCertificateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/security/AttestedKeyPair;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PolicyManagement"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAdminComponentName:Landroid/content/ComponentName;

.field final mAlias:Ljava/lang/String;

.field private final mAttestationChallenge:[B

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mGenerateEcKey:Z

.field private final mIdAttestationFlags:I

.field final mIsUserSelectable:Z

.field private final mUseStrongBox:Z


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;Landroid/app/Activity;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "params"    # Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    .line 68
    iget-boolean v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->isUserSelectable:Z

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIsUserSelectable:Z

    .line 69
    iget-object v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->attestationChallenge:[B

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAttestationChallenge:[B

    .line 70
    iget v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->idAttestationFlags:I

    iput v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIdAttestationFlags:I

    .line 71
    iget-boolean v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->useStrongBox:Z

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mUseStrongBox:Z

    .line 72
    iget-boolean v0, p1, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->generateEcKey:Z

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mGenerateEcKey:Z

    .line 73
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    .line 74
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAdminComponentName:Landroid/content/ComponentName;

    .line 75
    const-string v0, "device_policy"

    .line 76
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 77
    return-void
.end method

.method private showKeyGenerationResult(Landroid/security/AttestedKeyPair;)V
    .locals 14
    .param p1, "keyPair"    # Landroid/security/AttestedKeyPair;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 177
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    .line 181
    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0b003d

    invoke-virtual {v8, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 183
    .local v5, "keyGenResultView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "attestationChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const v8, 0x7f09004e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    .local v2, "attestationDetailsView":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 188
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, "attestationDetails":Ljava/lang/StringBuilder;
    new-instance v3, Lcom/afwsamples/testdpc/policy/utils/Attestation;

    .line 191
    invoke-virtual {p1}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v8}, Lcom/afwsamples/testdpc/policy/utils/Attestation;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 192
    .local v3, "attestationRecord":Lcom/afwsamples/testdpc/policy/utils/Attestation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0f006d

    .line 193
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/String;

    .line 195
    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->getAttestationChallenge()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/utils/Attestation;->getTeeEnforced()Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;

    move-result-object v7

    .line 197
    .local v7, "teeList":Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
    if-eqz v7, :cond_2

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0f00e5

    .line 199
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 198
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0f00e0

    .line 202
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getImei()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0f00e1

    .line 205
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v8, "Individual Attestation:\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->isIndividualAttestation()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 214
    .local v6, "root":Ljava/security/cert/Certificate;
    const-string v8, "%s: %d\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0f006c

    .line 217
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 215
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v8, "%s\n%s\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0f006f

    .line 223
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 224
    .end local v6    # "root":Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 221
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "attestationDetails":Ljava/lang/StringBuilder;
    .end local v3    # "attestationRecord":Lcom/afwsamples/testdpc/policy/utils/Attestation;
    .end local v7    # "teeList":Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
    :goto_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0f019b

    .line 236
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 237
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    .line 238
    invoke-virtual {v8, v9, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 239
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v4

    .line 228
    .local v4, "e":Ljava/security/cert/CertificateParsingException;
    const-string v8, "PolicyManagement"

    const-string v9, "Failed parsing attestation record"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const-string v8, "<INVALID>"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    .end local v4    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_3
    const-string v8, "<none>"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showToast(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mActivity:Landroid/app/Activity;

    .line 171
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 169
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/security/AttestedKeyPair;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    const/16 v12, 0xc

    invoke-direct {v10, v11, v12}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "SHA-256"

    aput-object v13, v11, v12

    .line 87
    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mUseStrongBox:Z

    .line 88
    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    .line 90
    .local v7, "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAttestationChallenge:[B

    if-eqz v10, :cond_0

    .line 91
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAttestationChallenge:[B

    invoke-virtual {v7, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 94
    :cond_0
    iget-boolean v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mGenerateEcKey:Z

    if-eqz v10, :cond_2

    .line 95
    const/16 v10, 0x100

    invoke-virtual {v7, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 105
    :goto_0
    iget-boolean v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mGenerateEcKey:Z

    if-eqz v10, :cond_3

    .line 106
    const-string v4, "EC"

    .line 111
    .local v4, "keyAlgorithm":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v6

    .line 112
    .local v6, "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAdminComponentName:Landroid/content/ComponentName;

    iget v12, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIdAttestationFlags:I

    .line 113
    invoke-virtual {v10, v11, v4, v6, v12}, Landroid/app/admin/DevicePolicyManager;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;I)Landroid/security/AttestedKeyPair;

    move-result-object v5

    .line 116
    .local v5, "keyPair":Landroid/security/AttestedKeyPair;
    if-nez v5, :cond_4

    .line 117
    const/4 v5, 0x0

    .line 151
    .end local v4    # "keyAlgorithm":Ljava/lang/String;
    .end local v5    # "keyPair":Landroid/security/AttestedKeyPair;
    .end local v6    # "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_1
    :goto_2
    return-object v5

    .line 98
    .restart local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "PSS"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "PKCS1"

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v10

    const/16 v11, 0x800

    .line 101
    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 143
    .end local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "PolicyManagement"

    const-string v11, "Failed to create certificate"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 108
    .restart local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_3
    :try_start_1
    const-string v4, "RSA"

    .restart local v4    # "keyAlgorithm":Ljava/lang/String;
    goto :goto_1

    .line 120
    .restart local v5    # "keyPair":Landroid/security/AttestedKeyPair;
    .restart local v6    # "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_4
    invoke-virtual {v5}, Landroid/security/AttestedKeyPair;->getAttestationRecord()Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v0, :cond_6

    .line 122
    const-string v10, "PolicyManagement"

    const-string v11, "Attestation record:"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 124
    .local v1, "cert":Ljava/security/cert/Certificate;
    const-string v11, "PolicyManagement"

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 143
    .end local v0    # "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "keyAlgorithm":Ljava/lang/String;
    .end local v5    # "keyPair":Landroid/security/AttestedKeyPair;
    .end local v6    # "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 126
    .restart local v0    # "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v4    # "keyAlgorithm":Ljava/lang/String;
    .restart local v5    # "keyPair":Landroid/security/AttestedKeyPair;
    .restart local v6    # "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_5
    const-string v10, "PolicyManagement"

    const-string v11, "End of attestation record."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_6
    new-instance v9, Ljavax/security/auth/x500/X500Principal;

    const-string v10, "CN=TestDPC, O=Android, C=US"

    invoke-direct {v9, v10}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 132
    .local v9, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v5}, Landroid/security/AttestedKeyPair;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v10

    invoke-static {v10, v9, v9}, Lcom/afwsamples/testdpc/policy/utils/CertificateUtils;->createCertificate(Ljava/security/KeyPair;Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 134
    .local v8, "selfSigned":Ljava/security/cert/X509Certificate;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v12, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mIsUserSelectable:Z

    invoke-virtual {v10, v11, v12, v2, v13}, Landroid/app/admin/DevicePolicyManager;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v10

    if-nez v10, :cond_1

    .line 139
    const/4 v5, 0x0

    goto :goto_2

    .line 145
    .end local v0    # "attestationRecord":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "keyAlgorithm":Ljava/lang/String;
    .end local v5    # "keyPair":Landroid/security/AttestedKeyPair;
    .end local v6    # "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v7    # "keySpecBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v8    # "selfSigned":Ljava/security/cert/X509Certificate;
    .end local v9    # "subject":Ljavax/security/auth/x500/X500Principal;
    :catch_2
    move-exception v3

    .line 146
    .local v3, "e":Landroid/security/keystore/StrongBoxUnavailableException;
    const-string v10, "PolicyManagement"

    const-string v11, "StrongBox unavailable"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 147
    .end local v3    # "e":Landroid/security/keystore/StrongBoxUnavailableException;
    :catch_3
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v10, "PolicyManagement"

    const-string v11, "Not permitted to generate key"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 143
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->doInBackground([Ljava/lang/Void;)Landroid/security/AttestedKeyPair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/security/AttestedKeyPair;)V
    .locals 2
    .param p1, "keyPair"    # Landroid/security/AttestedKeyPair;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    const v0, 0x7f0f019b

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->showToast(ILjava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->showKeyGenerationResult(Landroid/security/AttestedKeyPair;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const v0, 0x7f0f019a

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->showToast(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Landroid/security/AttestedKeyPair;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->onPostExecute(Landroid/security/AttestedKeyPair;)V

    return-void
.end method
