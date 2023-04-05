.class public Lorg/bouncycastle/crypto/tls/ServerNameList;
.super Ljava/lang/Object;


# instance fields
.field protected serverNameList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'serverNameList\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    return-void
.end method

.method private static checkNameType([SS)[S
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/NameType;->isValid(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->append([SS)[S

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerNameList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    new-array v0, v0, [S

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/ServerName;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/ServerName;->getNameType()S

    move-result v4

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/ServerNameList;->checkNameType([SS)[S

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/ServerNameList;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/ServerNameList;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v2, v0, [S

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/ServerName;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ServerName;->getNameType()S

    move-result v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/ServerNameList;->checkNameType([SS)[S

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/ServerName;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v3, p1}, Lorg/bouncycastle/util/io/Streams;->writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getServerNameList()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerNameList;->serverNameList:Ljava/util/Vector;

    return-object v0
.end method
