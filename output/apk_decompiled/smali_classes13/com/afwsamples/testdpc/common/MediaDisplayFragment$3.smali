.class Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;
.super Ljava/lang/Object;
.source "MediaDisplayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/MediaDisplayFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;->this$0:Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;->this$0:Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;->this$0:Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->access$000(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;->this$0:Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 104
    return-void
.end method
