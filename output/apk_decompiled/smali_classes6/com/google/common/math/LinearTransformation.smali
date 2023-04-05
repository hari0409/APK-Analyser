.class public abstract Lcom/google/common/math/LinearTransformation;
.super Ljava/lang/Object;
.source "LinearTransformation.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;,
        Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;,
        Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;,
        Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forNaN()Lcom/google/common/math/LinearTransformation;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;->INSTANCE:Lcom/google/common/math/LinearTransformation$NaNLinearTransformation;

    return-object v0
.end method

.method public static horizontal(D)Lcom/google/common/math/LinearTransformation;
    .locals 4
    .param p0, "y"    # D

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "slope":D
    new-instance v2, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DD)V

    return-object v2
.end method

.method public static mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;
    .locals 8
    .param p0, "x1"    # D
    .param p2, "y1"    # D

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    new-instance v1, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;-><init>(DDLcom/google/common/math/LinearTransformation$1;)V

    return-object v1

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vertical(D)Lcom/google/common/math/LinearTransformation;
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 106
    new-instance v0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    invoke-direct {v0, p0, p1}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abstract inverse()Lcom/google/common/math/LinearTransformation;
.end method

.method public abstract isHorizontal()Z
.end method

.method public abstract isVertical()Z
.end method

.method public abstract slope()D
.end method

.method public abstract transform(D)D
.end method
