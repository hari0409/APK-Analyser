.class final Lcom/afwsamples/testdpc/util/Flags$NamedParam;
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
    name = "NamedParam"
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
.field private final dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    .local p1, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$NamedParam;->dataType:Ljava/lang/Class;

    .line 120
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$NamedParam;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 114
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$NamedParam;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptsMultipleValues()Z
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    const/4 v0, 0x0

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
    .line 140
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$NamedParam;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isOrdinal()Z
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$NamedParam;->name:Ljava/lang/String;

    return-object v0
.end method
