.class final synthetic Lcom/afwsamples/testdpc/BootReceiver$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# static fields
.field static final $instance:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$0;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$0;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$0;->$instance:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;

    invoke-static {p1}, Lcom/afwsamples/testdpc/BootReceiver;->lambda$onReceive$97$BootReceiver(Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;)V

    return-void
.end method
