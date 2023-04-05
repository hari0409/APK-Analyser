.class public Lorg/bouncycastle/dvcs/MessageImprint;
.super Ljava/lang/Object;


# instance fields
.field private final messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/dvcs/MessageImprint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    check-cast p1, Lorg/bouncycastle/dvcs/MessageImprint;

    iget-object v1, p1, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/MessageImprint;->messageImprint:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object v0
.end method
