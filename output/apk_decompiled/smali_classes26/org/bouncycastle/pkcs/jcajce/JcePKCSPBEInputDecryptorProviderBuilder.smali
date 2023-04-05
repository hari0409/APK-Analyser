.class public Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;
.super Ljava/lang/Object;


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private wrongPKCS12Zero:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->wrongPKCS12Zero:Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->wrongPKCS12Zero:Z

    return v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;)Lorg/bouncycastle/operator/SecretKeySizeProvider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-object v0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/InputDecryptorProvider;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder$1;-><init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;[C)V

    return-object v0
.end method

.method public setKeySizeProvider(Lorg/bouncycastle/operator/SecretKeySizeProvider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setTryWrongPKCS12Zero(Z)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEInputDecryptorProviderBuilder;->wrongPKCS12Zero:Z

    return-object p0
.end method
