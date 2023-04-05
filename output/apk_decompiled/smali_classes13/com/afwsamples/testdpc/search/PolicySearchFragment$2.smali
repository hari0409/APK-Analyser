.class Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;
.super Ljava/lang/Object;
.source "PolicySearchFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


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
    .line 88
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
