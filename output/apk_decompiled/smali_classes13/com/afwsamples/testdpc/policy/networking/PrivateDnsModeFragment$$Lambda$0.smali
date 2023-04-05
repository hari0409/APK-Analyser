.class final synthetic Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;

    return-void
.end method


# virtual methods
.method public showToast(I[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;->lambda$setPrivateDnsMode$194$PrivateDnsModeFragment(I[Ljava/lang/Object;)V

    return-void
.end method
