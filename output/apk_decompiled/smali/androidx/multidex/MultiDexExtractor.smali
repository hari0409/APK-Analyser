.class final Landroidx/multidex/MultiDexExtractor;
.super Ljava/lang/Object;
.source "MultiDexExtractor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final DEX_PREFIX:Ljava/lang/String; = "classes"

.field static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final EXTRACTED_NAME_EXT:Ljava/lang/String; = ".classes"

.field static final EXTRACTED_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final KEY_CRC:Ljava/lang/String; = "crc"

.field private static final KEY_DEX_CRC:Ljava/lang/String; = "dex.crc."

.field private static final KEY_DEX_NUMBER:Ljava/lang/String; = "dex.number"

.field private static final KEY_DEX_TIME:Ljava/lang/String; = "dex.time."

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final LOCK_FILENAME:Ljava/lang/String; = "MultiDex.lock"

.field private static final MAX_EXTRACT_ATTEMPTS:I = 0x3

.field private static final NO_VALUE:J = -0x1L

.field private static final PREFS_FILE:Ljava/lang/String; = "multidex.version"

.field private static final TAG:Ljava/lang/String; = "MultiDex"


# instance fields
.field private final cacheLock:Ljava/nio/channels/FileLock;

.field private final dexDir:Ljava/io/File;

.field private final lockChannel:Ljava/nio/channels/FileChannel;

.field private final lockRaf:Ljava/io/RandomAccessFile;

.field private final sourceApk:Ljava/io/File;

