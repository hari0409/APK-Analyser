.class Lcom/google/common/collect/EnumMultiset$1;
.super Lcom/google/common/collect/AbstractMultiset$ElementSet;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset;->createElementSet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>.ElementSet;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/EnumMultiset;

    .prologue
    .line 251
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$1;, "Lcom/google/common/collect/EnumMultiset$1;"
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$1;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultiset$ElementSet;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$1;, "Lcom/google/common/collect/EnumMultiset$1;"
    new-instance v0, Lcom/google/common/collect/EnumMultiset$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumMultiset$1$1;-><init>(Lcom/google/common/collect/EnumMultiset$1;)V

    return-object v0
.end method
