.class public final Lcom/afwsamples/testdpc/util/Flags$Validator;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Validator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator;, "Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method


# virtual methods
.method public invalid()Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator;, "Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;-><init>(Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method public invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator;, "Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;-><init>(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method public valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator;, "Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;-><init>(Ljava/lang/Object;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method
