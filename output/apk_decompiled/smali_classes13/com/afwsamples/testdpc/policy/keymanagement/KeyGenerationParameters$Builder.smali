.class public Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mAttestationChallenge:[B

.field private mGenerateEcKey:Z

.field private mIdAttestationFlags:I

.field private mIsUserSelectable:Z

.field private mUseStrongBox:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;
    .locals 7

    .prologue
    .line 61
    new-instance v0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mAlias:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mIsUserSelectable:Z

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mAttestationChallenge:[B

    iget v4, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mIdAttestationFlags:I

    iget-boolean v5, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mUseStrongBox:Z

    iget-boolean v6, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mGenerateEcKey:Z

    invoke-direct/range {v0 .. v6}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;-><init>(Ljava/lang/String;Z[BIZZ)V

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mAlias:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public setAttestationChallenge([B)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    .locals 0
    .param p1, "attestationChallenge"    # [B

    .prologue
    .line 41
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mAttestationChallenge:[B

    .line 42
    return-object p0
.end method

.method public setGenerateEcKey(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    .locals 0
    .param p1, "generateEcKey"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mGenerateEcKey:Z

    .line 57
    return-object p0
.end method

.method public setIdAttestationFlags(I)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    .locals 0
    .param p1, "idAttestationFlags"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mIdAttestationFlags:I

    .line 47
    return-object p0
.end method

.method public setIsUserSelectable(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    .locals 0
    .param p1, "isUserSelectable"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mIsUserSelectable:Z

    .line 37
    return-object p0
.end method

.method public setUseStrongBox(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    .locals 0
    .param p1, "useStrongBox"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->mUseStrongBox:Z

    .line 52
    return-object p0
.end method
