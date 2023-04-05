.class Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KioskModeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KioskAppsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
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
    .line 234
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    .line 235
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 236
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 242
    :try_start_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->access$000(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 243
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    .line 242
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez p2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b003e

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 253
    :cond_0
    const v5, 0x7f090115

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 254
    .local v3, "iconImageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->access$000(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    const v5, 0x7f090116

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 256
    .local v4, "pkgNameTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    const v6, 0x7f0f031e

    invoke-virtual {v5, v6}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, p2

    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    move-object v5, p2

    .line 262
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "iconImageView":Landroid/widget/ImageView;
    .end local v4    # "pkgNameTextView":Landroid/widget/TextView;
    :goto_1
    return-object v5

    .line 244
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "KioskModeActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to retrieve application info for the entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/4 v5, 0x0

    move-object v1, p2

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 260
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "iconImageView":Landroid/widget/ImageView;
    .restart local v4    # "pkgNameTextView":Landroid/widget/TextView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-static {v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->access$000(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->onBackdoorClicked()V

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 273
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0, p3}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, "appPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnTvDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 280
    .local v1, "launchAppIntent":Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;->this$0:Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-virtual {v3, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 278
    .end local v1    # "launchAppIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "launchAppIntent":Landroid/content/Intent;
    goto :goto_1
.end method
