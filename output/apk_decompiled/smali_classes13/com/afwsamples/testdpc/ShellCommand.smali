.class final Lcom/afwsamples/testdpc/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TestDPCShellCommand"


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field private final mWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "writer"    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 67
    iput-object p3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 70
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private clearDeviceOwner()V
    .locals 4

    .prologue
    .line 608
    const-string v1, "TestDPCShellCommand"

    const-string v2, "clearDeviceOwner()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$94;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$94;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$95;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$95;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->clearDeviceOwnerApp(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 614
    return-void
.end method

.method private clearDeviceOwnerLockScreenInfo()V
    .locals 1

    .prologue
    .line 890
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->setDeviceOwnerLockScreenInfo(Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method private clearOrganizationName()V
    .locals 1

    .prologue
    .line 563
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->setOrganizationName(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private clearProfileOwner()V
    .locals 4

    .prologue
    .line 617
    const-string v1, "TestDPCShellCommand"

    const-string v2, "clearProfileOwner()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$96;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$96;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$97;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$97;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->clearProfileOwner(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 623
    return-void
.end method

.method private createUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 438
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUser(): name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$61;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$61;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$62;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$62;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->createAndManageUser(Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 444
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 425
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "isDeviceOwner: %b\n"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isDeviceOwnerApp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 426
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "isProfileOwner: %b\n"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isProfileOwnerApp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 427
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "isOrganizationOwnedDeviceWithManagedProfile: %b\n"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 429
    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    .line 427
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 430
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "isHeadlessSystemUserMode: %b\n"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 432
    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isHeadlessSystemUserMode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    .line 431
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 433
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "isUserForeground: %b\n"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isUserForeground()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 435
    :cond_0
    return-void
.end method

.method private enableSystemApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 767
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSystemApp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$113;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$113;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$114;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$114;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 772
    return-void
.end method

.method private getAffiliationIds()V
    .locals 6

    .prologue
    .line 489
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAffiliationIds()Ljava/util/Set;

    move-result-object v0

    .line 490
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "no affiliation ids"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "%d affiliation ids: %s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method private getAppRestrictions([Ljava/lang/String;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 832
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 833
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 834
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManager"

    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 836
    invoke-interface {v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getSelfRestrictions()Landroid/os/Bundle;

    move-result-object v4

    .line 833
    invoke-direct {p0, v2, v3, v4}, Lcom/afwsamples/testdpc/ShellCommand;->printAppRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 844
    :cond_0
    return-void

    .line 840
    :cond_1
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 841
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v4, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 842
    .local v1, "settings":Landroid/os/Bundle;
    const-string v4, "DevicePolicyManager"

    invoke-direct {p0, v0, v4, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printAppRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDeviceOwnerLockScreenInfo()V
    .locals 5

    .prologue
    .line 901
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0

    .line 902
    .local v0, "info":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "Lock screen info: %s\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 903
    return-void
.end method

.method private getKeyguardDisabledFeatures()V
    .locals 7

    .prologue
    .line 923
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v1

    .line 924
    .local v1, "flags":I
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->keyguardDisabledFeaturesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "features":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "%s (%d)\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 927
    return-void
.end method

.method private getLockTaskFeatures()V
    .locals 7

    .prologue
    .line 813
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLockTaskFeatures()I

    move-result v1

    .line 814
    .local v1, "flags":I
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->lockTaskFeaturesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "features":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "%s (%d)\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 817
    return-void
.end method

.method private getLockTaskPackages()V
    .locals 3

    .prologue
    .line 794
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLockTaskPackages()[Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "packages":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "no lock task packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOrderedSortedSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getOrganizationName()V
    .locals 3

    .prologue
    .line 575
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 576
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 577
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "Not set"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getPasswordQuality()V
    .locals 6

    .prologue
    .line 659
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v0

    .line 661
    .local v0, "quality":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "%s (%d)\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->passwordQualityToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 662
    return-void
.end method

.method private getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, p1, p2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 873
    .local v0, "grantState":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "%s state for %s: %s\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    .line 874
    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->grantStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 873
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 875
    return-void
.end method

.method private getPersonalAppsSuspendedReasons()V
    .locals 7

    .prologue
    .line 760
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPersonalAppsSuspendedReasons()I

    move-result v1

    .line 761
    .local v1, "reasons":I
    invoke-static {v1}, Lcom/afwsamples/testdpc/common/Util;->personalAppsSuspensionReasonToString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "printableReasons":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "%s (%d)\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 764
    return-void
.end method

.method private getRequiredPasswordComplexity()V
    .locals 6

    .prologue
    .line 676
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getRequiredPasswordComplexity()I

    move-result v0

    .line 678
    .local v0, "complexity":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "%s (%d)\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->requiredPasswordComplexityToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 679
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 678
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 680
    return-void
.end method

.method private getUserControlDisabledPackages()V
    .locals 2

    .prologue
    .line 594
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserControlDisabledPackages()Ljava/util/List;

    move-result-object v0

    .line 595
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$91;->get$Lambda(Ljava/io/PrintWriter;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 596
    return-void
.end method

.method private static hiddenToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "hidden"    # Z

    .prologue
    .line 78
    if-eqz p0, :cond_0

    const-string v0, "HIDDEN"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "VISIBLE"

    goto :goto_0
.end method

.method private isForegroundUser()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isUserForeground()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 647
    return-void
.end method

.method private isHiddenPackage(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isApplicationHidden(Ljava/lang/String;)Z

    move-result v1

    .line 742
    .local v1, "hidden":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "%s: %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Lcom/afwsamples/testdpc/ShellCommand;->hiddenToString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v1    # "hidden":Z
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "Invalid package name: %s\n"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method private isLocationEnabled()V
    .locals 6

    .prologue
    .line 885
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLocationEnabled()Z

    move-result v0

    .line 886
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "Location enabled: %b\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 887
    return-void
.end method

.method private isLockTaskPermitted([Ljava/lang/String;)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 930
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    .line 931
    .local v0, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v5, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v1

    .line 932
    .local v1, "permitted":Z
    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v6, "%s: %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    const/4 v8, 0x1

    invoke-static {v1}, Lcom/afwsamples/testdpc/ShellCommand;->permittedToString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 934
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "permitted":Z
    :cond_0
    return-void
.end method

.method private isSuspendedPackage([Ljava/lang/String;)V
    .locals 12
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 718
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, p1, v3

    .line 720
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v6, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v2

    .line 721
    .local v2, "suspended":Z
    iget-object v6, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v7, "%s: %s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Lcom/afwsamples/testdpc/ShellCommand;->suspendedToString(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v2    # "suspended":Z
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v7, "Invalid package name: %s\n"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 726
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isUserAffiliated()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isAffiliatedUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 507
    return-void
.end method

.method static final synthetic lambda$run$23$ShellCommand(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "parts":[Ljava/lang/String;
    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    :goto_0
    array-length v2, v0

    if-le v2, v4, :cond_1

    aget-object v2, v0, v4

    :goto_1
    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/ShellCommand$1;)V

    invoke-virtual {p1, v3}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    .line 126
    .end local v0    # "parts":[Ljava/lang/String;
    :goto_2
    return-object v1

    .line 122
    .restart local v0    # "parts":[Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 126
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_2
    const-string v1, "Key-value type must contain \'=\' separator, found only: \'%s\'."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 127
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    goto :goto_2
.end method

.method private listDisabledSystemApps()V
    .locals 4

    .prologue
    .line 775
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDisabledSystemApps()Ljava/util/List;

    move-result-object v0

    .line 777
    .local v0, "disabledSystemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listDisabledSystemApps(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v1, "disabled system app"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 780
    return-void
.end method

.method private listForegroundUsers()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 635
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v1

    .line 636
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 641
    .local v0, "size":I
    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v4, "%d user%s:\n"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    if-le v0, v7, :cond_1

    const-string v2, "s"

    :goto_1
    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 642
    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$98;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$98;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 641
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private listUserRestrictions()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "TestDPCShellCommand"

    const-string v1, "listUserRestrictions()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "user restriction"

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserRestrictions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 513
    return-void
.end method

.method private lockNow(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "flags"    # Ljava/lang/Integer;

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 526
    const-string v0, "TestDPCShellCommand"

    const-string v1, "lockNow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$75;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$75;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$76;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$76;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 534
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockNow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 532
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$77;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$77;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$78;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$78;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 531
    invoke-interface {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method private varargs onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pattern"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 943
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "%s: %s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 946
    return-void
.end method

.method private varargs onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 937
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method private static permittedToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "permitted"    # Z

    .prologue
    .line 82
    if-eqz p0, :cond_0

    const-string v0, "PERMITTED"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NOT PERMITTED"

    goto :goto_0
.end method

.method private printAppRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 847
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    :cond_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v5, "No app restrictions (from %s) for %s\n"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p2, v6, v9

    aput-object p1, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 858
    :cond_1
    return-void

    .line 851
    :cond_2
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 852
    .local v2, "size":I
    if-le v2, v8, :cond_3

    const-string v1, "s"

    .line 853
    .local v1, "pluralSuffix":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v5, "%d app restriction%s%s for %s\n"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v1, v6, v8

    aput-object p2, v6, v10

    const/4 v7, 0x3

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 854
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 856
    .local v3, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v6, "  %s = %s\n"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 852
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "pluralSuffix":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method private printCollection(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p1, "nameOnSingular"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 949
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "No %ss\n"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 956
    :goto_0
    return-void

    .line 953
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 954
    .local v0, "size":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "%d %s%s:\n"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    aput-object p1, v4, v6

    const/4 v5, 0x2

    if-ne v0, v6, :cond_1

    const-string v1, ""

    :goto_1
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 955
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$131;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$131;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 954
    :cond_1
    const-string v1, "s"

    goto :goto_1
.end method

.method private reboot()V
    .locals 3

    .prologue
    .line 537
    const-string v0, "TestDPCShellCommand"

    const-string v1, "reboot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$79;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$79;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$80;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$80;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->reboot(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 540
    return-void
.end method

.method private removeActiveAdmin()V
    .locals 4

    .prologue
    .line 599
    const-string v1, "TestDPCShellCommand"

    const-string v2, "removeActiveAdmin()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    .line 602
    .local v0, "admin":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$92;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$92;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeActiveAdmin(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 605
    return-void
.end method

.method private removeUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$65;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$65;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$66;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$66;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 465
    return-void
.end method

.method private requestBugreport()V
    .locals 3

    .prologue
    .line 549
    const-string v0, "TestDPCShellCommand"

    const-string v1, "requestBugreport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$83;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$83;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$84;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$84;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->requestBugreport(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 552
    return-void
.end method

.method private setAffiliationIds([Ljava/lang/String;)V
    .locals 4
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getOrderedSortedSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 499
    .local v0, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAffiliationIds(): ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setAffiliationIds(Ljava/util/Set;)V

    .line 502
    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getAffiliationIds()V

    .line 503
    return-void
.end method

.method private setAppRestrictions(Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # [Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    .prologue
    .line 820
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 821
    .local v1, "settings":Landroid/os/Bundle;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 822
    .local v0, "restriction":Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    invoke-static {v0}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->access$000(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->access$100(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    .end local v0    # "restriction":Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$119;

    invoke-direct {v3, p0, v1, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$119;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$120;

    invoke-direct {v4, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$120;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 829
    return-void
.end method

.method private setDeviceOwnerLockScreenInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$125;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$125;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$126;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$126;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setDeviceOwnerLockScreenInfo(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 898
    return-void
.end method

.method private setHiddenPackage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z

    .prologue
    .line 729
    invoke-static {p2}, Lcom/afwsamples/testdpc/ShellCommand;->hiddenToString(Z)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "printableStatus":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHiddenPackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;

    invoke-direct {v2, p0, p1, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$110;

    invoke-direct {v3, p0, p1, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$110;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setApplicationHidden(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 737
    return-void
.end method

.method private setKeyguardDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .prologue
    .line 906
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$127;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$127;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$128;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$128;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 910
    return-void
.end method

.method private setKeyguardDisabledFeatures(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 913
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->keyguardDisabledFeaturesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "features":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardDisabledFeatures("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$129;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$129;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$130;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$130;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabledFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 920
    return-void
.end method

.method private setLocationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 878
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$123;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$123;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$124;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$124;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLocationEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 882
    return-void
.end method

.method private setLockTaskFeatures(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 803
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->lockTaskFeaturesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "features":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskFeatures("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$117;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$117;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$118;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$118;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 810
    return-void
.end method

.method private setLockTaskPackages([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 783
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "printableNames":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskPackages(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$115;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$115;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$116;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$116;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskPackages([Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 791
    return-void
.end method

.method private setNetworkLogging(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 555
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkLogging("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$85;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$85;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$86;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$86;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setNetworkLogging(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 560
    return-void
.end method

.method private setOrganizationName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 567
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrganizationName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$87;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$87;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$88;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$88;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setOrganizationName(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 572
    return-void
.end method

.method private setPasswordQuality(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 650
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->passwordQualityToString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "qualityString":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordQuality("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$99;

    invoke-direct {v2, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$99;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$100;

    invoke-direct {v3, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$100;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPasswordQuality(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 656
    return-void
.end method

.method private setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantState"    # I

    .prologue
    .line 861
    invoke-static {p3}, Lcom/afwsamples/testdpc/common/Util;->grantStateToString(I)Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, "grantName":Ljava/lang/String;
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$121;

    invoke-direct {v4, p0, p2, p1, v6}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$121;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$122;

    invoke-direct {v5, p0, p1, p2, v6}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$122;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 869
    return-void
.end method

.method private setPermittedInputMethodsOnParent([Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMethod"    # [Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 627
    .local v0, "inputMethodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "TestDPCShellCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPermittedInputMethodsOnParent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 630
    invoke-static {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v1

    .line 631
    .local v1, "parentDpmGateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermittedInputMethods(Ljava/util/List;)Z

    .line 632
    return-void
.end method

.method private setPersonalAppsSuspended(Z)V
    .locals 4
    .param p1, "suspended"    # Z

    .prologue
    .line 749
    invoke-static {p1}, Lcom/afwsamples/testdpc/ShellCommand;->suspendedToString(Z)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "printableStatus":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPersonalAppsSuspended(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$111;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$111;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$112;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$112;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPersonalAppsSuspended(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 757
    return-void
.end method

.method private setRequiredPasswordComplexity(I)V
    .locals 4
    .param p1, "complexity"    # I

    .prologue
    .line 665
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->requiredPasswordComplexityToString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "complexityString":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequiredPasswordComplexity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;

    invoke-direct {v2, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$102;

    invoke-direct {v3, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$102;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setRequiredPasswordComplexity(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 673
    return-void
.end method

.method private setSuspendedPackages(Z[Ljava/lang/String;)V
    .locals 5
    .param p1, "suspended"    # Z
    .param p2, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 703
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "printableNames":Ljava/lang/String;
    invoke-static {p1}, Lcom/afwsamples/testdpc/ShellCommand;->suspendedToString(Z)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "printableStatus":Ljava/lang/String;
    const-string v2, "TestDPCShellCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSuspendedPackages("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$107;

    invoke-direct {v3, p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$107;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$108;

    invoke-direct {v4, p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$108;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p2, p1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPackagesSuspended([Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 715
    return-void
.end method

.method private setUsbDataSignalingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 695
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbDataSignalingEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$105;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$105;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$106;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$106;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUsbDataSignalingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 700
    return-void
.end method

.method private setUserControlDisabledPackages([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 584
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 585
    .local v0, "packagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserControlDisabledPackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$89;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$89;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$90;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$90;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserControlDisabledPackages(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 591
    return-void
.end method

.method private setUserIcon(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "absolutePath":Ljava/lang/String;
    const-string v2, "TestDPCShellCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserIcon(): path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 450
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 451
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "Could not create bitmap from file %s\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 458
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$63;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$63;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$64;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$64;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserIcon(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method private setUserRestriction(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 516
    const-string v0, "TestDPCShellCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserRestriction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$73;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$73;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 522
    return-void
.end method

.method private startUserInBackground(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$69;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$69;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$70;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$70;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 479
    return-void
.end method

.method private stopUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$71;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$71;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$72;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$72;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->stopUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 486
    return-void
.end method

.method private static suspendedToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "suspended"    # Z

    .prologue
    .line 74
    if-eqz p0, :cond_0

    const-string v0, "SUSPENDED"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NOT SUSPENDED"

    goto :goto_0
.end method

.method private switchUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$68;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$68;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->switchUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 472
    return-void
.end method

.method private toString(Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getSerialNumber(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transferOwnership(Ljava/lang/String;)V
    .locals 5
    .param p1, "flatTarget"    # Ljava/lang/String;

    .prologue
    .line 683
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 685
    .local v0, "target":Landroid/content/ComponentName;
    const-string v1, "TestDPCShellCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferOwnership("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    const/4 v2, 0x0

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$103;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$103;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$104;

    invoke-direct {v4, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$104;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->transferOwnership(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 692
    return-void
.end method

.method private wipeData(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 543
    const-string v0, "TestDPCShellCommand"

    const-string v1, "wipeData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$81;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$81;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$82;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$82;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 546
    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->dumpState()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$ShellCommand(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->createUser(Ljava/lang/String;I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$10$ShellCommand(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setUserRestriction(Ljava/lang/String;Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$11$ShellCommand(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lockNow(Ljava/lang/Integer;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$12$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->reboot()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$13$ShellCommand(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->wipeData(I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$14$ShellCommand(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setNetworkLogging(Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$15$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearOrganizationName()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$16$ShellCommand(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setOrganizationName(Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$17$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getOrganizationName()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$18$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setUserControlDisabledPackages([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$19$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getUserControlDisabledPackages()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$2$ShellCommand(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setUserIcon(Ljava/io/File;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$20$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->removeActiveAdmin()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$21$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearDeviceOwner()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$22$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearProfileOwner()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$23$ShellCommand(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPasswordQuality(I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$24$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getPasswordQuality()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$25$ShellCommand(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setRequiredPasswordComplexity(I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$26$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getRequiredPasswordComplexity()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$27$ShellCommand(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->transferOwnership(Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$28$ShellCommand(Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setSuspendedPackages(Z[Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$29$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isSuspendedPackage([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$3$ShellCommand(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->removeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$30$ShellCommand(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPersonalAppsSuspended(Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$31$ShellCommand(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->enableSystemApp(Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$32$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->listDisabledSystemApps()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$33$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getPersonalAppsSuspendedReasons()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$34$ShellCommand(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setHiddenPackage(Ljava/lang/String;Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$35$ShellCommand(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isHiddenPackage(Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$36$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLockTaskPackages([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$37$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLockTaskPackages()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$38$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isLockTaskPermitted([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$39$ShellCommand(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLockTaskFeatures(I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$4$ShellCommand(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->switchUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$40$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLockTaskFeatures()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$41$ShellCommand(Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setAppRestrictions(Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$42$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getAppRestrictions([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$43$ShellCommand(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$44$ShellCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$45$ShellCommand(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLocationEnabled(Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$46$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isLocationEnabled()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$47$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearDeviceOwnerLockScreenInfo()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$48$ShellCommand(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setDeviceOwnerLockScreenInfo(Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$49$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getDeviceOwnerLockScreenInfo()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$5$ShellCommand(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->startUserInBackground(Landroid/os/UserHandle;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$50$ShellCommand(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setKeyguardDisabled(Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$51$ShellCommand(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setKeyguardDisabledFeatures(I)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$52$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getKeyguardDisabledFeatures()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$53$ShellCommand(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setUsbDataSignalingEnabled(Z)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$54$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPermittedInputMethodsOnParent([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$55$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->listForegroundUsers()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$56$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isForegroundUser()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$6$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isUserAffiliated()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$7$ShellCommand([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setAffiliationIds([Ljava/lang/String;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$8$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getAffiliationIds()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$9$ShellCommand()V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->listUserRestrictions()V

    return-void
.end method

.method final synthetic lambda$clearDeviceOwner$56$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 612
    const-string v0, "Removed %s as device owner"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$clearDeviceOwner$57$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 613
    const-string v0, "Error removing %s as device owner"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$clearProfileOwner$58$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 621
    const-string v0, "Removed %s as profile owner"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$clearProfileOwner$59$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 622
    const-string v0, "Error removing %s as profile owner"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$createUser$24$ShellCommand(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "u"    # Landroid/os/UserHandle;

    .prologue
    .line 442
    const-string v0, "User created: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->toString(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$createUser$25$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 443
    const-string v0, "Error creating user %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$enableSystemApp$75$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 770
    const-string v0, "Enabled system apps %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$enableSystemApp$76$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 771
    const-string v0, "Error enabling systen app%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$listForegroundUsers$60$ShellCommand(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "u"    # Landroid/os/UserHandle;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "\t%s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method final synthetic lambda$lockNow$38$ShellCommand(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 528
    const-string v0, "Device locked"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$lockNow$39$ShellCommand(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 528
    const-string v0, "Error locking device"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$lockNow$40$ShellCommand(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 532
    const-string v0, "Device locked"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$lockNow$41$ShellCommand(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 532
    const-string v0, "Error locking device"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$printCollection$93$ShellCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 955
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "  %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method final synthetic lambda$reboot$42$ShellCommand(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 539
    const-string v0, "Device rebooted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$reboot$43$ShellCommand(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 539
    const-string v0, "Error rebooting device"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$removeActiveAdmin$54$ShellCommand(Landroid/content/ComponentName;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 603
    const-string v0, "Removed %s as an active admin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$removeActiveAdmin$55$ShellCommand(Landroid/content/ComponentName;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 604
    const-string v0, "Error removing %s as admin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$removeUser$28$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 463
    const-string v0, "User %s removed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$removeUser$29$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 464
    const-string v0, "Error removing user %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$requestBugreport$46$ShellCommand(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 551
    const-string v0, "Bugreport requested"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$requestBugreport$47$ShellCommand(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 551
    const-string v0, "Error requesting bugreport"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$run$21$ShellCommand(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    .line 94
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 99
    .local v2, "serialNumber":J
    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v4, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserHandle(J)Landroid/os/UserHandle;

    move-result-object v1

    .line 100
    .local v1, "userHandle":Landroid/os/UserHandle;
    if-nez v1, :cond_0

    .line 101
    const-string v4, "User %d does not exist."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v4

    .line 104
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "serialNumber":J
    :goto_0
    return-object v4

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "UserHandle must be a long integer."

    invoke-virtual {p2, v4}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v4

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    .restart local v2    # "serialNumber":J
    :cond_0
    invoke-virtual {p2, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v4

    goto :goto_0
.end method

.method final synthetic lambda$run$22$ShellCommand(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "Could not open file %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2, v0}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    goto :goto_0
.end method

.method final synthetic lambda$setAppRestrictions$81$ShellCommand(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 4
    .param p3, "v"    # Ljava/lang/Void;

    .prologue
    .line 827
    const-string v0, "Set %d app restrictions for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setAppRestrictions$82$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 828
    const-string v0, "Error setting app restrictions for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setDeviceOwnerLockScreenInfo$87$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 896
    const-string v0, "Set lock screen info to \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setDeviceOwnerLockScreenInfo$88$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 897
    const-string v0, "Error setting lock screen info to \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setHiddenPackage$71$ShellCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p3, "v"    # Ljava/lang/Void;

    .prologue
    .line 735
    const-string v0, "Set %s as %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setHiddenPackage$72$ShellCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 736
    const-string v0, "Error settings %s as %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setKeyguardDisabled$89$ShellCommand(ZLjava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 908
    const-string v0, "Set keyguard disabled to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setKeyguardDisabled$90$ShellCommand(ZLjava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 909
    const-string v0, "Error setting keyguard disabled to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setKeyguardDisabledFeatures$91$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 918
    const-string v0, "Set keyguard features to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setKeyguardDisabledFeatures$92$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 919
    const-string v0, "Error settings keyguard features to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setLocationEnabled$85$ShellCommand(ZLjava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 880
    const-string v0, "Set location enabled to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setLocationEnabled$86$ShellCommand(ZLjava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 881
    const-string v0, "Error setting location enabled to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setLockTaskFeatures$79$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 808
    const-string v0, "Set lock tasks features to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setLockTaskFeatures$80$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 809
    const-string v0, "Error settings lock task features to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setLockTaskPackages$77$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 789
    const-string v0, "Set lock tasks packages to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setLockTaskPackages$78$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 790
    const-string v0, "Error settings lock task packages to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setNetworkLogging$48$ShellCommand(ZLjava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 558
    const-string v0, "Network logging set to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setNetworkLogging$49$ShellCommand(ZLjava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 559
    const-string v0, "Error setting network logging to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setOrganizationName$50$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 570
    const-string v0, "Organization name set to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setOrganizationName$51$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 571
    const-string v0, "Error setting Organization name to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setPasswordQuality$61$ShellCommand(Ljava/lang/String;ILjava/lang/Void;)V
    .locals 4
    .param p3, "v"    # Ljava/lang/Void;

    .prologue
    .line 654
    const-string v0, "Set password quality to %s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setPasswordQuality$62$ShellCommand(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 4
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 655
    const-string v0, "Error setting password quality to %s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setPermissionGrantState$83$ShellCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p4, "v"    # Ljava/lang/Void;

    .prologue
    .line 866
    const-string v0, "Set %s state on %s to %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setPermissionGrantState$84$ShellCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p4, "e"    # Ljava/lang/Exception;

    .prologue
    .line 868
    const-string v0, "Error setting %s state on %s to %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, p4, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setPersonalAppsSuspended$73$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 755
    const-string v0, "Set personal apps to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setPersonalAppsSuspended$74$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 756
    const-string v0, "Error setting personal apps to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setRequiredPasswordComplexity$63$ShellCommand(Ljava/lang/String;ILjava/lang/Void;)V
    .locals 4
    .param p3, "v"    # Ljava/lang/Void;

    .prologue
    .line 669
    const-string v0, "Set required password complexity to %s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 670
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setRequiredPasswordComplexity$64$ShellCommand(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 4
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 671
    const-string v0, "Error setting required password complexity to %s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 672
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 671
    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setSuspendedPackages$69$ShellCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p3, "v"    # [Ljava/lang/String;

    .prologue
    .line 712
    const-string v0, "Set %s (but not %s) to %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 713
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 712
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setSuspendedPackages$70$ShellCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 714
    const-string v0, "Error settings %s to %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUsbDataSignalingEnabled$67$ShellCommand(ZLjava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 698
    const-string v0, "USB data signaling set to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUsbDataSignalingEnabled$68$ShellCommand(ZLjava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 699
    const-string v0, "Error setting USB data signaling to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUserControlDisabledPackages$52$ShellCommand(Ljava/util/List;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 589
    const-string v0, "User-control disabled packages set to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUserControlDisabledPackages$53$ShellCommand(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 590
    const-string v0, "Error setting User-control disabled packages to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUserIcon$26$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 456
    const-string v0, "User icon created from file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUserIcon$27$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 457
    const-string v0, "Error creating user icon from file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUserRestriction$36$ShellCommand(Ljava/lang/String;ZLjava/lang/Void;)V
    .locals 4
    .param p3, "v"    # Ljava/lang/Void;

    .prologue
    .line 520
    const-string v0, "User restriction \'%s\' set to %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setUserRestriction$37$ShellCommand(Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 4
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 521
    const-string v0, "Error setting user restriction \'%s\' to %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$startUserInBackground$32$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Integer;

    .prologue
    .line 477
    const-string v0, "User %s started in background"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$startUserInBackground$33$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 478
    const-string v0, "Error starting user %s in background"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$stopUser$34$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Integer;

    .prologue
    .line 484
    const-string v0, "User %s stopped"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$stopUser$35$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 485
    const-string v0, "Error stopping user %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$switchUser$30$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 470
    const-string v0, "User %s switched"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$switchUser$31$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 471
    const-string v0, "Error switching user %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$transferOwnership$65$ShellCommand(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 690
    const-string v0, "Ownership transferred to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$transferOwnership$66$ShellCommand(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 691
    const-string v0, "Error transferring ownership to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$wipeData$44$ShellCommand(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 545
    const-string v0, "Data wiped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$wipeData$45$ShellCommand(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 545
    const-string v0, "Error wiping data"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 86
    new-instance v1, Lcom/afwsamples/testdpc/util/Flags;

    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;-><init>(Ljava/io/PrintWriter;)V

    .line 88
    .local v1, "flags":Lcom/afwsamples/testdpc/util/Flags;
    const-class v2, Landroid/os/UserHandle;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-virtual {v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/Flags$BiFunction;)V

    .line 106
    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-virtual {v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/Flags$BiFunction;)V

    .line 117
    const-class v2, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    sget-object v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$2;->$instance:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    invoke-virtual {v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/Flags$BiFunction;)V

    .line 131
    const-string v2, "dump"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$3;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Dump internal state."

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 132
    const-string v2, "create-user"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$4;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$4;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    .line 136
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v6, "flags"

    .line 137
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/Flags;->optional(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/Flags$OptionalParam;

    move-result-object v5

    .line 133
    invoke-static {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Create a user with the optional flags and name."

    .line 138
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 139
    const-string v2, "set-user-icon"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$5;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$5;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/io/File;

    const-string v5, "file"

    .line 140
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the user icon using the bitmap located at the given file, which must be located in the user\'s `UserIcons` directory. For user 0, you can use `adb push` to push a local file to that directory (/storage/emulated/0/Android/data/com.afwsamples.testdpc/files/Pictures/UserIcons), but for other users you need to switch to that user and use its content provider (for example, `adb shell content write --user 10 --uri content://com.afwsamples.testdpc.usericoncontentprovider/icon.png < /tmp/icon.png`)."

    .line 141
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 150
    const-string v2, "remove-user"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$6;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$6;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Landroid/os/UserHandle;

    const-string v5, "user-serial-number"

    .line 154
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 151
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Remove the given user."

    .line 155
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 156
    const-string v2, "switch-user"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$7;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$7;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Landroid/os/UserHandle;

    const-string v5, "user-serial-number"

    .line 160
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 157
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Switch the given user to foreground."

    .line 161
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 162
    const-string v2, "start-user-in-background"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$8;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$8;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Landroid/os/UserHandle;

    const-string v5, "user-serial-number"

    .line 166
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 163
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Switch the given user to foreground."

    .line 167
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 168
    const-string v2, "is-user-affiliated"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$9;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$9;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 169
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Check if the user is affiliated with the device."

    .line 170
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 171
    const-string v2, "set-affiliation-ids"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$10;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$10;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "ids"

    .line 175
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 172
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the user affiliation ids (or clear them if no ids are passed)."

    .line 176
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 177
    const-string v2, "get-affiliation-ids"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$11;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$11;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 178
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the user affiliation ids."

    .line 179
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 180
    const-string v2, "list-user-restrictions"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$12;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$12;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 181
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "List the user restrictions."

    .line 182
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 183
    const-string v2, "set-user-restriction"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$13;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$13;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "restriction"

    .line 187
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "enabled"

    .line 188
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v5

    .line 184
    invoke-static {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the given user restriction."

    .line 189
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 190
    const-string v2, "lock-now"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$14;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$14;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "flags"

    .line 191
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->optional(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/Flags$OptionalParam;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Lock the device (now! :-)."

    .line 192
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 193
    const-string v2, "reboot"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$15;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$15;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Reboot the device."

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 194
    const-string v2, "wipe-data"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$16;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$16;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "flags"

    .line 195
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->optional(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/Flags$OptionalParam;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Factory reset the device."

    .line 196
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 197
    const-string v2, "request-bugreport"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$17;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$17;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 198
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Request a bug report."

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 199
    const-string v2, "set-network-logging"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$18;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$18;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "enabled"

    .line 203
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 200
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Enable / disable network logging."

    .line 204
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 205
    const-string v2, "clear-organization-name"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$19;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$19;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 206
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Clear the organisation name."

    .line 207
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 208
    const-string v2, "set-organization-name"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$20;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$20;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    .line 212
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 209
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the organisation name."

    .line 213
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 214
    const-string v2, "get-organization-name"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$21;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$21;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 215
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the organization name."

    .line 216
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 217
    const-string v2, "set-user-control-disabled-packages"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$22;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$22;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "packages"

    .line 221
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 218
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the packages that the user cannot force stop or clear data for. Provide an empty list to reset."

    .line 222
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 225
    const-string v2, "get-user-control-disabled-packages"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$23;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$23;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 226
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the packages that the user cannot force stop or clear data for."

    .line 227
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 228
    const-string v2, "remove-active-admin"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$24;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$24;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 229
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Remove TestDPC as an active admin."

    .line 230
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 231
    const-string v2, "clear-device-owner"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$25;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$25;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 232
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Clear TestDPC as device owner."

    .line 233
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 234
    const-string v2, "clear-profile-owner"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$26;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$26;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 235
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Clear TestDPC as profile owner."

    .line 236
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 237
    const-string v2, "set-password-quality"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$27;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$27;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "quality"

    .line 241
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 238
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the password quality."

    .line 242
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 243
    const-string v2, "get-password-quality"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$28;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$28;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 244
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the password quality."

    .line 245
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 246
    const-string v2, "set-required-password-complexity"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$29;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$29;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "complexity"

    .line 250
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 247
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the required password complexity."

    .line 251
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 252
    const-string v2, "get-required-password-complexity"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$30;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$30;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 253
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get required the password complexity."

    .line 254
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 255
    const-string v2, "transfer-ownership"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$31;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$31;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "admin"

    .line 256
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Transfer ownership to the given admin."

    .line 257
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 258
    const-string v2, "set-suspended-packages"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$32;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$32;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "suspended"

    .line 262
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-string v6, "packageNames"

    .line 263
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v5

    .line 259
    invoke-static {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Suspend / unsuspend the given packages."

    .line 264
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 258
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 265
    const-string v2, "is-suspended-packages"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$33;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$33;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "packageNames"

    .line 269
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 266
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Check if the given packages are suspended."

    .line 270
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 271
    const-string v2, "set-personal-apps-suspended"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$34;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$34;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "suspended"

    .line 275
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 272
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Suspend / unsuspend personal apps."

    .line 276
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 277
    const-string v2, "enable-system-app"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$35;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$35;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "packageName"

    .line 281
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 278
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Enable the given system app."

    .line 282
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 283
    const-string v2, "list-disabled-system-apps"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$36;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$36;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 284
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "List the disabled system apps."

    .line 285
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 286
    const-string v2, "get-personal-apps-suspended-reasons"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$37;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$37;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 287
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the reasons for suspending personal apps."

    .line 288
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 289
    const-string v2, "set-hidden-package"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$38;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$38;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "package"

    .line 293
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "hidden"

    .line 294
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v5

    .line 290
    invoke-static {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Hide / unhide the given package."

    .line 295
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 296
    const-string v2, "is-hidden-package"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$39;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$39;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "package"

    .line 297
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Check if the given package is hidden."

    .line 298
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 299
    const-string v2, "set-lock-task-packages"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$40;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$40;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "packages"

    .line 303
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 300
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the packages allowed to have tasks locked."

    .line 304
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 305
    const-string v2, "get-lock-task-packages"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$41;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$41;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 306
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the packages allowed to have tasks locked."

    .line 307
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 308
    const-string v2, "is-lock-task-permitted"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$42;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$42;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "packages"

    .line 312
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 309
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Check if the given packages are allowed to have tasks locked."

    .line 313
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 308
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 314
    const-string v2, "set-lock-task-features"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$43;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$43;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "flags"

    .line 318
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 315
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the lock task features."

    .line 319
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 314
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 320
    const-string v2, "get-lock-task-features"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$44;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$44;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 321
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the lock task features."

    .line 322
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 323
    const-string v2, "set-app-restrictions"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$45;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$45;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "package"

    .line 327
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    const-class v5, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    const-string v6, "restrictions"

    .line 328
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v5

    .line 324
    invoke-static {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the application restrictions (provided as key=value strings) for the given app (or clear if no values provided)."

    .line 329
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 323
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 332
    const-string v2, "get-app-restrictions"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$46;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$46;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "packages"

    .line 336
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 333
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the application restrictions for the given apps (or for TestDPC when empty, using UserManager)."

    .line 337
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 340
    const-string v2, "set-permission-grant-state"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$47;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$47;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "package"

    .line 344
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-string v6, "permission"

    .line 345
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v7, "state"

    .line 346
    invoke-static {v6, v7}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v6

    .line 341
    invoke-static {v2, v3, v4, v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the grant state for the given package and permission."

    .line 347
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 348
    const-string v2, "get-permission-grant-state"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$48;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$48;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "package"

    .line 352
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-string v6, "permission"

    .line 353
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v5

    .line 349
    invoke-static {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the grant state for the given package and persmission."

    .line 354
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 348
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 355
    const-string v2, "set-location-enabled"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$49;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$49;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "enabled"

    .line 359
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 356
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set location enabled for the user."

    .line 360
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 361
    const-string v2, "is-location-enabled"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$50;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$50;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 362
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get whether location is enabled for the user."

    .line 363
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 361
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 364
    const-string v2, "clear-device-owner-lockscreen-info"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$51;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$51;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 365
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Clear the device owner lock screen info."

    .line 366
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 367
    const-string v2, "set-device-owner-lockscreen-info"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$52;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$52;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "info"

    .line 371
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 368
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the device owner lock screen info."

    .line 372
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 373
    const-string v2, "get-device-owner-lockscreen-info"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$53;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$53;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 374
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the device owner lock screen info."

    .line 375
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 373
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 376
    const-string v2, "set-keyguard-disabled"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$54;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$54;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "disabled"

    .line 380
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 377
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set keyguard disabled."

    .line 381
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 382
    const-string v2, "set-keyguard-disabled-features"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$55;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$55;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "flags"

    .line 386
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 383
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the keyguard disabled features."

    .line 387
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 388
    const-string v2, "get-keyguard-disabled-features"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$56;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$56;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 389
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Get the keyguard disabled features."

    .line 390
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 388
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 394
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const-string v2, "set-usb-data-signaling-enabled"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$57;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$57;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "enabled"

    .line 399
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    .line 396
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Enable / disable USB data signaling."

    .line 400
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 395
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 401
    const-string v2, "set-permitted-input-methods-parent"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$58;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$58;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v4, Ljava/lang/String;

    const-string v5, "methods"

    .line 405
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/Flags;->repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    move-result-object v4

    .line 402
    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Set the permitted input methods in the parent\'s device admin."

    .line 406
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 401
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 407
    const-string v2, "list-foreground-users"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$59;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$59;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 408
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "List the users running in the foreground."

    .line 409
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 407
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 410
    const-string v2, "is-foreground-user"

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$60;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$60;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 411
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    const-string v3, "Checks if the calling user is running in the foreground."

    .line 412
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 416
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/Flags;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "error executing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mArgs:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
