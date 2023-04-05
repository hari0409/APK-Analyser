.class public Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;
.super Landroid/app/ListFragment;
.source "SecurityLogsFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final PRE_REBOOT_KEY:Ljava/lang/String; = "pre-reboot"

.field private static final TAG:Ljava/lang/String; = "ProcessLogsFragment"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdminName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreReboot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mLogs:Ljava/util/ArrayList;

    return-void
.end method

.method private getEventId(Landroid/app/admin/SecurityLog$SecurityEvent;)J
    .locals 2
    .param p1, "event"    # Landroid/app/admin/SecurityLog$SecurityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getLogs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->hasSecurityLoggingDelegation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 111
    .local v0, "name":Landroid/content/ComponentName;
    :goto_0
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mPreReboot:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 112
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 113
    :goto_1
    return-object v1

    .line 110
    .end local v0    # "name":Landroid/content/ComponentName;
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdminName:Landroid/content/ComponentName;

    goto :goto_0

    .line 112
    .restart local v0    # "name":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 113
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method private getStringEventTagFromId(I)Ljava/lang/String;
    .locals 3
    .param p1, "eventId"    # I

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "eventTag":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 151
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ADB_SHELL_INTERACTIVE"

    .line 152
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ADB_SHELL_CMD"

    .line 155
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_2
    const-string v0, "SYNC_RECV_FILE"

    .line 158
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_3
    const-string v0, "SYNC_SEND_FILE"

    .line 161
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 163
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_4
    const-string v0, "APP_PROCESS_START"

    .line 164
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_5
    const-string v0, "KEYGUARD_DISMISSED"

    .line 167
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_6
    const-string v0, "KEYGUARD_DISMISS_AUTH_ATTEMPT"

    .line 170
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_7
    const-string v0, "KEYGUARD_SECURED"

    .line 173
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_8
    const-string v0, "OS_STARTUP"

    .line 176
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_9
    const-string v0, "OS_SHUTDOWN"

    .line 179
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_a
    const-string v0, "LOGGING_STARTED"

    .line 182
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_b
    const-string v0, "LOGGING_STOPPED"

    .line 185
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_c
    const-string v0, "MEDIA_MOUNT"

    .line 188
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_d
    const-string v0, "MEDIA_UNMOUNT"

    .line 191
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_e
    const-string v0, "LOG_BUFFER_SIZE_CRITICAL"

    .line 194
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_f
    const-string v0, "PASSWORD_EXPIRATION_SET"

    .line 197
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_10
    const-string v0, "PASSWORD_COMPLEXITY_SET"

    .line 200
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_11
    const-string v0, "PASSWORD_HISTORY_LENGTH_SET"

    .line 203
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_12
    const-string v0, "MAX_SCREEN_LOCK_TIMEOUT_SET"

    .line 206
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_13
    const-string v0, "MAX_PASSWORD_ATTEMPTS_SET"

    .line 209
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_14
    const-string v0, "KEYGUARD_DISABLED_FEATURES_SET"

    .line 212
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_15
    const-string v0, "REMOTE_LOCK"

    .line 215
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_16
    const-string v0, "WIPE_FAILURE"

    .line 218
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_17
    const-string v0, "KEY_GENERATED"

    .line 221
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 223
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_18
    const-string v0, "KEY_IMPORT"

    .line 224
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_19
    const-string v0, "KEY_DESTRUCTION"

    .line 227
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "USER_RESTRICTION_ADDED"

    .line 230
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "USER_RESTRICTION_REMOVED"

    .line 233
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1c
    const-string v0, "CERT_AUTHORITY_INSTALLED"

    .line 236
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1d
    const-string v0, "CERT_AUTHORITY_REMOVED"

    .line 239
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "CRYPTO_SELF_TEST_COMPLETED"

    .line 242
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_1f
    const-string v0, "KEY_INTEGRITY_VIOLATION"

    .line 245
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 247
    .end local v0    # "eventTag":Ljava/lang/String;
    :pswitch_20
    const-string v0, "CERT_VALIDATION_FAILURE"

    .line 248
    .restart local v0    # "eventTag":Ljava/lang/String;
    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x33451
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method private hasSecurityLoggingDelegation()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 89
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1f

    if-ge v5, v6, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v4

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "delegations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 98
    .local v3, "securityLoggingDelegation":Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/app/admin/DevicePolicyManager;

    const-string v6, "DELEGATION_SECURITY_LOGGING"

    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/common/ReflectionUtil;->stringConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 104
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    const-string v5, "ProcessLogsFragment"

    const-string v6, "Failed to read DevicePolicyManager.DELEGATION_SECURITY_LOGGING"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static newInstance(Z)Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;
    .locals 3
    .param p0, "preReboot"    # Z

    .prologue
    .line 57
    new-instance v1, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;-><init>()V

    .line 58
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "pre-reboot"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method private printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 256
    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Float;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 258
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .end local p2    # "data":Ljava/lang/Object;
    :cond_1
    return-void

    .line 259
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 260
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "data":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 261
    .local v0, "item":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processEvents(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-nez p1, :cond_1

    .line 118
    const-string v5, "ProcessLogsFragment"

    const-string v6, "logs == null, are you polling too early?"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v5, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mPreReboot:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0f0161

    :goto_0
    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 140
    .end local v3    # "message":Ljava/lang/String;
    :goto_1
    return-void

    .line 119
    :cond_0
    const v5, 0x7f0f0162

    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const-string v5, "ProcessLogsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incoming logs size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 127
    .local v0, "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v4, "sb":Ljava/lang/StringBuilder;
    sget v6, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getEventId(Landroid/app/admin/SecurityLog$SecurityEvent;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_2
    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getStringEventTagFromId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v10

    .line 132
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 135
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 137
    .end local v0    # "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 138
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f0f02bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getLogs()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->processEvents(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ProcessLogsFragment"

    const-string v2, "Exception thrown when trying to retrieve security logs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f0f0153

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdminName:Landroid/content/ComponentName;

    .line 68
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 70
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    const v3, 0x1020014

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mLogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 72
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pre-reboot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mPreReboot:Z

    .line 73
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method
