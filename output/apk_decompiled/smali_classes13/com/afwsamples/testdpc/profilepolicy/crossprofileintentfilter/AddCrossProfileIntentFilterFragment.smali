.class public Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;
.super Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
.source "AddCrossProfileIntentFilterFragment.java"


# static fields
.field private static final CROSS_PROFILE_INTENT_DIRECTIONS:[Ljava/lang/String;

.field private static final NEW_LINE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AddCrossProfileIntentFilterFragment"


# instance fields
.field private mCrossProfileDirectionSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FLAG_MANAGED_CAN_ACCESS_PARENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FLAG_PARENT_CAN_ACCESS_MANAGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->CROSS_PROFILE_INTENT_DIRECTIONS:[Ljava/lang/String;

    .line 57
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;-><init>()V

    return-void
.end method

.method private dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private getAddCrossProfileIntentFilterFlag()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCrossProfileDirectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    .line 167
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 188
    :cond_0
    :goto_0
    return-object v5

    .line 170
    :cond_1
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    .end local v1    # "category":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "dataScheme":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_3

    .line 180
    .end local v2    # "dataScheme":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 182
    .local v3, "dataType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 183
    :catch_0
    move-exception v4

    .line 184
    .local v4, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v7, "AddCrossProfileIntentFilterFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed mime type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 185
    goto :goto_0
.end method

.method private updateIntentFilterFragmentUi()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 192
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mAddDataSchemeAction:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "isClickHandled":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 112
    :goto_0
    if-nez v1, :cond_0

    .line 113
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onClick(Landroid/view/View;)V

    .line 115
    :cond_0
    return-void

    .line 89
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 90
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    if-eqz v0, :cond_1

    .line 91
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 94
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getAddCrossProfileIntentFilterFlag()I

    move-result v5

    .line 92
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 95
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f003a

    .line 96
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->clearIntentOrIntentFilter()V

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->updateStatusTextView()V

    .line 106
    :goto_1
    const/4 v1, 0x1

    .line 107
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0039

    .line 103
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f09005b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v2, 0x7f0b002d

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 72
    .local v0, "crossProfileIntentFilterContainer":Landroid/widget/LinearLayout;
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "intentView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    const v2, 0x7f090084

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCrossProfileDirectionSpinner:Landroid/widget/Spinner;

    .line 77
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCrossProfileDirectionSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090008

    sget-object v6, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->CROSS_PROFILE_INTENT_DIRECTIONS:[Ljava/lang/String;

    .line 79
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->updateIntentFilterFragmentUi()V

    .line 81
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    return-void
.end method

.method protected updateStatusTextView()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const v1, 0x7f0f002d

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 124
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const v1, 0x7f0f0086

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 130
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    const v1, 0x7f0f00c5

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 136
    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    const v1, 0x7f0f00c6

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->dumpSet(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
