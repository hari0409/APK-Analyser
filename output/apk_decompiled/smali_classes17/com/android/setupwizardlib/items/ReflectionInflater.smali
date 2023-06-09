.class public abstract Lcom/android/setupwizardlib/items/ReflectionInflater;
.super Lcom/android/setupwizardlib/items/SimpleInflater;
.source "ReflectionInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/setupwizardlib/items/SimpleInflater",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDefaultPackage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTempConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/setupwizardlib/items/ReflectionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/setupwizardlib/items/ReflectionInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    .local p0, "this":Lcom/android/setupwizardlib/items/ReflectionInflater;, "Lcom/android/setupwizardlib/items/ReflectionInflater<TT;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/items/SimpleInflater;-><init>(Landroid/content/res/Resources;)V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mTempConstructorArgs:[Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/android/setupwizardlib/items/ReflectionInflater;, "Lcom/android/setupwizardlib/items/ReflectionInflater<TT;>;"
    move-object v4, p1

    .line 87
    .local v4, "qualifiedName":Ljava/lang/String;
    if-eqz p2, :cond_0

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 88
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    :cond_0
    sget-object v5, Lcom/android/setupwizardlib/items/ReflectionInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 95
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    if-nez v1, :cond_1

    .line 98
    :try_start_0
    iget-object v5, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    sget-object v5, Lcom/android/setupwizardlib/items/ReflectionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 101
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 102
    sget-object v5, Lcom/android/setupwizardlib/items/ReflectionInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mTempConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    .line 106
    iget-object v5, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mTempConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object p3, v5, v6

    .line 107
    iget-object v5, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mTempConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 108
    .local v3, "item":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mTempConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 109
    iget-object v5, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mTempConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v3

    .line 111
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Error inflating class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/android/setupwizardlib/items/ReflectionInflater;, "Lcom/android/setupwizardlib/items/ReflectionInflater<TT;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/android/setupwizardlib/items/ReflectionInflater;, "Lcom/android/setupwizardlib/items/ReflectionInflater<TT;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mDefaultPackage:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/android/setupwizardlib/items/ReflectionInflater;, "Lcom/android/setupwizardlib/items/ReflectionInflater<TT;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/items/ReflectionInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    .local p0, "this":Lcom/android/setupwizardlib/items/ReflectionInflater;, "Lcom/android/setupwizardlib/items/ReflectionInflater<TT;>;"
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ReflectionInflater;->mDefaultPackage:Ljava/lang/String;

    .line 131
    return-void
.end method
