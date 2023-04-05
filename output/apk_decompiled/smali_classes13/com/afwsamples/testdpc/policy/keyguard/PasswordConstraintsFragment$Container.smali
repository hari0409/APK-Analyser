.class public Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;
.super Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;
.source "PasswordConstraintsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Container"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const-class v0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;

    return-object v0
.end method
