.class final Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$Param;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedOrdinalParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/Flags$Param",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final innerParam:Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$OrdinalParam",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$OrdinalParam",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    .local p1, "innerParam":Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$OrdinalParam<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;->innerParam:Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 182
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;-><init>(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)V

    return-void
.end method


# virtual methods
.method public acceptsMultipleValues()Z
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;->innerParam:Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;->dataType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isOrdinal()Z
    .locals 1

    .prologue
    .line 191
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;->innerParam:Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
