.class final synthetic Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/AddAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$addAccount$3$AddAccountActivity(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
