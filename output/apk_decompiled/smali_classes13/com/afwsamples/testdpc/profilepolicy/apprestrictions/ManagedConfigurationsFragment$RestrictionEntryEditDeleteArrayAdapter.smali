.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;
.super Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.source "ManagedConfigurationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictionEntryEditDeleteArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter",
        "<",
        "Landroid/content/RestrictionEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "onEditButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
    .param p5, "onDeleteButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;->this$0:Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;

    .line 407
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    .line 408
    return-void
.end method


# virtual methods
.method protected getDisplayName(Landroid/content/RestrictionEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDisplayName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    check-cast p1, Landroid/content/RestrictionEntry;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;->getDisplayName(Landroid/content/RestrictionEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
