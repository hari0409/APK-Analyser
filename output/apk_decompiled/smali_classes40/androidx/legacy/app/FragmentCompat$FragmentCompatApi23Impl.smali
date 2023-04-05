.class Landroidx/legacy/app/FragmentCompat$FragmentCompatApi23Impl;
.super Landroidx/legacy/app/FragmentCompat$FragmentCompatApi15Impl;
.source "FragmentCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
