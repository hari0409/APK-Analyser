.class Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;
.super Ljava/lang/Object;
.source "EditDeleteArrayAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    .prologue
    .line 96
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;"
    .local p1, "entry1":Ljava/lang/Object;, "TT;"
    .local p2, "entry2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getDisplayName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v1, p2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getDisplayName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
