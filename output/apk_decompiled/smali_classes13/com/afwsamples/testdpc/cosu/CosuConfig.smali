.class Lcom/afwsamples/testdpc/cosu/CosuConfig;
.super Ljava/lang/Object;
.source "CosuConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;,
        Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_DOWNLOAD_LOCATION:Ljava/lang/String; = "download-location"

.field private static final ATTRIBUTE_MODE:Ljava/lang/String; = "mode"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final NEW_LINE:Ljava/lang/String;

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_COSU_CONFIG:Ljava/lang/String; = "cosu-config"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_KEYGUARD:Ljava/lang/String; = "disable-keyguard"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_DISABLE_STATUS_BAR:Ljava/lang/String; = "disable-status-bar"

.field private static final TAG_DOWNLOAD_APPS:Ljava/lang/String; = "download-apps"

.field private static final TAG_ENABLE_APPS:Ljava/lang/String; = "enable-apps"

.field private static final TAG_GLOBAL_SETTING:Ljava/lang/String; = "global-setting"

.field private static final TAG_HIDE_APPS:Ljava/lang/String; = "hide-apps"

.field private static final TAG_KIOSK_APPS:Ljava/lang/String; = "kiosk-apps"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_USER_RESTRICTION:Ljava/lang/String; = "user-restriction"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableCamera:Z

.field private mDisableKeyguard:Z

.field private mDisableScreenCapture:Z

.field private mDisableStatusBar:Z

.field private mDownloadApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEnableSystemApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mHideApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKioskApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Ljava/lang/String;

