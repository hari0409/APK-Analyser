.class final synthetic Lcom/afwsamples/testdpc/BootReceiver$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;


# static fields
.field static final $instance:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$1;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$1;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$1;->$instance:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;

    move-result-object v0

    return-object v0
.end method
