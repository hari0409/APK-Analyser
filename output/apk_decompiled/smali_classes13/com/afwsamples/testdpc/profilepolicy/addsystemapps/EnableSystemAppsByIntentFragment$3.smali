.class Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$3;
.super Ljava/lang/Object;
.source "EnableSystemAppsByIntentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->showCustomActionInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$3;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$3;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->access$400(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    return-void
.end method
