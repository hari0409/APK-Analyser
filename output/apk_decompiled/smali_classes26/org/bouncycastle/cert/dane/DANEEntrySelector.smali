.class public Lorg/bouncycastle/cert/dane/DANEEntrySelector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private final domainName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->domainName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lorg/bouncycastle/cert/dane/DANEEntry;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/dane/DANEEntry;->getDomainName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/dane/DANEEntrySelector;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
