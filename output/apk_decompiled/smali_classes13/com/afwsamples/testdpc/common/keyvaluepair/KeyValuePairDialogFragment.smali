.class public Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyValuePairDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;,
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;,
        Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$DialogType;
    }
.end annotation


# static fields
.field static final ARG_APP_NAME:Ljava/lang/String; = "app_name"

.field static final ARG_CAN_EDIT_KEY:Ljava/lang/String; = "can_edit_key"

.field static final ARG_DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field static final ARG_INITIAL_VALUE:Ljava/lang/String; = "initial_value"

.field static final ARG_KEY:Ljava/lang/String; = "key"

.field static final ARG_SUPPORTED_TYPE:Ljava/lang/String; = "supported_type"

.field public static final RESULT_KEY:Ljava/lang/String; = "key"

.field public static final RESULT_TYPE:Ljava/lang/String; = "type"

.field public static final RESULT_VALUE:Ljava/lang/String; = "value"

.field private static final TYPE_DISPLAY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

.field private final bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

.field private mAppName:Ljava/lang/String;

.field private mBoolView:Landroid/widget/Switch;

.field private mConfigureBundle:Landroid/widget/Button;

.field private mConfigureBundleArray:Landroid/widget/Button;

.field private mDialogType:I

.field private mIntView:Landroid/widget/EditText;

.field private mKeyView:Landroid/widget/EditText;

.field private mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

.field private mStringArrayContainer:Landroid/view/View;

.field private mStringArrayList:Landroidx/recyclerview/widget/RecyclerView;

.field private mStringView:Landroid/widget/EditText;

.field private mSupportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeSpinner:Landroid/widget/Spinner;

.field private mValueViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Integer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "String"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "String[]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Bundle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Bundle[]"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->TYPE_DISPLAY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    .line 106
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    .line 389
    return-void
.end method

