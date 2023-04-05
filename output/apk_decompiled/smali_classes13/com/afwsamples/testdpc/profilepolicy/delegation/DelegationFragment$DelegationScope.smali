.class Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
.super Ljava/lang/Object;
.source "DelegationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegationScope"
.end annotation


# instance fields
.field granted:Z

.field final scope:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    .line 204
    return-void
.end method

.method static defaultDelegationScopes(Z)Ljava/util/List;
    .locals 5
    .param p0, "showDoOnlyDelegations"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "defaultDelegations":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;>;"
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-cert-install"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-app-restrictions"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-block-uninstall"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-permission-grant"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-package-access"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-enable-system-app"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-cert-selection"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :try_start_0
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v4, "DELEGATION_SECURITY_LOGGING"

    .line 226
    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/common/ReflectionUtil;->stringConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    if-eqz p0, :cond_0

    .line 232
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v3, "delegation-network-logging"

    invoke-direct {v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    invoke-static {}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to read DevicePolicyManager.DELEGATION_SECURITY_LOGGING"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
