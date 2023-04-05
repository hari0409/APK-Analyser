.class Lcom/google/common/collect/FluentIterable$2$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FluentIterable$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/FluentIterable$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FluentIterable$2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/FluentIterable$2;
    .param p2, "size"    # I

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/common/collect/FluentIterable$2$1;->this$0:Lcom/google/common/collect/FluentIterable$2;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FluentIterable$2$1;->get(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/Iterator;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable$2$1;->this$0:Lcom/google/common/collect/FluentIterable$2;

    iget-object v0, v0, Lcom/google/common/collect/FluentIterable$2;->val$inputs:[Ljava/lang/Iterable;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
