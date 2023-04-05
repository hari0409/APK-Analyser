.class public Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;
.super Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
.source "EnableSystemAppsByIntentFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActionsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActionsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActionsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private showCustomActionInputDialog()V
    .locals 6

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 176
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0076

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "customInputView":Landroid/view/View;
    const v4, 0x7f0900d8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 178
    .local v0, "customInputEditText":Landroid/widget/EditText;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v2, "customInputViewAlertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    const v4, 0x7f0f002d

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    new-instance v4, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$1;-><init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    const v4, 0x7f0f002f

    new-instance v5, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;-><init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$3;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$3;-><init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    return-void
.end method


# virtual methods
.method protected getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const/4 v1, 0x0

    .line 130
    :cond_0
    return-object v1

    .line 122
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method final synthetic lambda$onClick$95$EnableSystemAppsByIntentFragment(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f013b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    return-void
.end method

.method final synthetic lambda$onClick$96$EnableSystemAppsByIntentFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "isClickHandled":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    if-nez v1, :cond_0

    .line 91
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onClick(Landroid/view/View;)V

    .line 93
    :cond_0
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f013f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 86
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)V

    new-instance v4, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$$Lambda$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x7f09005b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "addButton":Landroid/widget/Button;
    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mAddActionButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    const v2, 0x7f0f0135

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 65
    return-object v1
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
    .line 97
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-super/range {p0 .. p5}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 111
    :goto_0
    return-void

    .line 99
    :pswitch_0
    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->ACTIONS_LIST:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->showCustomActionInputDialog()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 103
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    sget-object v1, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->ACTIONS_LIST:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->updateStatusTextView()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f0900e7
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 49
    return-void
.end method

.method protected updateStatusTextView()V
    .locals 7

    .prologue
    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    const v5, 0x7f0f002d

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mActions:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 145
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const v5, 0x7f0f0086

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mCategories:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    .end local v1    # "category":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const v5, 0x7f0f00c5

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_4
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mDataSchemes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "dataScheme":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 162
    .end local v2    # "dataScheme":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 163
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const v5, 0x7f0f00c6

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_6
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mDataTypes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    .local v3, "dataType":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 171
    .end local v3    # "dataType":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method
