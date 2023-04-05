.class public abstract Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ToggleComponentsArrayAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field protected mIsComponentCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 61
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract canModifyComponent(I)Z
.end method

.method protected getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getDisplayName(I)Ljava/lang/CharSequence;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 78
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 79
    sget-object v5, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to retrieve application info for the entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v5, 0x0

    move-object v1, p2

    .line 106
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_0
    return-object v5

    .line 83
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b0032

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    :cond_1
    const v5, 0x7f090115

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    .local v3, "iconImageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const v5, 0x7f090116

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, "pkgNameTextView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getDisplayName(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v5, 0x7f0900a8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 93
    .local v2, "enableComponentCheckbox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;-><init>(Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;I)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v5, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->canModifyComponent(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    move-object v1, p2

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    move-object v5, p2

    .line 106
    goto :goto_0
.end method

.method protected abstract isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z
.end method

.method protected isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0900a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 122
    .local v0, "enableComponentCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 123
    return-void
.end method

.method protected setIsComponentEnabledList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    .line 141
    return-void
.end method
