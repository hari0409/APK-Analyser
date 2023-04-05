.class public abstract Lcom/afwsamples/testdpc/common/DumpableActivity;
.super Landroid/app/Activity;
.source "DumpableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p4}, Lcom/afwsamples/testdpc/common/Dumpable$$CC;->isQuietMode$$STATIC$$([Ljava/lang/String;)Z

    move-result v4

    .line 33
    .local v4, "quietMode":Z
    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v7

    .line 35
    .local v7, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    const-string v0, "*** Dumping Dumpable fragments only ***"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "prefix2":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 38
    .local v6, "fragment":Landroid/app/Fragment;
    instance-of v0, v6, Lcom/afwsamples/testdpc/common/Dumpable;

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "%s%s:\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    invoke-virtual {p3, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object v0, v6

    .line 40
    check-cast v0, Lcom/afwsamples/testdpc/common/Dumpable;

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/Dumpable;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v1    # "prefix2":Ljava/lang/String;
    .end local v6    # "fragment":Landroid/app/Fragment;
    .end local v7    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 47
    :cond_2
    return-void
.end method
