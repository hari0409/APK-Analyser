.class Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$200(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$300(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;->onDecorViewInstalled(Landroid/view/View;)V

    .line 282
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$410(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)I

    .line 275
    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$400(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$600(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v2}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$500(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 279
    :cond_1
    const-string v1, "SystemBarHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get decor view of window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$0:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v3}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->access$200(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
