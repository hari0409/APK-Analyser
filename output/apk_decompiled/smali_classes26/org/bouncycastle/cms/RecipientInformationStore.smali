.class public Lorg/bouncycastle/cms/RecipientInformationStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Iterable",
        "<",
        "Lorg/bouncycastle/cms/RecipientInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private final all:Ljava/util/List;

.field private final table:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/RecipientInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/RecipientInformation;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/cms/RecipientId;)Lorg/bouncycastle/cms/RecipientInformation;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/RecipientInformation;

    goto :goto_0
.end method

.method public getRecipients()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/cms/RecipientId;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/bouncycastle/cms/Recipient;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/cms/KeyTransRecipientId;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-direct {v0, v3}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
