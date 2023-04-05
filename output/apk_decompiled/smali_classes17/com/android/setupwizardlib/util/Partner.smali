.class public Lcom/android/setupwizardlib/util/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    }
.end annotation


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

.field private static final TAG:Ljava/lang/String; = "(SUW) Partner"

.field private static sPartner:Lcom/android/setupwizardlib/util/Partner;

.field private static sSearched:Z


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    .line 188
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/setupwizardlib/util/Partner;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-class v8, Lcom/android/setupwizardlib/util/Partner;

    monitor-enter v8

    :try_start_0
    sget-boolean v7, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    if-nez v7, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 142
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "intent":Landroid/content/Intent;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v7, v9, :cond_3

    .line 145
    const/high16 v7, 0x1c0000

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 156
    .local v5, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 157
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_0

    .line 160
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 161
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 164
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v9, Lcom/android/setupwizardlib/util/Partner;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v6}, Lcom/android/setupwizardlib/util/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v9, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v7, 0x1

    :try_start_2
    sput-boolean v7, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    .line 173
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    sget-object v7, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return-object v7

    .line 153
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 166
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "(SUW) Partner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to find resources for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 140
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    .line 85
    .local v0, "resourceEntry":Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    .line 65
    .local v0, "entry":Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnyRes;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/setupwizardlib/util/Partner;->get(Landroid/content/Context;)Lcom/android/setupwizardlib/util/Partner;

    move-result-object v2

    .line 109
    .local v2, "partner":Lcom/android/setupwizardlib/util/Partner;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 111
    .local v1, "ourResources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v2, v0, v4}, Lcom/android/setupwizardlib/util/Partner;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 114
    .local v3, "partnerId":I
    if-eqz v3, :cond_0

    .line 115
    new-instance v5, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    iget-object v6, v2, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v3, v7}, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;-><init>(Landroid/content/res/Resources;IZ)V

    .line 118
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "ourResources":Landroid/content/res/Resources;
    .end local v3    # "partnerId":I
    .end local v4    # "type":Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, v7}, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;-><init>(Landroid/content/res/Resources;IZ)V

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    .line 76
    .local v0, "entry":Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/android/setupwizardlib/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/android/setupwizardlib/util/Partner$ResourceEntry;

    move-result-object v0

    .line 94
    .local v0, "entry":Lcom/android/setupwizardlib/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/android/setupwizardlib/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized resetForTesting()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    const-class v1, Lcom/android/setupwizardlib/util/Partner;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/setupwizardlib/util/Partner;->sSearched:Z

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/util/Partner;->sPartner:Lcom/android/setupwizardlib/util/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v1

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/setupwizardlib/util/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
