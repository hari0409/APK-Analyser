.class final Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final transient list:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;*>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    .local p1, "map":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TK;*>;"
    .local p2, "list":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    .line 276
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    .line 277
    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 291
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 270
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap$KeySet;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
