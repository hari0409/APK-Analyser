.class Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;
.super Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.source "SetTrustAgentConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEditDeleteArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onEditButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
    .param p4, "onDeleteButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    .line 276
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDisplayName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 280
    return-object p1
.end method
