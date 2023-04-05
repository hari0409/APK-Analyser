.class final synthetic Lcom/afwsamples/testdpc/CommonReceiverOperations$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/CommonReceiverOperations$$Lambda$0;->arg$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/CommonReceiverOperations$$Lambda$0;->arg$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/app/admin/NetworkEvent;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/CommonReceiverOperations;->lambda$onNetworkLogsAvailable$195$CommonReceiverOperations(Ljava/util/ArrayList;Landroid/app/admin/NetworkEvent;)V

    return-void
.end method
