.class Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;
.super Ljava/lang/Object;
.source "IntentOrIntentFilterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

.field final synthetic val$customInputType:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iput p2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->val$customInputType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->val$customInputType:I

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->access$000(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    .line 359
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 360
    return-void
.end method
