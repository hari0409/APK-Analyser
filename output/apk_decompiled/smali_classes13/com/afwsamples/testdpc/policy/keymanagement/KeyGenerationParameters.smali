.class public Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    }
.end annotation


# instance fields
.field public final alias:Ljava/lang/String;

.field public final attestationChallenge:[B

.field public final generateEcKey:Z

.field public final idAttestationFlags:I

.field public final isUserSelectable:Z

.field public final useStrongBox:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[BIZZ)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "isUserSelectable"    # Z
    .param p3, "attestationChallenge"    # [B
    .param p4, "idAttestationFlags"    # I
    .param p5, "useStrongBox"    # Z
    .param p6, "generateEcKey"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->alias:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->isUserSelectable:Z

    .line 16
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->attestationChallenge:[B

    .line 17
    iput p4, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->idAttestationFlags:I

    .line 18
    iput-boolean p5, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->useStrongBox:Z

    .line 19
    iput-boolean p6, p0, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;->generateEcKey:Z

    .line 20
    return-void
.end method
