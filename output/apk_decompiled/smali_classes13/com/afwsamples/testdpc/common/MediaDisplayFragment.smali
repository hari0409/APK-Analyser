.class public Lcom/afwsamples/testdpc/common/MediaDisplayFragment;
.super Landroid/app/Fragment;
.source "MediaDisplayFragment.java"


# static fields
.field private static final ARG_DISPLAY_REQUEST:Ljava/lang/String; = "argDisplayRequest"

.field private static final ARG_MEDIA_URI:Ljava/lang/String; = "argMediaUri"

.field public static final REQUEST_DISPLAY_IMAGE:I = 0x1

.field public static final REQUEST_DISPLAY_VIDEO:I = 0x2


# instance fields
.field private mDisplayRequest:I

.field private mMediaUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static newInstance(ILandroid/net/Uri;)Lcom/afwsamples/testdpc/common/MediaDisplayFragment;
    .locals 4
    .param p0, "displayRequest"    # I
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 45
    new-instance v1, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;-><init>()V

    .line 46
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/MediaDisplayFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "argDisplayRequest"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "argMediaUri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argDisplayRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mDisplayRequest:I

    .line 58
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMediaUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0126

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 67
    const v6, 0x7f0b0038

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "view":Landroid/view/View;
    iget v6, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mDisplayRequest:I

    packed-switch v6, :pswitch_data_0

    .line 98
    :goto_0
    const v6, 0x7f09008f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    .local v0, "deleteButton":Landroid/widget/Button;
    new-instance v6, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;

    invoke-direct {v6, p0}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$3;-><init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v5

    .line 70
    .end local v0    # "deleteButton":Landroid/widget/Button;
    :pswitch_0
    const v6, 0x7f0900ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 72
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :pswitch_1
    const v6, 0x7f0901d9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    .line 76
    .local v4, "videoView":Landroid/widget/VideoView;
    iget-object v6, p0, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 77
    invoke-virtual {v4, v7}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 78
    invoke-virtual {v4}, Landroid/widget/VideoView;->requestFocus()Z

    .line 79
    const v6, 0x7f090117

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 80
    .local v2, "playButton":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    new-instance v6, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$1;

    invoke-direct {v6, p0, v4}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$1;-><init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;Landroid/widget/VideoView;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v6, 0x7f090183

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 88
    .local v3, "stopButton":Landroid/widget/Button;
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    new-instance v6, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;

    invoke-direct {v6, p0, v4}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment$2;-><init>(Lcom/afwsamples/testdpc/common/MediaDisplayFragment;Landroid/widget/VideoView;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
