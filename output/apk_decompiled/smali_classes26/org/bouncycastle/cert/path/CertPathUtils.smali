.class Lorg/bouncycastle/cert/path/CertPathUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCriticalExtensionsOIDs([Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/util/Set;
    .locals 3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
