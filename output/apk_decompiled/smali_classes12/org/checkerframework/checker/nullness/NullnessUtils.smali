.class public final Lorg/checkerframework/checker/nullness/NullnessUtils;
.super Ljava/lang/Object;
.source "NullnessUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/checkerframework/checker/nullness/NullnessUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/checkerframework/checker/nullness/NullnessUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "shouldn\'t be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/checkerframework/checker/nullness/NullnessUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Misuse of castNonNull: called with a null argument"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_0
    return-object p0
.end method

.method private static castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    sget-boolean v1, Lorg/checkerframework/checker/nullness/NullnessUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Misuse of castNonNullArray: called with a null array argument"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 170
    sget-boolean v1, Lorg/checkerframework/checker/nullness/NullnessUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    aget-object v1, p0, v0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Misuse of castNonNull: called with a null array element"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 171
    :cond_1
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/checkerframework/checker/nullness/NullnessUtils;->checkIfArray(Ljava/lang/Object;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_2
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "arr":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static castNonNullDeep([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "arr":[[Ljava/lang/Object;, "[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[[Ljava/lang/Object;)[[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[TT;)[[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "arr":[[[Ljava/lang/Object;, "[[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Ljava/lang/Object;

    check-cast v0, [[[Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[[[Ljava/lang/Object;)[[[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[[TT;)[[[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "arr":[[[[Ljava/lang/Object;, "[[[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[Ljava/lang/Object;

    check-cast v0, [[[[Ljava/lang/Object;

    return-object v0
.end method

.method public static castNonNullDeep([[[[[Ljava/lang/Object;)[[[[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[[[TT;)[[[[[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "arr":[[[[[Ljava/lang/Object;, "[[[[[TT;"
    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[[Ljava/lang/Object;

    check-cast v0, [[[[[Ljava/lang/Object;

    return-object v0
.end method

.method private static checkIfArray(Ljava/lang/Object;)V
    .locals 3
    .param p0, "ref"    # Ljava/lang/Object;

    .prologue
    .line 177
    sget-boolean v1, Lorg/checkerframework/checker/nullness/NullnessUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Misuse of checkIfArray: called with a null argument"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    .end local p0    # "ref":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 185
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_2
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "ref":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method
