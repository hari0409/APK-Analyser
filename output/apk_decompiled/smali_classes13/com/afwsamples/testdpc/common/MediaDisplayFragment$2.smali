.class Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;
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

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;->this$0:Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;->val$videoView:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 93
    return-void
.end method
