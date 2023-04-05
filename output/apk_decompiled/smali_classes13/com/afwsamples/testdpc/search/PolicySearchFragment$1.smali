.class Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;
.super Ljava/lang/Object;
.source "PolicySearchFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/search/PolicySearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->access$000(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->access$000(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
