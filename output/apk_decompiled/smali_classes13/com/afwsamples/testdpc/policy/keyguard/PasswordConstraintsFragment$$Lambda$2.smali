.class final synthetic Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/common/preference/CustomConstraint;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;

    return-void
.end method


# virtual methods
.method public validateConstraint()I
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$2;->arg$1:Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->lambda$setPreferencesConstraint$207$PasswordConstraintsFragment()I

    move-result v0

    return v0
.end method
