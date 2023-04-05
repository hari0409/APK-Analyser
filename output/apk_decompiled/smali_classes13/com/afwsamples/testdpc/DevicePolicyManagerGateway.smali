.class public interface abstract Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
.super Ljava/lang/Object;
.source "DevicePolicyManagerGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;,
        Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;,
        Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;
    }
.end annotation


# virtual methods
.method public abstract clearDeviceOwnerApp(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearProfileOwner(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createAndManageUser(Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer",
            "<",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enableSystemApp(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAdmin()Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAffiliationIds()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
.end method

.method public abstract getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDisabledSystemApps()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyguardDisabledFeatures()I
.end method

.method public abstract getLockTaskFeatures()I
.end method

.method public abstract getLockTaskPackages()[Ljava/lang/String;
.end method

.method public abstract getOrganizationName()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPasswordQuality()I
.end method

.method public abstract getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPersonalAppsSuspendedReasons()I
.end method

.method public abstract getRequiredPasswordComplexity()I
.end method

.method public abstract getSelfRestrictions()Landroid/os/Bundle;
.end method

.method public abstract getSerialNumber(Landroid/os/UserHandle;)J
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getUserControlDisabledPackages()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserHandle(J)Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getUserRestrictions()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasUserRestriction(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isAffiliatedUser()Z
.end method

.method public abstract isApplicationHidden(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract isDeviceOwnerApp()Z
.end method

.method public abstract isHeadlessSystemUserMode()Z
.end method

.method public abstract isLocationEnabled()Z
.end method

.method public abstract isLockTaskPermitted(Ljava/lang/String;)Z
.end method

.method public abstract isOrganizationOwnedDeviceWithManagedProfile()Z
.end method

.method public abstract isPackageSuspended(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract isPreferentialNetworkServiceEnabled()Z
.end method

.method public abstract isProfileOwnerApp()Z
.end method

.method public abstract isUserForeground()Z
.end method

.method public abstract listForegroundAffiliatedUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lockNow(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract lockNow(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reboot(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeActiveAdmin(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestBugreport(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAffiliationIds(Ljava/util/Set;)V
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApplicationHidden(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDeviceOwnerLockScreenInfo(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setKeyguardDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setKeyguardDisabledFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocationEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLockTaskFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLockTaskPackages([Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNetworkLogging(Z)V
.end method

.method public abstract setNetworkLogging(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOrganizationName(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPackagesSuspended([Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPasswordQuality(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPermittedInputMethods(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setPermittedInputMethods(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setPersonalAppsSuspended(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPreferentialNetworkServiceEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRequiredPasswordComplexity(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUsbDataSignalingEnabled(Z)V
.end method

.method public abstract setUsbDataSignalingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserControlDisabledPackages(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserIcon(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserRestriction(Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setUserRestriction(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract switchUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract transferOwnership(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method
