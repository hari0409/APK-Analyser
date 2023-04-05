.class final Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArgumentParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final parserFunc:Lcom/afwsamples/testdpc/util/Flags$BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$BiFunction",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final validator:Lcom/afwsamples/testdpc/util/Flags$Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$BiFunction;Lcom/afwsamples/testdpc/util/Flags$Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$BiFunction",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<TT;>;"
    .local p1, "parserFunc":Lcom/afwsamples/testdpc/util/Flags$BiFunction;, "Lcom/afwsamples/testdpc/util/Flags$BiFunction<Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;>;"
    .local p2, "validator":Lcom/afwsamples/testdpc/util/Flags$Validator;, "Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->parserFunc:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    .line 638
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->validator:Lcom/afwsamples/testdpc/util/Flags$Validator;

    .line 639
    return-void
.end method

.method static synthetic access$1900(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    .prologue
    .line 630
    invoke-static {p0}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->create(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/Flags$Validator;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->validator()Lcom/afwsamples/testdpc/util/Flags$Validator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/Flags$BiFunction;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->parserFunc()Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$BiFunction",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "parserFunc":Lcom/afwsamples/testdpc/util/Flags$BiFunction;, "Lcom/afwsamples/testdpc/util/Flags$BiFunction<Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$Validator;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;-><init>(Lcom/afwsamples/testdpc/util/Flags$BiFunction;Lcom/afwsamples/testdpc/util/Flags$Validator;)V

    return-object v0
.end method

.method private parserFunc()Lcom/afwsamples/testdpc/util/Flags$BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/afwsamples/testdpc/util/Flags$BiFunction",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->parserFunc:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    return-object v0
.end method

.method private validator()Lcom/afwsamples/testdpc/util/Flags$Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->validator:Lcom/afwsamples/testdpc/util/Flags$Validator;

    return-object v0
.end method
