.class Lcom/google/common/collect/MutableClassToInstanceMap$2$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "MutableClassToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MutableClassToInstanceMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/MutableClassToInstanceMap$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MutableClassToInstanceMap$2;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/MutableClassToInstanceMap$2;

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap$2$1;, "Lcom/google/common/collect/MutableClassToInstanceMap$2$1;"
    .local p2, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<Ljava/lang/Class<+TB;>;TB;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/MutableClassToInstanceMap$2$1;->this$1:Lcom/google/common/collect/MutableClassToInstanceMap$2;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap$2$1;, "Lcom/google/common/collect/MutableClassToInstanceMap$2$1;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MutableClassToInstanceMap$2$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/collect/MutableClassToInstanceMap$2$1;, "Lcom/google/common/collect/MutableClassToInstanceMap$2$1;"
    .local p1, "from":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-static {p1}, Lcom/google/common/collect/MutableClassToInstanceMap;->checkedEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
