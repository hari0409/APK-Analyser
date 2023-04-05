.class public interface abstract Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
.super Ljava/lang/Object;
.source "IProfileOwnerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLauncherIconHidden()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLauncherIconHidden(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
