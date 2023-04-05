.class public interface abstract Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;
.super Ljava/lang/Object;
.source "IDeviceOwnerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyUserIsUnlocked(Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
