.class Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;
.super Ljava/lang/Object;
.source "AppPermissionsArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppPermission"
.end annotation


# instance fields
.field final permissionName:Ljava/lang/String;

.field permissionState:I

.field final pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "permissionState"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->pkgName:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionName:Ljava/lang/String;

    .line 118
    iput p3, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;->permissionState:I

    .line 119
    return-void
.end method
