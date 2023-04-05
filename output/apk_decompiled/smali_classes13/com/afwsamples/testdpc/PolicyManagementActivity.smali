.class public Lcom/afwsamples/testdpc/PolicyManagementActivity;
.super Lcom/afwsamples/testdpc/common/DumpableActivity;
.source "PolicyManagementActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field private static final CMD_LOCK_TASK_MODE:Ljava/lang/String; = "lock-task-mode"

.field private static final LOCK_MODE_ACTION_START:Ljava/lang/String; = "start"

.field private static final LOCK_MODE_ACTION_STATUS:Ljava/lang/String; = "status"

.field private static final LOCK_MODE_ACTION_STOP:Ljava/lang/String; = "stop"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLockTaskMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;-><init>()V

    return-void
.end method

.method private dumpLockModeStatus(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 164
    const-string v0, "lock-task mode: %b\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 165
    return-void
.end method

.method private setLockTaskMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 179
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid lock-task action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_1
    return-void

    .line 168
    :sswitch_0
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->startLockTaskMode()V

    goto :goto_1

    .line 173
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->stopLockTaskMode()V

    goto :goto_1

    .line 176
    :pswitch_2
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock-task mode status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startLockTaskMode()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "startLockTaskMode(): mLockTaskMode already true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    .line 151
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "startLockTaskMode(): calling Activity.startLockTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->startLockTask()V

    .line 153
    return-void
.end method

.method private stopLockTaskMode()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "startLockTaskMode(): mLockTaskMode already false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->mLockTaskMode:Z

    .line 159
    sget-object v0, Lcom/afwsamples/testdpc/PolicyManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "stopLockTaskMode(): calling Activity.stopLockTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->stopLockTask()V

    .line 161
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 123
    if-eqz p4, :cond_2

    array-length v1, p4

    if-lez v1, :cond_2

    aget-object v1, p4, v2

    const-string v4, "lock-task-mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    array-length v1, p4

    if-ne v1, v3, :cond_1

    const-string v0, "status"

    .line 125
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 138
    const-string v1, "Invalid lock-task mode action: %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p3, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    .end local v0    # "action":Ljava/lang/String;
    :goto_2
    return-void

    .line 124
    :cond_1
    aget-object v0, p4, v3

    goto :goto_0

    .line 125
    .restart local v0    # "action":Ljava/lang/String;
    :sswitch_0
    const-string v4, "start"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "stop"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v4, "status"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    .line 127
    :pswitch_0
    const-string v1, "Starting lock-task mode"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->startLockTaskMode()V

    goto :goto_2

    .line 131
    :pswitch_1
    const-string v1, "Stopping lock-task mode"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->stopLockTaskMode()V

    goto :goto_2

    .line 135
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->dumpLockModeStatus(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 142
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->dumpLockModeStatus(Ljava/io/PrintWriter;)V

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/common/DumpableActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090078

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 106
    .local v0, "currFragment":Landroid/app/Fragment;
    const/4 v1, 0x0

    .line 107
    .local v1, "onBackPressHandled":Z
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/afwsamples/testdpc/common/OnBackPressedHandler;

    if-eqz v2, :cond_0

    .line 108
    check-cast v0, Lcom/afwsamples/testdpc/common/OnBackPressedHandler;

    .end local v0    # "currFragment":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/OnBackPressedHandler;->onBackPressed()Z

    move-result v1

    .line 110
    :cond_0
    if-nez v1, :cond_1

    .line 111
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onBackPressed()V

    .line 113
    :cond_1
    return-void
.end method

.method public onBackStackChanged()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->setContentView(I)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090078

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;-><init>()V

    const-string v3, "PolicyManagementFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onDestroy()V

    .line 118
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 119
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 83
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 73
    :sswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090078

    .line 75
    invoke-static {}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->newInstance()Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "search"

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f090026 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lock-task-mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "lockModeCommand":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/PolicyManagementActivity;->setLockTaskMode(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
