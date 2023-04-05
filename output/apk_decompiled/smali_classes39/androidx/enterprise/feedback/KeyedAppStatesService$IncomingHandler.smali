.class Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;
.super Landroid/os/Handler;
.source "KeyedAppStatesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/KeyedAppStatesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/KeyedAppStatesService;)V
    .locals 0
    .param p1, "keyedAppStatesService"    # Landroidx/enterprise/feedback/KeyedAppStatesService;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 97
    return-void
.end method

.method private static deduplicateStates(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "keyedAppStates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v0, "mappedStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    .line 175
    .local v1, "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    invoke-virtual {v1}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    .end local v1    # "state":Landroidx/enterprise/feedback/ReceivedKeyedAppState;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static extractReceivedKeyedAppStates(Landroid/os/Message;Ljava/lang/String;J)Ljava/util/Collection;
    .locals 8
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 148
    const-string v5, "KeyedAppStatesService"

    const-string v6, "Could not extract state bundles from message"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 168
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "KeyedAppStatesService"

    const-string v6, "Could not extract state bundles from message"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v5, "androidx.enterprise.feedback.APP_STATES"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 154
    .local v3, "stateBundles":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Bundle;>;"
    if-nez v3, :cond_1

    .line 155
    const-string v5, "KeyedAppStatesService"

    const-string v6, "Could not extract state bundles from message"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 159
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v4, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 161
    .local v2, "stateBundle":Landroid/os/Bundle;
    invoke-static {v2}, Landroidx/enterprise/feedback/KeyedAppState;->isValid(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    const-string v6, "KeyedAppStatesService"

    const-string v7, "Invalid KeyedAppState in bundle"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {v2, p1, p2, p3}, Landroidx/enterprise/feedback/ReceivedKeyedAppState;->fromBundle(Landroid/os/Bundle;Ljava/lang/String;J)Landroidx/enterprise/feedback/ReceivedKeyedAppState;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v2    # "stateBundle":Landroid/os/Bundle;
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    goto :goto_0
.end method

.method private handleStateMessage(Landroid/os/Message;Z)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "requestSync"    # Z

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 117
    .local v4, "timestamp":J
    iget-object v3, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 119
    invoke-virtual {v3}, Landroidx/enterprise/feedback/KeyedAppStatesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    .line 121
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p1, v1, v4, v5}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->extractReceivedKeyedAppStates(Landroid/os/Message;Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v2

    .line 125
    .local v2, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/ReceivedKeyedAppState;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;

    iget-object v3, p0, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->mKeyedAppStatesService:Landroidx/enterprise/feedback/KeyedAppStatesService;

    .line 131
    invoke-static {v2}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->deduplicateStates(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v0, v3, v6, p2}, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;-><init>(Landroidx/enterprise/feedback/KeyedAppStatesService;Ljava/util/Collection;Z)V

    .line 133
    .local v0, "asyncTask":Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->handleStateMessage(Landroid/os/Message;Z)V

    goto :goto_0

    .line 106
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;->handleStateMessage(Landroid/os/Message;Z)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
