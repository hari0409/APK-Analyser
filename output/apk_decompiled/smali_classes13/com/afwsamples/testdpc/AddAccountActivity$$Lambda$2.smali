.class final synthetic Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

.field private final arg$2:Ljava/lang/Runnable;

.field private final arg$3:J


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/AddAccountActivity;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    iput-object p2, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;->arg$2:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;->arg$3:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;->arg$2:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$2;->arg$3:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$waitForForeground$4$AddAccountActivity(Ljava/lang/Runnable;J)V

    return-void
.end method
