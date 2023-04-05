.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;
.super Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.source "KeyValueBundleArrayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BundleEditDeleteArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "onEditButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
    .param p5, "onDeleteButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;

    .line 206
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    .line 207
    return-void
.end method


# virtual methods
.method protected getDisplayName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "entry"    # Landroid/os/Bundle;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->access$000(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDisplayName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter;->getDisplayName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
