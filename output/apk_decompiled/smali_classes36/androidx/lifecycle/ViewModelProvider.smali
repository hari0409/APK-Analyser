.class public Landroidx/lifecycle/ViewModelProvider;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;,
        Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;,
        Landroidx/lifecycle/ViewModelProvider$Factory;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "androidx.lifecycle.ViewModelProvider.DefaultKey"


# instance fields
.field private final mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field private final mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0
    .param p1, "store"    # Landroidx/lifecycle/ViewModelStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "factory"    # Landroidx/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Landroidx/lifecycle/ViewModelProvider;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 80
    iput-object p1, p0, Landroidx/lifecycle/ViewModelProvider;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1
    .param p1, "owner"    # Landroidx/lifecycle/ViewModelStoreOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "factory"    # Landroidx/lifecycle/ViewModelProvider$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 68
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "canonicalName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Landroidx/lifecycle/ViewModelProvider;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v3, p1}, Landroidx/lifecycle/ViewModelStore;->get(Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    .line 125
    .local v0, "viewModel":Landroidx/lifecycle/ViewModel;
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .end local v0    # "viewModel":Landroidx/lifecycle/ViewModel;
    .local v1, "viewModel":Landroidx/lifecycle/ViewModel;
    move-object v2, v0

    .line 138
    .end local v1    # "viewModel":Landroidx/lifecycle/ViewModel;
    .local v2, "viewModel":Landroidx/lifecycle/ViewModel;
    :goto_0
    return-object v2

    .line 130
    .end local v2    # "viewModel":Landroidx/lifecycle/ViewModel;
    .restart local v0    # "viewModel":Landroidx/lifecycle/ViewModel;
    :cond_0
    if-eqz v0, :cond_1

    .line 135
    :cond_1
    iget-object v3, p0, Landroidx/lifecycle/ViewModelProvider;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v3, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    .line 136
    iget-object v3, p0, Landroidx/lifecycle/ViewModelProvider;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v3, p1, v0}, Landroidx/lifecycle/ViewModelStore;->put(Ljava/lang/String;Landroidx/lifecycle/ViewModel;)V

    move-object v1, v0

    .end local v0    # "viewModel":Landroidx/lifecycle/ViewModel;
    .restart local v1    # "viewModel":Landroidx/lifecycle/ViewModel;
    move-object v2, v0

    .line 138
    .end local v1    # "viewModel":Landroidx/lifecycle/ViewModel;
    .restart local v2    # "viewModel":Landroidx/lifecycle/ViewModel;
    goto :goto_0
.end method