.field private final sourceCrc:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "sourceApk"    # Ljava/io/File;
    .param p2, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiDexExtractor("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    .line 97
    iput-object p2, p0, Landroidx/multidex/MultiDexExtractor;->dexDir:Ljava/io/File;

    .line 98
    invoke-static {p1}, Landroidx/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/multidex/MultiDexExtractor;->sourceCrc:J

    .line 99
    new-instance v1, Ljava/io/File;

    const-string v2, "MultiDex.lock"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v1, "lockFile":Ljava/io/File;
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/multidex/MultiDexExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    .line 102
    :try_start_0
    iget-object v2, p0, Landroidx/multidex/MultiDexExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Landroidx/multidex/MultiDexExtractor;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5

    .line 104
    :try_start_1
    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking on lock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Landroidx/multidex/MultiDexExtractor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Landroidx/multidex/MultiDexExtractor;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    :try_start_2
    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 106
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Landroidx/multidex/MultiDexExtractor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Landroidx/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    .line 111
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v2, p0, Landroidx/multidex/MultiDexExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Landroidx/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    throw v0

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    move-object v0, v2

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v0, v2

    goto :goto_0

    .line 111
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method private clearDexDir()V
    .locals 8

    .prologue
    .line 354
    iget-object v2, p0, Landroidx/multidex/MultiDexExtractor;->dexDir:Ljava/io/File;

    new-instance v3, Landroidx/multidex/MultiDexExtractor$1;

    invoke-direct {v3, p0}, Landroidx/multidex/MultiDexExtractor$1;-><init>(Landroidx/multidex/MultiDexExtractor;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 360
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 361
    const-string v2, "MultiDex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to list secondary dex dir content ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/multidex/MultiDexExtractor;->dexDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    return-void

    .line 364
    :cond_1
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 365
    .local v1, "oldFile":Ljava/io/File;
    const-string v4, "MultiDex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to delete old file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 366
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    const-string v4, "MultiDex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete old file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_2
    const-string v4, "MultiDex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted old file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 422
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MultiDex"

    const-string v2, "Failed to close resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p0, "apk"    # Ljava/util/zip/ZipFile;
    .param p1, "dexFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "extractedFilePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 379
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 381
    .local v4, "out":Ljava/util/zip/ZipOutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tmp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".zip"

    .line 382
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 381
    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 383
    .local v6, "tmp":Ljava/io/File;
    const-string v7, "MultiDex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extracting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 387
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .local v5, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v7, "classes.dex"

    invoke-direct {v1, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "classesDex":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 390
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 392
    const/16 v7, 0x4000

    new-array v0, v7, [B

    .line 393
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 394
    .local v3, "length":I
    :goto_0
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 395
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 396
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 400
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 402
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    move-result v7

    if-nez v7, :cond_1

    .line 403
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to mark readonly \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" (tmp of \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 404
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    .end local v0    # "buffer":[B
    .end local v1    # "classesDex":Ljava/util/zip/ZipEntry;
    .end local v3    # "length":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_1
    invoke-static {v2}, Landroidx/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 413
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v7

    .line 400
    .end local v4    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v7

    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v7

    .line 406
    .restart local v0    # "buffer":[B
    .restart local v1    # "classesDex":Ljava/util/zip/ZipEntry;
    .restart local v3    # "length":I
    :cond_1
    const-string v7, "MultiDex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Renaming to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v6, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 408
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to rename \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 409
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :cond_2
    invoke-static {v2}, Landroidx/multidex/MultiDexExtractor;->closeQuietly(Ljava/io/Closeable;)V

    .line 413
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 415
    return-void

    .line 412
    .end local v0    # "buffer":[B
    .end local v1    # "classesDex":Ljava/util/zip/ZipEntry;
    .end local v3    # "length":I
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v7

    goto :goto_1
.end method

.method private static getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    const-string v1, "multidex.version"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static getTimeStamp(Ljava/io/File;)J
    .locals 4
    .param p0, "archive"    # Ljava/io/File;

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 225
    .local v0, "timeStamp":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 227
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 229
    :cond_0
    return-wide v0
.end method

.method private static getZipCrc(Ljava/io/File;)J
    .locals 4
    .param p0, "archive"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p0}, Landroidx/multidex/ZipUtil;->getZipCrc(Ljava/io/File;)J

    move-result-wide v0

    .line 235
    .local v0, "computedValue":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 237
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 239
    :cond_0
    return-wide v0
.end method

.method private static isModified(Landroid/content/Context;Ljava/io/File;JLjava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "currentCrc"    # J
    .param p4, "prefsKeyPrefix"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 218
    invoke-static {p0}, Landroidx/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p1}, Landroidx/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "crc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadExistingExtractions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefsKeyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/multidex/MultiDexExtractor$ExtractedDex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v17, "MultiDex"

    const-string v18, "loading existing secondary dex files"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".classes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "extractedFilePrefix":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroidx/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 180
    .local v14, "multiDexPreferences":Landroid/content/SharedPreferences;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dex.number"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 181
    .local v16, "totalDexNumber":I
    new-instance v11, Ljava/util/ArrayList;

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v11, "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    const/4 v15, 0x2

    .local v15, "secondaryNumber":I
    :goto_0
    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 184
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".zip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, "fileName":Ljava/lang/String;
    new-instance v8, Landroidx/multidex/MultiDexExtractor$ExtractedDex;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/multidex/MultiDexExtractor;->dexDir:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0, v10}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v8, "extractedFile":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    invoke-virtual {v8}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->isFile()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 187
    invoke-static {v8}, Landroidx/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v8, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    .line 188
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dex.crc."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 190
    .local v4, "expectedCrc":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "dex.time."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 192
    .local v6, "expectedModTime":J
    invoke-virtual {v8}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->lastModified()J

    move-result-wide v12

    .line 193
    .local v12, "lastModified":J
    cmp-long v17, v6, v12

    if-nez v17, :cond_0

    iget-wide v0, v8, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    move-wide/from16 v18, v0

    cmp-long v17, v4, v18

    if-eqz v17, :cond_1

    .line 195
    :cond_0
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid extracted dex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (key \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\"), expected modification time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", modification time: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", expected crc: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", file crc: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v8, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 201
    :cond_1
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 203
    .end local v4    # "expectedCrc":J
    .end local v6    # "expectedModTime":J
    .end local v12    # "lastModified":J
    :cond_2
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing extracted secondary dex file \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 204
    invoke-virtual {v8}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 208
    .end local v8    # "extractedFile":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    .end local v10    # "fileName":Ljava/lang/String;
    :cond_3
    return-object v11
.end method

.method private performExtractions()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/multidex/MultiDexExtractor$ExtractedDex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".classes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "extractedFilePrefix":Ljava/lang/String;
    invoke-direct {p0}, Landroidx/multidex/MultiDexExtractor;->clearDexDir()V

    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v10, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 256
    .local v0, "apk":Ljava/util/zip/ZipFile;
    const/4 v9, 0x2

    .line 258
    .local v9, "secondaryNumber":I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "classes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 259
    .local v1, "dexFile":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v1, :cond_4

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "fileName":Ljava/lang/String;
    new-instance v3, Landroidx/multidex/MultiDexExtractor$ExtractedDex;

    iget-object v10, p0, Landroidx/multidex/MultiDexExtractor;->dexDir:Ljava/io/File;

    invoke-direct {v3, v10, v5}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v3, "extractedFile":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v10, "MultiDex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extraction is needed for file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v8, 0x0

    .line 266
    .local v8, "numAttempts":I
    const/4 v7, 0x0

    .line 267
    .local v7, "isExtractionSuccessful":Z
    :cond_0
    :goto_1
    const/4 v10, 0x3

    if-ge v8, v10, :cond_2

    if-nez v7, :cond_2

    .line 268
    add-int/lit8 v8, v8, 0x1

    .line 272
    invoke-static {v0, v1, v3, v4}, Landroidx/multidex/MultiDexExtractor;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :try_start_1
    invoke-static {v3}, Landroidx/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v10

    iput-wide v10, v3, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->crc:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    const/4 v7, 0x1

    .line 284
    :goto_2
    :try_start_2
    const-string v11, "MultiDex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extraction "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v7, :cond_1

    const-string v10, "succeeded"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " \'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 285
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\': length "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 286
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " - crc: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v3, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 284
    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-nez v7, :cond_0

    .line 289
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->delete()Z

    .line 290
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 291
    const-string v10, "MultiDex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete corrupted secondary dex \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 292
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 291
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 305
    .end local v1    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v3    # "extractedFile":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "isExtractionSuccessful":Z
    .end local v8    # "numAttempts":I
    :catchall_0
    move-exception v10

    .line 306
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 309
    :goto_4
    throw v10

    .line 278
    .restart local v1    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v3    # "extractedFile":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "isExtractionSuccessful":Z
    .restart local v8    # "numAttempts":I
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    .line 280
    :try_start_4
    const-string v10, "MultiDex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read crc from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const-string v10, "failed"

    goto/16 :goto_3

    .line 296
    :cond_2
    if-nez v7, :cond_3

    .line 297
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create zip file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 298
    invoke-virtual {v3}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for secondary dex ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 301
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 302
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "classes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".dex"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 303
    goto/16 :goto_0

    .line 306
    .end local v3    # "extractedFile":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "isExtractionSuccessful":Z
    .end local v8    # "numAttempts":I
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 312
    :goto_5
    return-object v6

    .line 307
    :catch_1
    move-exception v2

    .line 308
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "MultiDex"

    const-string v11, "Failed to close resource"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 307
    .end local v1    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 308
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "MultiDex"

    const-string v12, "Failed to close resource"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private static putStoredApkInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "crc"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Landroidx/multidex/MultiDexExtractor$ExtractedDex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p6, "extractedDexes":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    invoke-static {p0}, Landroidx/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 322
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 323
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "crc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dex.number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    const/4 v2, 0x2

    .line 328
    .local v2, "extractedDexId":I
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/multidex/MultiDexExtractor$ExtractedDex;

    .line 329
    .local v0, "dex":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dex.crc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->crc:J

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dex.time."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/multidex/MultiDexExtractor$ExtractedDex;->lastModified()J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 332
    goto :goto_0

    .line 336
    .end local v0    # "dex":Landroidx/multidex/MultiDexExtractor$ExtractedDex;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 164
    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 165
    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 166
    return-void
.end method

.method load(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefsKeyPrefix"    # Ljava/lang/String;
    .param p3, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "MultiDex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiDexExtractor.load("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->cacheLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MultiDexExtractor was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    iget-wide v2, p0, Landroidx/multidex/MultiDexExtractor;->sourceCrc:J

    invoke-static {p1, v0, v2, v3, p2}, Landroidx/multidex/MultiDexExtractor;->isModified(Landroid/content/Context;Ljava/io/File;JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/multidex/MultiDexExtractor;->loadExistingExtractions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 157
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    :goto_0
    const-string v0, "MultiDex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secondary dex files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v6

    .line 139
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    :catch_0
    move-exception v7

    .line 140
    .local v7, "ioe":Ljava/io/IOException;
    const-string v0, "MultiDex"

    const-string v1, "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-direct {p0}, Landroidx/multidex/MultiDexExtractor;->performExtractions()Ljava/util/List;

    move-result-object v6

    .line 143
    .restart local v6    # "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    invoke-static {v0}, Landroidx/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/multidex/MultiDexExtractor;->sourceCrc:J

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroidx/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V

    goto :goto_0

    .line 147
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_1
    if-eqz p3, :cond_2

    .line 148
    const-string v0, "MultiDex"

    const-string v1, "Forced extraction must be performed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_1
    invoke-direct {p0}, Landroidx/multidex/MultiDexExtractor;->performExtractions()Ljava/util/List;

    move-result-object v6

    .line 153
    .restart local v6    # "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    iget-object v0, p0, Landroidx/multidex/MultiDexExtractor;->sourceApk:Ljava/io/File;

    invoke-static {v0}, Landroidx/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/multidex/MultiDexExtractor;->sourceCrc:J

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroidx/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/util/List;)V

    goto :goto_0

    .line 150
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Landroidx/multidex/MultiDexExtractor$ExtractedDex;>;"
    :cond_2
    const-string v0, "MultiDex"

    const-string v1, "Detected that extraction must be performed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
