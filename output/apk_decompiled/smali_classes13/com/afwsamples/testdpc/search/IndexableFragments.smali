.class public Lcom/afwsamples/testdpc/search/IndexableFragments;
.super Ljava/lang/Object;
.source "IndexableFragments.java"


# static fields
.field private static final sIndexableFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/BaseIndexableFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v3, 0x7f120003

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    const v3, 0x7f120009

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    const v3, 0x7f120005

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;

    const v3, 0x7f120008

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    const/high16 v3, 0x7f120000

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;

    const v3, 0x7f120007

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/BaseIndexableFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
