.class abstract Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Keys;
.super Ljava/lang/Object;
.source "LockScreenPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Keys"
.end annotation


# static fields
.field static final KEYGUARD_DISABLE_FACE:Ljava/lang/String; = "keyguard_disable_face"

.field static final KEYGUARD_DISABLE_FINGERPRINT:Ljava/lang/String; = "keyguard_disable_fingerprint"

.field static final KEYGUARD_DISABLE_IRIS:Ljava/lang/String; = "keyguard_disable_iris"

.field static final KEYGUARD_DISABLE_REMOTE_INPUT:Ljava/lang/String; = "keyguard_disable_remote_input"

.field static final KEYGUARD_DISABLE_SECURE_CAMERA:Ljava/lang/String; = "keyguard_disable_secure_camera"

.field static final KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:Ljava/lang/String; = "keyguard_disable_secure_notifications"

.field static final KEYGUARD_DISABLE_TRUST_AGENTS:Ljava/lang/String; = "keyguard_disable_trust_agents"

.field static final KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:Ljava/lang/String; = "keyguard_disable_unredacted_notifications"

.field static final LOCK_SCREEN_MESSAGE:Ljava/lang/String; = "key_lock_screen_message"

.field static final MAX_FAILS_BEFORE_WIPE:Ljava/lang/String; = "key_max_fails_before_wipe"

.field static final MAX_FAILS_BEFORE_WIPE_ALL:Ljava/lang/String; = "key_max_fails_before_wipe_aggregate"

.field static final MAX_TIME_SCREEN_LOCK:Ljava/lang/String; = "key_max_time_screen_lock"

.field static final MAX_TIME_SCREEN_LOCK_ALL:Ljava/lang/String; = "key_max_time_screen_lock_aggregate"

.field static final NOT_APPLICABLE_TO_PARENT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SET_TRUST_AGENT_CONFIG:Ljava/lang/String; = "key_set_trust_agent_config"

.field static final STRONG_AUTH_TIMEOUT:Ljava/lang/String; = "key_strong_auth_timeout"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "keyguard_disable_unredacted_notifications"

    aput-object v3, v1, v2

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Keys;->NOT_APPLICABLE_TO_PARENT:Ljava/util/Set;

    .line 81
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
