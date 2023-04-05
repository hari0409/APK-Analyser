.class public abstract Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
.super Landroid/app/Fragment;
.source "IntentOrIntentFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field protected static final ACTIONS_LIST:[Ljava/lang/String;

.field protected static final CATEGORIES_LIST:[Ljava/lang/String;

.field private static final CUSTOM:Ljava/lang/String; = "Custom"

.field private static final CUSTOM_INPUT_TYPE_ACTIONS:I = 0x0

.field private static final CUSTOM_INPUT_TYPE_CATEGORIES:I = 0x1

.field private static final CUSTOM_INPUT_TYPE_DATA_TYPES:I = 0x3

.field private static final CUSTOM_INPUT_TYPE_SCHEMES:I = 0x2

.field protected static final DATA_SCHEMES_LIST:[Ljava/lang/String;

.field protected static final DATA_TYPES_LIST:[Ljava/lang/String;


# instance fields
.field protected mActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mActionsSpinner:Landroid/widget/Spinner;

.field protected mAddActionButton:Landroid/widget/Button;

.field protected mAddButton:Landroid/widget/Button;

.field protected mAddDataSchemeAction:Landroid/widget/Button;

.field protected mAddDataTypeButton:Landroid/widget/Button;

.field protected mCategories:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCategoriesSpinner:Landroid/widget/Spinner;

.field protected mClearButton:Landroid/widget/Button;

.field protected mDataSchemes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataSchemesSpinner:Landroid/widget/Spinner;

.field protected mDataTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataTypesSpinner:Landroid/widget/Spinner;

.field protected mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field protected mStatusTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.MAIN"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.VIEW"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.ATTACH_DATA"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.EDIT"

    aput-object v1, v0, v6

    const-string v1, "android.intent.action.PICK"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.intent.action.CHOOSER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.GET_CONTENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.action.DIAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.action.CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.SEND"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.intent.action.SENDTO"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.intent.action.ANSWER"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.intent.action.INSERT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.intent.action.DELETE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.intent.action.RUN"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.intent.action.SYNC"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.intent.action.SEARCH"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.intent.action.WEB_SEARCH"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.intent.action.FACTORY_TEST"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.category.DEFAULT"

    aput-object v1, v0, v3

    const-string v1, "android.intent.category.BROWSABLE"

    aput-object v1, v0, v4

    const-string v1, "android.intent.category.TAB"

    aput-object v1, v0, v5

    const-string v1, "android.intent.category.ALTERNATIVE"

    aput-object v1, v0, v6

    const-string v1, "android.intent.category.SELECTED_ALTERNATIVE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.intent.category.LAUNCHER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.category.INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.intent.category.HOME"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.category.PREFERENCE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.category.TEST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.intent.category.CAR_DOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.intent.category.DESK_DOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.intent.category.LE_DESK_DOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.intent.category.HE_DESK_DOCK"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.intent.category.CAR_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.intent.category.APP_MARKET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http"

    aput-object v1, v0, v3

    const-string v1, "https"

    aput-object v1, v0, v4

    const-string v1, "tel"

    aput-object v1, v0, v5

    const-string v1, "mailto"

    aput-object v1, v0, v6

    const-string v1, "geo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    .line 119
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    const-string v1, "text/plain"

    aput-object v1, v0, v4

    const-string v1, "image/*"

    aput-object v1, v0, v5

    const-string v1, "image/jpeg"

    aput-object v1, v0, v6

    const-string v1, "image/bmp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image/jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "video/wav"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->resetSpinners(I)V

    return-void
.end method

.method private resetSpinners(I)V
    .locals 2
    .param p1, "customInputType"    # I

    .prologue
    const/4 v1, 0x0

    .line 366
    packed-switch p1, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showCustomInputDialog(Ljava/lang/String;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "customInputType"    # I

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 311
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0076

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 313
    .local v1, "customInputView":Landroid/view/View;
    const v4, 0x7f0900d8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 315
    .local v0, "customInputEditText":Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v2, "customInputViewAlertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    :cond_0
    new-instance v4, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$1;

    invoke-direct {v4, p0, p2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$1;-><init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    const v4, 0x7f0f002f

    new-instance v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;

    invoke-direct {v5, p0, p2, v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;-><init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;ILandroid/widget/EditText;)V

    .line 330
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;

    invoke-direct {v5, p0, p2}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;-><init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    .line 355
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 363
    return-void
.end method


# virtual methods
.method protected clearIntentOrIntentFilter()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 266
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 268
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 269
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 270
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    sget-object v2, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    sget-object v2, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    sget-object v2, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    sget-object v2, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 251
    :pswitch_4
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->clearIntentOrIntentFilter()V

    .line 252
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x7f09005c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x1090008

    .line 166
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v3, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 170
    const v3, 0x7f0b0021

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, "intentOrIntentFilterView":Landroid/view/View;
    const v3, 0x7f0900e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    .line 176
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    .line 177
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 176
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 179
    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    .line 181
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddActionButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v3, 0x7f0900e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    .line 186
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    .line 187
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 186
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 188
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategoriesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    const v3, 0x7f09005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 191
    .local v1, "addCategoryButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v3, 0x7f0900e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    .line 196
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    .line 197
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 196
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataSchemeAction:Landroid/widget/Button;

    .line 201
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataSchemeAction:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v3, 0x7f0900ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    .line 206
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    .line 207
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 206
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 208
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 209
    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataTypeButton:Landroid/widget/Button;

    .line 211
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddDataTypeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v3, 0x7f0901c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 217
    const v3, 0x7f09005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddButton:Landroid/widget/Button;

    .line 218
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mClearButton:Landroid/widget/Button;

    .line 221
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-object v2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    sget-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->ACTIONS_LIST:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 277
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 282
    :pswitch_1
    sget-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->CATEGORIES_LIST:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 283
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 288
    :pswitch_2
    sget-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_SCHEMES_LIST:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 289
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 294
    :pswitch_3
    sget-object v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->DATA_TYPES_LIST:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 295
    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x7f0900e7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected abstract updateStatusTextView()V
.end method
