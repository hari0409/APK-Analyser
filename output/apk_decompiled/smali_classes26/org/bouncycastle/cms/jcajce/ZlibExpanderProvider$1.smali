.class Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/InputExpander;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

.field final synthetic val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 6

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->access$000(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-static {v2}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->access$000(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
