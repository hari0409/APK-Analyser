.class Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/enterprise/feedback/BufferedServiceConnection$1;->onBindingDied(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    .prologue
    .line 119
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;->this$1:Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    .line 123
    return-void
.end method
