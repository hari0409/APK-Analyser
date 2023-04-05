.class Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;
.super Ljava/lang/Object;
.source "SingletonKeyedAppStatesReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

.field final synthetic val$immediate:Z

.field final synthetic val$states:Ljava/util/Collection;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "this$0"    # Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    .prologue
    .line 144
    iput-object p1, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    iput-object p2, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->val$states:Ljava/util/Collection;

    iput-boolean p3, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->val$states:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->unbindOldBindings()V

    .line 152
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->bind()V

    .line 154
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    iget-object v1, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->val$states:Ljava/util/Collection;

    invoke-static {v1}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->buildStatesBundle(Ljava/util/Collection;)Landroid/os/Bundle;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;->val$immediate:Z

    invoke-virtual {v0, v1, v2}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->send(Landroid/os/Bundle;Z)V

    goto :goto_0
.end method
