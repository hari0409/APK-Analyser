.class final synthetic Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Landroidx/preference/Preference;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;->arg$1:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;->arg$1:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->lambda$setLockScreenMessage$200$LockScreenPolicyFragment(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
