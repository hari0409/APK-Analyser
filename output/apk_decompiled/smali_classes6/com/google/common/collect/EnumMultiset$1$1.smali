.class Lcom/google/common/collect/EnumMultiset$1$1;
.super Lcom/google/common/collect/EnumMultiset$Itr;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EnumMultiset$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/EnumMultiset",
        "<TE;>.Itr<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/EnumMultiset$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset$1;)V
    .locals 1
    .param p1, "this$1"    # Lcom/google/common/collect/EnumMultiset$1;

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$1$1;, "Lcom/google/common/collect/EnumMultiset$1$1;"
    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$1$1;->this$1:Lcom/google/common/collect/EnumMultiset$1;

    iget-object v0, p1, Lcom/google/common/collect/EnumMultiset$1;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0, v0}, Lcom/google/common/collect/EnumMultiset$Itr;-><init>(Lcom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method output(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$1$1;, "Lcom/google/common/collect/EnumMultiset$1$1;"
    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$1$1;->this$1:Lcom/google/common/collect/EnumMultiset$1;

    iget-object v0, v0, Lcom/google/common/collect/EnumMultiset$1;->this$0:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method bridge synthetic output(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/collect/EnumMultiset$1$1;, "Lcom/google/common/collect/EnumMultiset$1$1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumMultiset$1$1;->output(I)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
