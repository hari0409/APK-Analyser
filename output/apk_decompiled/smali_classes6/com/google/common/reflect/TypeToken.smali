.class public abstract Lcom/google/common/reflect/TypeToken;
.super Lcom/google/common/reflect/TypeCapture;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeToken$TypeCollector;,
        Lcom/google/common/reflect/TypeToken$SimpleTypeToken;,
        Lcom/google/common/reflect/TypeToken$Bounds;,
        Lcom/google/common/reflect/TypeToken$TypeFilter;,
        Lcom/google/common/reflect/TypeToken$ClassSet;,
        Lcom/google/common/reflect/TypeToken$InterfaceSet;,
        Lcom/google/common/reflect/TypeToken$TypeSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeCapture",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final runtimeType:Ljava/lang/reflect/Type;

.field private transient typeResolver:Lcom/google/common/reflect/TypeResolver;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 121
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 151
    invoke-super {p0}, Lcom/google/common/reflect/TypeCapture;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 152
    .local v0, "captured":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 153
    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    iput-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 160
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Type;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeToken$1;

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/reflect/TypeToken;
    .param p1, "x1"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/reflect/TypeToken;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/reflect/TypeToken;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method private static any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;
    .locals 2
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 981
    new-instance v0, Lcom/google/common/reflect/TypeToken$Bounds;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/TypeToken$Bounds;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private boundAsSuperclass(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .param p1, "bound"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 317
    .local v1, "token":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 321
    :cond_0
    move-object v0, v1

    .line 322
    .local v0, "superclass":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    goto :goto_0
.end method

.method private boundsAsInterfaces([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 356
    .local v2, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 358
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 359
    .local v1, "boundType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 356
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .end local v1    # "boundType":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3
.end method

.method private static every([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;
    .locals 2
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 976
    new-instance v0, Lcom/google/common/reflect/TypeToken$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/TypeToken$Bounds;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private getArraySubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1152
    .local v0, "componentSubtype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v2, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1155
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1156
    .local v1, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    return-object v1
.end method

.method private getArraySupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1135
    .line 1136
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    const-string v4, "%s isn\'t a super type of %s"

    invoke-static {v3, v4, p1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/TypeToken;

    .line 1139
    .local v1, "componentType":Lcom/google/common/reflect/TypeToken;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1141
    .local v0, "componentSupertype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v3, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1144
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1145
    .local v2, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v2
.end method

.method private getOwnerTypeIfPresent()Ljava/lang/reflect/Type;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 1063
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1068
    :goto_0
    return-object v0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRawTypes()Lcom/google/common/collect/ImmutableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Class",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 1015
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/Class<*>;>;"
    new-instance v2, Lcom/google/common/reflect/TypeToken$4;

    invoke-direct {v2, p0, v0}, Lcom/google/common/reflect/TypeToken$4;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$Builder;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    aput-object v5, v3, v4

    .line 1040
    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeToken$4;->visit([Ljava/lang/reflect/Type;)V

    .line 1043
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 1044
    .local v1, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/Class<-TT;>;>;"
    return-object v1
.end method

.method private getSubtypeFromLowerBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 5
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v2, p2

    const/4 v3, 0x0

    if-ge v3, v2, :cond_0

    aget-object v1, p2, v3

    .line 1124
    .local v1, "lowerBound":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1126
    .local v0, "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    return-object v2

    .line 1128
    .end local v0    # "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    .end local v1    # "lowerBound":Ljava/lang/reflect/Type;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isn\'t a subclass of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 6
    .param p2, "upperBounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<-TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p2, v3

    .line 1111
    .local v2, "upperBound":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1112
    .local v0, "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1114
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 1115
    .local v1, "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    return-object v1

    .line 1109
    .end local v1    # "result":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    .end local v0    # "bound":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    .end local v2    # "upperBound":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isn\'t a super type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private is(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p1, "formalType"    # Ljava/lang/reflect/Type;

    .prologue
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 959
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    .end local p1    # "formalType":Ljava/lang/reflect/Type;
    :goto_0
    return v1

    .line 962
    .restart local p1    # "formalType":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 968
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->every([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/google/common/reflect/TypeToken$Bounds;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 969
    .end local p1    # "formalType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->every([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 968
    goto :goto_0

    :cond_1
    move v0, v2

    .line 969
    goto :goto_1

    .restart local p1    # "formalType":Ljava/lang/reflect/Type;
    :cond_2
    move v1, v2

    .line 971
    goto :goto_0
.end method

.method private isOwnedBySubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1048
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/reflect/TypeToken$TypeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/TypeToken;

    .line 1049
    .local v1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-direct {v1}, Lcom/google/common/reflect/TypeToken;->getOwnerTypeIfPresent()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1050
    .local v0, "ownerType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    const/4 v2, 0x1

    .line 1054
    .end local v0    # "ownerType":Ljava/lang/reflect/Type;
    .end local v1    # "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSubtypeOfArrayType(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 4
    .param p1, "supertype"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v2, 0x0

    .line 919
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 920
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/Class;

    .line 921
    .local v1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_1

    .line 930
    .end local v1    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 924
    .restart local v1    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v2

    goto :goto_0

    .line 925
    .end local v1    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v3, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_0

    .line 926
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 927
    .local v0, "fromArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 928
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v2

    goto :goto_0
.end method

.method private isSubtypeOfParameterizedType(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 7
    .param p1, "supertype"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v5, 0x0

    .line 892
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 893
    .local v1, "matchedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 913
    :cond_0
    :goto_0
    return v5

    .line 896
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 897
    .local v3, "typeParams":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 898
    .local v2, "toTypeArgs":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 906
    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    aget-object v6, v2, v0

    invoke-direct {v4, v6}, Lcom/google/common/reflect/TypeToken;->is(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 914
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 915
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeToken;->isOwnedBySubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_2
    move v5, v4

    .line 913
    goto :goto_0

    :cond_4
    move v4, v5

    .line 915
    goto :goto_2
.end method

.method private isSupertypeOfArray(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3
    .param p1, "subtype"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 935
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 936
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 937
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 945
    .end local v0    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    .line 940
    .restart local v0    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    goto :goto_0

    .line 941
    .end local v0    # "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2

    .line 942
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 943
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v1

    goto :goto_0

    .line 945
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWrapper()Z
    .locals 2

    .prologue
    .line 543
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {}, Lcom/google/common/primitives/Primitives;->allWrapperTypes()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static newArrayClassOrGenericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1191
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private resolveInPlace([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 270
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 271
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p1, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-object p1
.end method

.method private resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 279
    .local v0, "supertype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    iput-object v1, v0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    .line 280
    return-object v0
.end method

.method private resolveTypeArgsForSubclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1165
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 1166
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 1181
    .end local p1    # "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 1177
    .restart local p1    # "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1180
    .local v0, "genericSubtype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    iget-object v1, v2, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1181
    .local v1, "supertypeWithArgsFromSubtype":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v2}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1182
    invoke-virtual {v2, v1, v3}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1183
    invoke-virtual {v2, v3}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method

.method private someRawTypeIsSubclassOf(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 884
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    const/4 v1, 0x1

    .line 888
    .end local v0    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1081
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1085
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    iget-object v5, v5, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1083
    invoke-static {v5}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1087
    .local v0, "arrayOfGenericType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1103
    .end local v0    # "arrayOfGenericType":Ljava/lang/reflect/Type;
    :goto_0
    return-object v2

    .line 1090
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 1092
    .local v4, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1093
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    iget-object v1, v5, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 1096
    .local v1, "ownerType":Ljava/lang/reflect/Type;
    :goto_1
    array-length v5, v4

    if-gtz v5, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v1, v5, :cond_3

    .line 1100
    :cond_1
    invoke-static {v1, p0, v4}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    .local v3, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    move-object v2, v3

    .line 1101
    goto :goto_0

    .line 1093
    .end local v1    # "ownerType":Ljava/lang/reflect/Type;
    .end local v3    # "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1103
    .restart local v1    # "ownerType":Ljava/lang/reflect/Type;
    :cond_3
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Lcom/google/common/reflect/Invokable",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 619
    .line 620
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "%s not declared by %s"

    .line 623
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 619
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    new-instance v0, Lcom/google/common/reflect/TypeToken$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/TypeToken$2;-><init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V

    return-object v0

    .line 620
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 825
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    instance-of v1, p1, Lcom/google/common/reflect/TypeToken;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 826
    check-cast v0, Lcom/google/common/reflect/TypeToken;

    .line 827
    .local v0, "that":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    iget-object v2, v0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 829
    .end local v0    # "that":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getComponentType()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 568
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 569
    const/4 v1, 0x0

    .line 571
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    goto :goto_0
.end method

.method final getGenericInterfaces()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeToken;->boundsAsInterfaces([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 351
    :goto_0
    return-object v3

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v3, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeToken;->boundsAsInterfaces([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_0

    .line 344
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 345
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/reflect/TypeToken<-TT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 348
    .local v1, "interfaceType":Ljava/lang/reflect/Type;
    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 349
    .local v2, "resolvedInterface":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 351
    .end local v1    # "interfaceType":Ljava/lang/reflect/Type;
    .end local v2    # "resolvedInterface":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_0
.end method

.method final getGenericSuperclass()Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v3, 0x0

    .line 297
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeToken;->boundAsSuperclass(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v2, Ljava/lang/reflect/WildcardType;

    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeToken;->boundAsSuperclass(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 306
    .local v1, "superclass":Ljava/lang/reflect/Type;
    if-nez v1, :cond_2

    .line 307
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 311
    .local v0, "superToken":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    goto :goto_0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->getRawTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 192
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    .line 193
    .local v1, "result":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    return-object v1
.end method

.method public final getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Cannot get subtype of type variable <%s>"

    invoke-static {v2, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 415
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v2, Ljava/lang/reflect/WildcardType;

    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/reflect/TypeToken;->getSubtypeFromLowerBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 428
    :goto_1
    return-object v1

    .line 413
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->getArraySubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "%s isn\'t a subclass of %s"

    .line 423
    invoke-static {v2, v3, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveTypeArgsForSubclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 427
    .local v0, "resolvedTypeArgs":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    .line 428
    .local v1, "subtype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<+TT;>;"
    goto :goto_1
.end method

.method public final getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 387
    .line 388
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "%s is not a super class of %s"

    .line 387
    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/reflect/TypeToken;->getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/reflect/TypeToken;->getSupertypeFromUpperBounds(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->getArraySupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->toGenericType(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeToken;->resolveSupertype(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 404
    .local v0, "supertype":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<-TT;>;"
    goto :goto_0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeSet;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 834
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isArray()Z
    .locals 1

    .prologue
    .line 515
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPrimitive()Z
    .locals 1

    .prologue
    .line 524
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubtypeOf(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "supertype"    # Ljava/lang/reflect/Type;

    .prologue
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    const/4 v1, 0x0

    .line 476
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 481
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "supertype":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$Bounds;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 506
    :goto_0
    return v0

    .line 485
    .restart local p1    # "supertype":Ljava/lang/reflect/Type;
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 493
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->any([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$Bounds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$Bounds;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 496
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/TypeToken;->isSupertypeOfArray(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    goto :goto_0

    .line 499
    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 500
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "supertype":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 501
    .restart local p1    # "supertype":Ljava/lang/reflect/Type;
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 502
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "supertype":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOfParameterizedType(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v0

    goto :goto_0

    .line 503
    .restart local p1    # "supertype":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    .line 504
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "supertype":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOfArrayType(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "supertype":Ljava/lang/reflect/Type;
    :cond_8
    move v0, v1

    .line 506
    goto :goto_0
.end method

.method public final isSupertypeOf(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "type":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 452
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/Invokable",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    .line 581
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->someRawTypeIsSubclassOf(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s not declared by %s"

    .line 580
    invoke-static {v0, v1, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    new-instance v0, Lcom/google/common/reflect/TypeToken$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/TypeToken$1;-><init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method final rejectTypeVariables()Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeToken$3;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$3;-><init>(Lcom/google/common/reflect/TypeToken;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    .line 878
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$3;->visit([Ljava/lang/reflect/Type;)V

    .line 879
    return-object p0
.end method

.method public final resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    .line 263
    .local v0, "resolver":Lcom/google/common/reflect/TypeResolver;
    if-nez v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/common/reflect/TypeResolver;->accordingTo(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .end local v0    # "resolver":Lcom/google/common/reflect/TypeResolver;
    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->typeResolver:Lcom/google/common/reflect/TypeResolver;

    .line 266
    .restart local v0    # "resolver":Lcom/google/common/reflect/TypeResolver;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unwrap()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->isWrapper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 556
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lcom/google/common/primitives/Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p0

    .line 558
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p0    # "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    :cond_0
    return-object p0
.end method

.method public final where(Lcom/google/common/reflect/TypeParameter;Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeParameter",
            "<TX;>;",
            "Lcom/google/common/reflect/TypeToken",
            "<TX;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "typeParam":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TX;>;"
    .local p2, "typeArg":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TX;>;"
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v1}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    new-instance v2, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    iget-object v3, p1, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v2, v3}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v3, p2, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 223
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 226
    .local v0, "resolver":Lcom/google/common/reflect/TypeResolver;
    new-instance v1, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/reflect/TypeToken$SimpleTypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final where(Lcom/google/common/reflect/TypeParameter;Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeParameter",
            "<TX;>;",
            "Ljava/lang/Class",
            "<TX;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    .local p1, "typeParam":Lcom/google/common/reflect/TypeParameter;, "Lcom/google/common/reflect/TypeParameter<TX;>;"
    .local p2, "typeArg":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->where(Lcom/google/common/reflect/TypeParameter;Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final wrap()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 537
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p0

    .line 539
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p0    # "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    :cond_0
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 846
    .local p0, "this":Lcom/google/common/reflect/TypeToken;, "Lcom/google/common/reflect/TypeToken<TT;>;"
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
