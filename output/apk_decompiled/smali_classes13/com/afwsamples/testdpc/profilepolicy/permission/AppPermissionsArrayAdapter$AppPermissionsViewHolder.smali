.class final Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;
.super Ljava/lang/Object;
.source "AppPermissionsArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppPermissionsViewHolder"
.end annotation


# instance fields
.field appPermission:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermission;

.field permissionGroup:Landroid/widget/RadioGroup;

.field permissionName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;->this$0:Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter$AppPermissionsViewHolder;-><init>(Lcom/afwsamples/testdpc/profilepolicy/permission/AppPermissionsArrayAdapter;)V

    return-void
.end method
