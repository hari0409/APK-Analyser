.class public Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;
.super Landroid/app/ListFragment;
.source "NetworkLogsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkLogsFragment"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    return-void
.end method

.method private determineBatchToken(Ljava/lang/String;)J
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 133
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "fileNameArr":[Ljava/lang/String;
    array-length v4, v3

    if-gt v4, v5, :cond_0

    .line 135
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing the batch from file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_0
    const/4 v4, 0x2

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 143
    .local v0, "batchToken":J
    return-wide v0

    .line 140
    .end local v0    # "batchToken":J
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing the batch from file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private fetchEvents()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->findLastBatch()Ljava/io/File;

    move-result-object v5

    .line 71
    .local v5, "logsFile":Ljava/io/File;
    if-nez v5, :cond_1

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 98
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    const/4 v6, 0x0

    .line 76
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->determineBatchToken(Ljava/lang/String;)J

    move-result-wide v0

    .line 77
    .local v0, "batchToken":J
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0210

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 77
    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 79
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 83
    const-string v8, "NetworkLogsFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 87
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v6, v7

    .end local v0    # "batchToken":J
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    move-object v2, v8

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x7f0f020f

    invoke-virtual {p0, v9}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v6, :cond_2

    .line 92
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 98
    :cond_2
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "batchToken":J
    .restart local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v7, :cond_0

    .line 92
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v8

    goto :goto_0

    .line 90
    .end local v0    # "batchToken":J
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    .line 91
    :goto_5
    if-eqz v6, :cond_4

    .line 92
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 96
    :cond_4
    :goto_6
    throw v8

    .line 87
    :catch_2
    move-exception v8

    :goto_7
    move-object v2, v8

    goto :goto_3

    .line 94
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_6

    .line 90
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "batchToken":J
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 87
    .end local v0    # "batchToken":J
    :catch_5
    move-exception v8

    goto :goto_2

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "batchToken":J
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method private findLastBatch()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "path":Ljava/io/File;
    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v2

    .line 118
    :cond_1
    sget-object v3, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$Lambda$0;->$instance:Ljava/io/FilenameFilter;

    .line 119
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 120
    .local v0, "networkLogsFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$Lambda$1;->$instance:Ljava/util/Comparator;

    .line 125
    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    goto :goto_0
.end method

.method static final synthetic lambda$findLastBatch$196$NetworkLogsFragment(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "network_logs_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final synthetic lambda$findLastBatch$197$NetworkLogsFragment(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p0, "f1"    # Ljava/io/File;
    .param p1, "f2"    # Ljava/io/File;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method private showEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 103
    const-string v1, "NetworkLogsFragment"

    const-string v2, "logs == null, are you polling too early?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f0f020f

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "NetworkLogsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming logs size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 109
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->fetchEvents()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->showEvents(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 55
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    const v3, 0x1020014

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mLogs:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 59
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method
