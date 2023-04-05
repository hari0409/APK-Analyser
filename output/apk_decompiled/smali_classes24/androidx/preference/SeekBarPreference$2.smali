.class Landroidx/preference/SeekBarPreference$2;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/preference/SeekBarPreference;

    .prologue
    .line 93
    iput-object p1, p0, Landroidx/preference/SeekBarPreference$2;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Landroidx/preference/SeekBarPreference$2;->this$0:Landroidx/preference/SeekBarPreference;

    iget-boolean v1, v1, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    if-nez v1, :cond_2

    const/16 v1, 0x15

    if-eq p2, v1, :cond_0

    const/16 v1, 0x16

    if-eq p2, v1, :cond_0

    .line 108
    :cond_2
    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    .line 112
    iget-object v1, p0, Landroidx/preference/SeekBarPreference$2;->this$0:Landroidx/preference/SeekBarPreference;

    iget-object v1, v1, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_3

    .line 113
    const-string v1, "SeekBarPreference"

    const-string v2, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Landroidx/preference/SeekBarPreference$2;->this$0:Landroidx/preference/SeekBarPreference;

    iget-object v0, v0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
