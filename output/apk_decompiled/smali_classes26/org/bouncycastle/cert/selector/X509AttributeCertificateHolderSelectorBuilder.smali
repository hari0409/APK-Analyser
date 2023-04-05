.class public Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;
.super Ljava/lang/Object;


# instance fields
.field private attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

.field private issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    return-void
.end method

.method private extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;
    .locals 9

    new-instance v0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->serialNumber:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCertificateValid:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;-><init>(Lorg/bouncycastle/cert/AttributeCertificateHolder;Lorg/bouncycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public setAttributeCert(Lorg/bouncycastle/cert/X509AttributeCertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    return-void
.end method

.method public setAttributeCertificateValid(Ljava/util/Date;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCertificateValid:Ljava/util/Date;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCertificateValid:Ljava/util/Date;

    goto :goto_0
.end method

.method public setHolder(Lorg/bouncycastle/cert/AttributeCertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/cert/AttributeCertificateIssuer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method public setTargetGroups(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    return-void
.end method

.method public setTargetNames(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    return-void
.end method
