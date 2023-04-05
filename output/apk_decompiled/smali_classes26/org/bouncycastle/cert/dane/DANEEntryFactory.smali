.class public Lorg/bouncycastle/cert/dane/DANEEntryFactory;
.super Ljava/lang/Object;


# instance fields
.field private final selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/dane/DANEEntryFactory;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;ILorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/dane/DANEEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/dane/DANEException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ltz p2, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/dane/DANEException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown certificate usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/dane/DANEException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cert/dane/DANEEntryFactory;->selectorFactory:Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/dane/DANEEntrySelectorFactory;->createSelector(Ljava/lang/String;)Lorg/bouncycastle/cert/dane/DANEEntrySelector;

    move-result-object v0

    new-array v1, v1, [B

    int-to-byte v2, p2

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    new-instance v2, Lorg/bouncycastle/cert/dane/DANEEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->getDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p3}, Lorg/bouncycastle/cert/dane/DANEEntry;-><init>(Ljava/lang/String;[BLorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object v2
.end method

.method public createEntry(Ljava/lang/String;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/dane/DANEEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/dane/DANEException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/cert/dane/DANEEntryFactory;->createEntry(Ljava/lang/String;ILorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/dane/DANEEntry;

    move-result-object v0

    return-object v0
.end method
