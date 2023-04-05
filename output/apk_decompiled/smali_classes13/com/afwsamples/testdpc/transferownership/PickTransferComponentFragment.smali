.class public Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;
.super Landroid/app/Fragment;
.source "PickTransferComponentFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 124
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 125
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static final synthetic lambda$onCreateView$0$PickTransferComponentFragment(Landroid/widget/EditText;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view1"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "__"    # J

    .prologue
    .line 87
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private performTransfer(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "target"    # Landroid/content/ComponentName;

    .prologue
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 105
    .local v3, "source":Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transferring ownership from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 109
    .local v2, "persistableBundle":Landroid/os/PersistableBundle;
    const-string v4, "random_key"

    const-string v5, "random_value"

    invoke-virtual {v2, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v3, p1, v2}, Landroid/app/admin/DevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 112
    const-string v4, "Success!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "persistableBundle":Landroid/os/PersistableBundle;
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 115
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_0

    .line 116
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 118
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method final synthetic lambda$onCreateView$1$PickTransferComponentFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 92
    .local v0, "target":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->performTransfer(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const v1, 0x7f0f0350

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v13, 0x7f0b00b8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 66
    .local v11, "rootView":Landroid/view/ViewGroup;
    const v13, 0x7f0900e4

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 67
    .local v6, "listView":Landroid/widget/ListView;
    const v13, 0x7f090075

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 68
    .local v3, "componentName":Landroid/widget/EditText;
    const v13, 0x7f09013d

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 69
    .local v10, "result":Landroid/widget/EditText;
    const v13, 0x7f0901c8

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 71
    .local v12, "transferButton":Landroid/widget/Button;
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 74
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v7, v4, v13}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 75
    .local v9, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 77
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 80
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x1090003

    invoke-direct {v2, v13, v14, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v2, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v13, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$0;

    invoke-direct {v13, v3}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    new-instance v13, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v10}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v11
.end method
