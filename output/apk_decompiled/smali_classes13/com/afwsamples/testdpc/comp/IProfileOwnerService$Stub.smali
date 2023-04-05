.class public abstract Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;
.super Landroid/os/Binder;
.source "IProfileOwnerService.java"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/IProfileOwnerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.afwsamples.testdpc.comp.IProfileOwnerService"

.field static final TRANSACTION_installCaCertificate:I = 0x3

.field static final TRANSACTION_isLauncherIconHidden:I = 0x2

.field static final TRANSACTION_setLauncherIconHidden:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.afwsamples.testdpc.comp.IProfileOwnerService"

    invoke-virtual {p0, p0, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.afwsamples.testdpc.comp.IProfileOwnerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    const-string v2, "com.afwsamples.testdpc.comp.IProfileOwnerService"

    .line 39
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 51
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->setLauncherIconHidden(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v4

    .line 50
    goto :goto_1

    .line 56
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->isLauncherIconHidden()Z

    move-result v1

    .line 58
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v1    # "_result":Z
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    sget-object v5, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 72
    .local v0, "_arg0":Landroid/content/res/AssetFileDescriptor;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v1

    .line 73
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/res/AssetFileDescriptor;
    goto :goto_2

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
