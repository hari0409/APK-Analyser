.class public Lcom/afwsamples/testdpc/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final IS_RUNNING_S:Z

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/afwsamples/testdpc/common/Util;->IS_RUNNING_S:Z

    .line 70
    sget-boolean v0, Lcom/afwsamples/testdpc/common/Util;->IS_RUNNING_S:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2710

    :goto_1
    sput v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0

    .line 70
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 332
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 334
    .local v1, "modifiers":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 335
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 336
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 337
    invoke-static {p1, v0}, Lcom/afwsamples/testdpc/common/Util;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 342
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :goto_1
    return-object v2

    .line 339
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v1    # "modifiers":I
    :catch_0
    move-exception v5

    .line 331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v3, "res":Ljava/lang/StringBuilder;
    if-nez p2, :cond_0

    const/4 v1, 0x1

    .line 304
    .local v1, "flagsWasZero":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v0, v6, v5

    .line 305
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    .line 306
    .local v2, "modifiers":I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 307
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 309
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 310
    .local v4, "value":I
    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 311
    invoke-static {p1, v0}, Lcom/afwsamples/testdpc/common/Util;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "modifiers":I
    .end local v4    # "value":I
    :goto_2
    return-object v5

    .end local v1    # "flagsWasZero":Z
    :cond_0
    move v1, v5

    .line 302
    goto :goto_0

    .line 313
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v1    # "flagsWasZero":Z
    .restart local v2    # "modifiers":I
    .restart local v4    # "value":I
    :cond_1
    if-eqz v4, :cond_2

    and-int v8, p2, v4

    if-ne v8, v4, :cond_2

    .line 314
    xor-int/lit8 v8, v4, -0x1

    and-int/2addr p2, v8

    .line 315
    invoke-static {p1, v0}, Lcom/afwsamples/testdpc/common/Util;->constNameWithoutPrefix(Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x7c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v4    # "value":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "modifiers":I
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 322
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 324
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 317
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "modifiers":I
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method public static formatTimestamp(J)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "timestampMs"    # J

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 169
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public static getHomeIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    return-object v0
.end method

.method public static getHomeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method public static getLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "launcherIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnTvDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :goto_0
    return-object v0

    .line 226
    :cond_0
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static grantStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "grantState"    # I

    .prologue
    .line 272
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "PERMISSION_GRANT_STATE_"

    invoke-static {v0, v1, p0}, Lcom/afwsamples/testdpc/common/Util;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delegation"    # Ljava/lang/String;

    .prologue
    .line 236
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 240
    :goto_0
    return v1

    .line 239
    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 240
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static installCaCertificate(Ljava/io/InputStream;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z
    .locals 7
    .param p0, "certificateInputStream"    # Ljava/io/InputStream;
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 188
    if-eqz p0, :cond_0

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v1, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 191
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 192
    .local v3, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 193
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v0    # "buffer":[B
    .end local v1    # "byteBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Util"

    const-string v6, "installCaCertificate: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return v4

    .line 196
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteBuffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 195
    invoke-virtual {p1, p2, v5}, Landroid/app/admin/DevicePolicyManager;->installCaCert(Landroid/content/ComponentName;[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method

.method public static isAtLeastS()Z
    .locals 2

    .prologue
    .line 260
    sget-boolean v0, Lcom/afwsamples/testdpc/common/Util;->IS_RUNNING_S:Z

    if-nez v0, :cond_0

    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceOwner(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 153
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isManagedProfileOwner(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 123
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_0
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isProfileOwner(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isPrimaryUser(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 140
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 141
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 142
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v1

    .line 146
    .end local v0    # "userManager":Landroid/os/UserManager;
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isProfileOwner(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 158
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/Util;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 159
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isRunningOnAutomotiveDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRunningOnTvDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 245
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static keyguardDisabledFeaturesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "which"    # I

    .prologue
    .line 276
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "KEYGUARD_DISABLE_"

    invoke-static {v0, v1, p0}, Lcom/afwsamples/testdpc/common/Util;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lockTaskFeaturesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 264
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "LOCK_TASK_FEATURE_"

    invoke-static {v0, v1, p0}, Lcom/afwsamples/testdpc/common/Util;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs onErrorLog(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    return-void
.end method

.method public static varargs onErrorLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method public static varargs onSuccessLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public static passwordQualityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "quality"    # I

    .prologue
    .line 280
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "PASSWORD_QUALITY_"

    invoke-static {v0, v1, p0}, Lcom/afwsamples/testdpc/common/Util;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static personalAppsSuspensionReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reasons"    # I

    .prologue
    .line 268
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "PERSONAL_APPS_"

    invoke-static {v0, v1, p0}, Lcom/afwsamples/testdpc/common/Util;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requireAndroidS()V
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires API level S, device\'s on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    return-void
.end method

.method public static requiredPasswordComplexityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "complexity"    # I

    .prologue
    .line 284
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "PASSWORD_COMPLEXITY_"

    invoke-static {v0, v1, p0}, Lcom/afwsamples/testdpc/common/Util;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showFileViewer(Landroidx/preference/PreferenceFragment;I)V
    .locals 4
    .param p0, "fragment"    # Landroidx/preference/PreferenceFragment;
    .param p1, "requestCode"    # I

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "certIntent":Landroid/content/Intent;
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    const-string v3, "showFileViewer: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 95
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v0, "bounds":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    const/4 v8, 0x0

    invoke-static {v2, v8, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 99
    .local v7, "streamWidth":I
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 100
    .local v6, "streamHeight":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v4

    .line 101
    .local v4, "maxDesiredWidth":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v3

    .line 102
    .local v3, "maxDesiredHeight":I
    div-int v8, v7, v4

    div-int v9, v6, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 103
    .local v5, "ratio":I
    if-le v5, v11, :cond_0

    .line 104
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 109
    const/4 v8, 0x0

    invoke-static {v2, v8, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "maxDesiredHeight":I
    .end local v4    # "maxDesiredWidth":I
    .end local v5    # "ratio":I
    .end local v6    # "streamHeight":I
    .end local v7    # "streamWidth":I
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/FileNotFoundException;
    const v8, 0x7f0f0151

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method
