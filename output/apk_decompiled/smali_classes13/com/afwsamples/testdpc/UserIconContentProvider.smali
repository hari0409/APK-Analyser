.class public final Lcom/afwsamples/testdpc/UserIconContentProvider;
.super Landroid/content/ContentProvider;
.source "UserIconContentProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.afwsamples.testdpc.usericoncontentprovider"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ABSOLUTE_PATH:Ljava/lang/String; = "absolute_path"

.field private static final COLUMN_DIRECTORY:Ljava/lang/String; = "is_directory"

.field private static final COLUMN_METADATA:Ljava/lang/String; = "metadata"

.field private static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final MIME_MAP:Landroid/webkit/MimeTypeMap;

.field private static final TAG:Ljava/lang/String;

.field private static final USER_ICONS_DIR:Ljava/lang/String; = "UserIcons"


# instance fields
.field private final mFileTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-class v0, Lcom/afwsamples/testdpc/UserIconContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "absolute_path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_directory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "metadata"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    .line 68
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/UserIconContentProvider;->MIME_MAP:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    return-void
.end method

.method private getColumnValue(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "metadata"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "value":Ljava/lang/Object;
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 230
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    const-string v1, "absolute_path"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 232
    .local v0, "value":Ljava/lang/Object;
    :cond_2
    const-string v1, "is_directory"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 234
    .local v0, "value":Ljava/lang/Object;
    :cond_3
    const-string v1, "metadata"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    move-object v0, p3

    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 236
    .local v0, "value":Ljava/lang/Object;
    :cond_4
    const-string v1, "mime_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .local v0, "value":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .local v0, "value":Ljava/lang/Object;
    :cond_5
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 262
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "fullFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "baseFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    .local v1, "file":Ljava/io/File;
    sget-object v3, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFile("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v1
.end method

.method private getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "uriPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 280
    .local v0, "file":Ljava/io/File;
    sget-object v2, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFileForUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v0
.end method

.method private getRow([Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "metadata"    # Ljava/lang/String;

    .prologue
    .line 219
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 220
    .local v1, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 221
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2, p3}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getColumnValue(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-object v1
.end method

.method static getStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 273
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "UserIcons"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getType(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 244
    .local v1, "lastDot":I
    if-ltz v1, :cond_0

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "extension":Ljava/lang/String;
    sget-object v3, Lcom/afwsamples/testdpc/UserIconContentProvider;->MIME_MAP:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 252
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "application/octet-stream"

    goto :goto_0
.end method

.method static final synthetic lambda$sortFilesByAbsolutePath$94$UserIconContentProvider(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;

    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/high16 v0, 0x10000000

    .line 309
    .local v0, "modeBits":I
    :goto_0
    return v0

    .line 289
    .end local v0    # "modeBits":I
    :cond_0
    const-string v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    :cond_1
    const/high16 v0, 0x2c000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 294
    .end local v0    # "modeBits":I
    :cond_2
    const-string v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    const/high16 v0, 0x2a000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 299
    .end local v0    # "modeBits":I
    :cond_3
    const-string v1, "rw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    const/high16 v0, 0x38000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 301
    .end local v0    # "modeBits":I
    :cond_4
    const-string v1, "rwt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 302
    const/high16 v0, 0x3c000000    # 0.0078125f

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 307
    .end local v0    # "modeBits":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private recursiveDelete(Ljava/io/File;)I
    .locals 7
    .param p1, "rootDir"    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 319
    sget-object v4, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recursiveDelete(): rootDir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-nez p1, :cond_0

    move v2, v3

    .line 331
    :goto_0
    return v2

    .line 321
    :cond_0
    const/4 v2, 0x0

    .line 322
    .local v2, "count":I
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 324
    .local v1, "childFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 325
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 326
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/UserIconContentProvider;->recursiveDelete(Ljava/io/File;)I

    move-result v5

    add-int/2addr v2, v5

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 330
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "childFiles":[Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static sortFilesByAbsolutePath([Ljava/io/File;)V
    .locals 1
    .param p0, "files"    # [Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 335
    sget-object v0, Lcom/afwsamples/testdpc/UserIconContentProvider$$Lambda$0;->$instance:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 336
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    sget-object v2, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete(): uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/UserIconContentProvider;->recursiveDelete(Ljava/io/File;)I

    move-result v1

    .line 167
    .local v1, "num":I
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentValues"    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v0, ""

    .line 145
    .local v0, "extra":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 146
    .local v1, "file":Ljava/io/File;
    sget-object v3, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert(): uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    sget-object v3, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert - File from uri: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    .line 156
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 151
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 152
    sget-object v3, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert - File from uri: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' already exists, ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x8000000

    .line 192
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 193
    .local v2, "file":Ljava/io/File;
    invoke-static {p2}, Lcom/afwsamples/testdpc/UserIconContentProvider;->modeToMode(Ljava/lang/String;)I

    move-result v3

    .line 194
    .local v3, "fileMode":I
    sget-object v5, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openFile(): uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    and-int v5, v3, v8

    if-ne v5, v8, :cond_1

    .line 197
    sget-object v5, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 201
    .local v4, "parentFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 202
    sget-object v5, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating parents for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 204
    .local v0, "created":Z
    if-nez v0, :cond_0

    .line 205
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not created parent dirs for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    .end local v0    # "created":Z
    :cond_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 210
    iget-object v5, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v4    # "parentFile":Ljava/io/File;
    :cond_1
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 214
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Returning FD "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, "file":Ljava/io/File;
    sget-object v7, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v7, "/"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    iget-object v7, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 105
    .local v1, "cursor":Landroid/database/MatrixCursor;
    iget-object v6, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 106
    .local v5, "path":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Landroid/content/ContentValues;>;"
    sget-object v6, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v8, "metadata"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "metadata":Ljava/lang/String;
    sget-object v8, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v8, v6, v4}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getRow([Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "metadata":Ljava/lang/String;
    .end local v5    # "path":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Landroid/content/ContentValues;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 114
    sget-object v7, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query - File from uri: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 132
    :cond_1
    :goto_1
    return-object v1

    .line 118
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 120
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 121
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    sget-object v7, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v7, v2, v6}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getRow([Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 127
    .local v3, "files":[Ljava/io/File;
    invoke-static {v3}, Lcom/afwsamples/testdpc/UserIconContentProvider;->sortFilesByAbsolutePath([Ljava/io/File;)V

    .line 128
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    array-length v8, v3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 129
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_1

    aget-object v0, v3, v7

    .line 130
    .local v0, "child":Ljava/io/File;
    sget-object v9, Lcom/afwsamples/testdpc/UserIconContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v9, v0, v6}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getRow([Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    sget-object v2, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update - File from uri: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return v1

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 182
    sget-object v2, Lcom/afwsamples/testdpc/UserIconContentProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update - File from uri: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' isn\'t tracked yet, use insert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/UserIconContentProvider;->mFileTracker:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v1, 0x1

    goto :goto_0
.end method
