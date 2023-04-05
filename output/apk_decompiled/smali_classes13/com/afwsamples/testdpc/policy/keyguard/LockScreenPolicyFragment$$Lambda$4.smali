.class final synthetic Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/common/preference/CustomConstraint;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;->arg$1:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public validateConstraint()I
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;->arg$1:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->lambda$setup$204$LockScreenPolicyFragment(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