.method static synthetic access$1000(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->showFragmentForFurtherInput(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->showToast(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    return v0
.end method

.method static synthetic access$500(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->putValueFromUiToResultIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mSupportedTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setDialogType(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private configureKeyView(ZLjava/lang/String;)V
    .locals 1
    .param p1, "canEditKeyView"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method private configureStringUi()V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 304
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 305
    new-instance v1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;-><init>()V

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    .line 306
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 307
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayContainer:Landroid/view/View;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method

.method private configureTypeSpinner()V
    .locals 4

    .prologue
    .line 245
    new-instance v0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$2;

    .line 246
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090008

    sget-object v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->TYPE_DISPLAY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$2;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 265
    .local v0, "typeArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 266
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 267
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    return-void
.end method

.method private configureUsingArguments()V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "can_edit_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureKeyView(ZLjava/lang/String;)V

    .line 282
    const-string v1, "supported_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setSupportedType([I)V

    .line 283
    const-string v1, "dialog_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setDialogType(I)V

    .line 284
    const-string v1, "initial_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->populateInitialValue(Ljava/lang/Object;)V

    .line 285
    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mAppName:Ljava/lang/String;

    .line 286
    return-void
.end method

.method private createAlertDialog(Landroid/view/View;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 170
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f02b3

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f02b2

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 176
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 203
    return-object v0
.end method

.method public static newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .locals 4
    .param p0, "dialogType"    # I
    .param p1, "canEditKey"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "supportedType"    # [I
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;-><init>()V

    .line 112
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "argument":Landroid/os/Bundle;
    const-string v2, "dialog_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v2, "can_edit_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p3, :cond_0

    .line 117
    packed-switch p0, :pswitch_data_0

    .line 138
    .end local p3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    const-string v2, "supported_type"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 139
    const-string v2, "app_name"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    return-object v1

    .line 119
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_0
    const-string v2, "initial_value"

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 122
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_1
    const-string v2, "initial_value"

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 125
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_2
    const-string v2, "initial_value"

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_3
    const-string v2, "initial_value"

    check-cast p3, [Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p3, [Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_4
    const-string v2, "initial_value"

    check-cast p3, Landroid/os/Bundle;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 134
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_5
    const-string v2, "initial_value"

    check-cast p3, [Landroid/os/Bundle;

    .end local p3    # "value":Ljava/lang/Object;
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private populateInitialValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "initialValue"    # Ljava/lang/Object;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 354
    .end local p1    # "initialValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 333
    .restart local p1    # "initialValue":Ljava/lang/Object;
    :cond_0
    iget v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "initialValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 338
    .restart local p1    # "initialValue":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "initialValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    .restart local p1    # "initialValue":Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "initialValue":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    .restart local p1    # "initialValue":Ljava/lang/Object;
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, [Ljava/lang/String;

    .end local p1    # "initialValue":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->setStringList(Ljava/util/List;)V

    goto :goto_0

    .line 348
    .restart local p1    # "initialValue":Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "initialValue":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;->setBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 351
    .restart local p1    # "initialValue":Ljava/lang/Object;
    :pswitch_5
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "initialValue":Ljava/lang/Object;
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->setBundleArray([Landroid/os/Bundle;)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private putValueFromUiToResultIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 207
    iget v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    packed-switch v5, :pswitch_data_0

    .line 241
    :goto_0
    return v3

    .line 209
    :pswitch_0
    const-string v3, "value"

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v3, v4

    .line 210
    goto :goto_0

    .line 213
    :pswitch_1
    :try_start_0
    const-string v5, "value"

    iget-object v6, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 217
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 219
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_2
    const-string v3, "value"

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v3, v4

    .line 220
    goto :goto_0

    .line 222
    :pswitch_3
    const-string v5, "value"

    iget-object v6, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayAdapter:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-virtual {v6}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->getStringList()Ljava/util/List;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move v3, v4

    .line 224
    goto :goto_0

    .line 226
    :pswitch_4
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "initial_value"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 227
    .local v1, "initialBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 228
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "initialBundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 230
    .restart local v1    # "initialBundle":Landroid/os/Bundle;
    :cond_0
    const-string v3, "value"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move v3, v4

    .line 231
    goto :goto_0

    .line 234
    .end local v1    # "initialBundle":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "initial_value"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 235
    .local v2, "initialBundleArray":[Landroid/os/Parcelable;
    if-nez v2, :cond_1

    .line 236
    new-array v2, v3, [Landroid/os/Bundle;

    .line 238
    :cond_1
    const-string v3, "value"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move v3, v4

    .line 239
    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setDialogType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    .line 319
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 321
    iget v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mDialogType:I

    if-ne v1, v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 327
    :cond_1
    return-void
.end method

.method private setSupportedType([I)V
    .locals 5
    .param p1, "supportedTypes"    # [I

    .prologue
    .line 294
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 295
    .local v1, "supportedTypeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 296
    .local v0, "supportType":Ljava/lang/Integer;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "supportType":Ljava/lang/Integer;
    :cond_0
    iput-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mSupportedTypes:Ljava/util/Set;

    .line 299
    return-void
.end method

.method private showFragmentForFurtherInput(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-class v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .line 359
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090078

    .line 361
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 363
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 364
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->dismiss()V

    .line 365
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "stringResId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0900de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mKeyView:Landroid/widget/EditText;

    .line 149
    const v2, 0x7f0901d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    .line 150
    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    .line 151
    const v2, 0x7f0901d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    .line 152
    const v2, 0x7f0901d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayContainer:Landroid/view/View;

    .line 153
    const v2, 0x7f0901d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayList:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundle:Landroid/widget/Button;

    .line 155
    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundleArray:Landroid/widget/Button;

    .line 157
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mBoolView:Landroid/widget/Switch;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mIntView:Landroid/widget/EditText;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringView:Landroid/widget/EditText;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mStringArrayContainer:Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundle:Landroid/widget/Button;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundleArray:Landroid/widget/Button;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mValueViews:[Landroid/view/View;

    .line 159
    const v2, 0x7f0901ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mTypeSpinner:Landroid/widget/Spinner;

    .line 160
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundle:Landroid/widget/Button;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleButtonOnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->mConfigureBundleArray:Landroid/widget/Button;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->bundleArrayButtonOnClickListener:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureStringUi()V

    .line 164
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureTypeSpinner()V

    .line 165
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureUsingArguments()V

    .line 166
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->createAlertDialog(Landroid/view/View;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
