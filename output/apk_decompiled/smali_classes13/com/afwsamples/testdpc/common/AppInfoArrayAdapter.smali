.class public Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppInfoArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInfoArrayAdapter"


# instance fields
.field private mAppInfoFlags:I

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p4, "includeDisabledApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mAppInfoFlags:I

    .line 46
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    if-eqz p4, :cond_0

    .line 48
    const/16 v0, 0x2000

    iput v0, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mAppInfoFlags:I

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    :cond_0
    const v4, 0x7f090115

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 64
    .local v2, "iconImageView":Landroid/widget/ImageView;
    const v4, 0x7f090116

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "pkgNameTextView":Landroid/widget/TextView;
    :try_start_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v6, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mAppInfoFlags:I

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 68
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object p2

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
