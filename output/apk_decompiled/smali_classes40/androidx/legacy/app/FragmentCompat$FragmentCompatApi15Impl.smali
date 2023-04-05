.class Landroidx/legacy/app/FragmentCompat$FragmentCompatApi15Impl;
.super Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;
.source "FragmentCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi15Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .prologue
    .line 135
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 136
    return-void
.end method
