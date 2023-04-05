.class public Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;
.super Ljava/util/IllegalFormatConversionException;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalFormatConversionCategoryException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10366beL


# instance fields
.field private final expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/formatter/qual/ConversionCategory;Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)V
    .locals 3
    .param p1, "expected"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .param p2, "found"    # Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    :goto_0
    iget-object v1, p2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    if-nez v1, :cond_1

    const-class v1, Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, v0, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    .line 202
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 203
    iput-object p2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 204
    return-void

    .line 200
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->chars:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->types:[Ljava/lang/Class;

    aget-object v1, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getExpected()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getFound()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    const-string v0, "Expected category %s but found %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->expected:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;->found:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
