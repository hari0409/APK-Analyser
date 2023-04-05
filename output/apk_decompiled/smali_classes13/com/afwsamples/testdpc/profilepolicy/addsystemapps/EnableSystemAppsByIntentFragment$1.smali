.class Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$1;
.super Ljava/lang/Object;
.source "EnableSystemAppsByIntentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 181
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$1;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->access$000(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 186
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 187
    return-void
.end method
