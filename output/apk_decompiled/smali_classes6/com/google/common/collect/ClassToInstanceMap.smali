.class public interface abstract Lcom/google/common/collect/ClassToInstanceMap;
.super Ljava/lang/Object;
.source "ClassToInstanceMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;"
    }
.end annotation


# virtual methods
.method public abstract getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation
.end method
