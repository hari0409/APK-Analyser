.class Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;[Ljava/lang/String;Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;

    .prologue
    .line 101
    iput-object p1, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->this$0:Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;

    iput-object p2, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroid/app/Fragment;

    iput p4, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 104
    iget-object v6, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    array-length v6, v6

    new-array v1, v6, [I

    .line 106
    .local v1, "grantResults":[I
    iget-object v6, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 109
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    array-length v5, v6

    .line 112
    .local v5, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 113
    iget-object v6, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "i":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "permissionCount":I
    :cond_0
    const/4 v6, -0x1

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([II)V

    .line 120
    :cond_1
    iget-object v6, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroid/app/Fragment;

    check-cast v6, Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;

    iget v7, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    iget-object v8, p0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1}, Landroidx/legacy/app/FragmentCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 122
    return-void
.end method
