.class public Landroidx/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 71
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Landroidx/lifecycle/LifecycleService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