.field private mUserRestrictions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    .line 71
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    .line 72
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    .line 73
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    .line 75
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    .line 76
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    .line 77
    iput-boolean v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    .line 78
    iput-boolean v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    .line 79
    iput-boolean v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    .line 80
    iput-boolean v3, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    .line 86
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    .line 87
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    const-string v3, "download"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadManager:Landroid/app/DownloadManager;

    .line 89
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 90
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 92
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 96
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "name":Ljava/lang/String;
    const-string v2, "cosu-config"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const/4 v2, 0x0

    const-string v3, "mode"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw v2

    .line 99
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_1
    const-string v2, "policies"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readPolicies(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v2, "enable-apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "hide-apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string v2, "kiosk-apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V

    goto :goto_0

    .line 107
    :cond_5
    const-string v2, "download-apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->readDownloadApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 114
    return-void
.end method

.method public static createConfig(Landroid/content/Context;Ljava/io/InputStream;)Lcom/afwsamples/testdpc/cosu/CosuConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lcom/afwsamples/testdpc/cosu/CosuConfig;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "CosuSetup"

    const-string v2, "Exception during config creation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private disableKeyGuardAndStatusBar(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    invoke-virtual {p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    .line 172
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    invoke-virtual {p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    .line 173
    return-void
.end method

.method private dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 398
    .local v0, "obj":Ljava/lang/Object;
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 241
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "name":Ljava/lang/String;
    const-string v2, "app"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v2, 0x0

    const-string v3, "package-name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 245
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 250
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readDownloadApps(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "apps":Ljava/util/Set;, "Ljava/util/Set<Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;>;"
    const/4 v5, 0x0

    .line 257
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 262
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "name":Ljava/lang/String;
    const-string v3, "app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "package-name"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "download-location"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "downloadLocation":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 268
    new-instance v3, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    invoke-direct {v3, p0, v2, v0}, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;-><init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 273
    .end local v0    # "downloadLocation":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readPolicies(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 280
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 281
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "name":Ljava/lang/String;
    const-string v4, "user-restriction"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "userRestriction":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 289
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v2    # "userRestriction":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 291
    :cond_2
    const-string v4, "global-setting"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "setting":Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 295
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    new-instance v5, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;

    invoke-direct {v5, p0, v1, v3}, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;-><init>(Lcom/afwsamples/testdpc/cosu/CosuConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    .end local v1    # "setting":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, "disable-status-bar"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 298
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    goto :goto_1

    .line 300
    :cond_4
    const-string v4, "disable-keyguard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 301
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    goto :goto_1

    .line 303
    :cond_5
    const-string v4, "disable-camera"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 304
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    goto :goto_1

    .line 306
    :cond_6
    const-string v4, "disable-screen-capture"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    goto :goto_1

    .line 312
    .end local v0    # "name":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 320
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 322
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 324
    :cond_1
    return-void
.end method


# virtual methods
.method public applyPolicies(Landroid/content/ComponentName;)Z
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x1

    .line 126
    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 130
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->getKioskApps()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1, v6}, Landroid/app/admin/DevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, p1, v3, v5}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 131
    .end local v3    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "CosuSetup"

    const-string v6, "Exception when setting lock task packages"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/4 v5, 0x0

    .line 166
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    return v5

    .line 142
    :cond_0
    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    .restart local v3    # "pkg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, p1, v3}, Landroid/app/admin/DevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "CosuSetup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Operation is only allowed for system apps."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 152
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    .local v4, "userRestriction":Ljava/lang/String;
    invoke-virtual {v0, p1, v4}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_3

    .line 156
    .end local v4    # "userRestriction":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;

    .line 157
    .local v2, "globalSetting":Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;
    iget-object v7, v2, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->key:Ljava/lang/String;

    iget-object v8, v2, Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;->value:Ljava/lang/String;

    invoke-virtual {v0, p1, v7, v8}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 160
    .end local v2    # "globalSetting":Lcom/afwsamples/testdpc/cosu/CosuConfig$GlobalSetting;
    :cond_3
    sget v6, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_4

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->disableKeyGuardAndStatusBar(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)V

    .line 163
    :cond_4
    iget-boolean v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    invoke-virtual {v0, p1, v6}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 164
    iget-boolean v6, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    invoke-virtual {v0, p1, v6}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    goto :goto_1
.end method

.method public areAllInstallsFinished()Z
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 191
    .local v0, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-boolean v2, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    if-nez v2, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 195
    .end local v0    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getKioskApps()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public initiateDownloadAndInstall(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 177
    .local v0, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v3, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadLocation:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/afwsamples/testdpc/cosu/CosuUtils;->startDownload(Landroid/app/DownloadManager;Landroid/os/Handler;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadId:Ljava/lang/Long;

    goto :goto_0

    .line 179
    .end local v0    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :cond_0
    return-void
.end method

.method public onDownloadComplete(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 9
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    const/4 v8, 0x1

    .line 199
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 200
    .local v0, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-object v5, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadId:Ljava/lang/Long;

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    iput-boolean v8, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadCompleted:Z

    .line 205
    :try_start_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 206
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 207
    .local v2, "in":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->installPackage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    iget-object v4, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->downloadId:Ljava/lang/Long;

    .line 218
    .end local v0    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :goto_1
    return-object v4

    .line 208
    .restart local v0    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CosuSetup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error installing package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    iput-boolean v8, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    goto :goto_0

    .line 217
    .end local v0    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const-string v4, "CosuSetup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown download id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onInstallComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;

    .line 224
    .local v0, "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    iget-object v2, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;->installCompleted:Z

    .line 229
    .end local v0    # "ai":Lcom/afwsamples/testdpc/cosu/CosuConfig$DownloadAppInfo;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "Disable status bar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableStatusBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "Disable keyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableKeyguard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, "Disable screen capture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableScreenCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, "Disable camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDisableCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "User restrictions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mUserRestrictions:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 378
    const-string v1, "Global settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mGlobalSettings:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 381
    const-string v1, "Hide apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mHideApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 384
    const-string v1, "Enable system apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mEnableSystemApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 387
    const-string v1, "Kiosk apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mKioskApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 390
    const-string v1, "Download apps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/cosu/CosuConfig;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v1, p0, Lcom/afwsamples/testdpc/cosu/CosuConfig;->mDownloadApps:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/cosu/CosuConfig;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
