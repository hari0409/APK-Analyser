.class public Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;
.super Landroid/app/Activity;
.source "GetProvisioningModeActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private containsDoOption(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsPoOption(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishWithIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->finish()V

    .line 129
    return-void
.end method

.method private getAllowedProvisioningModes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.PROVISIONING_ALLOWED_PROVISIONING_MODES"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .restart local v0    # "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    return-object v0
.end method

.method private hideAllOptions(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v1, 0x8

    .line 92
    const v0, 0x7f090118

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    const v0, 0x7f090098

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method

.method private hideDivider(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    const v0, 0x7f090097

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method

.method private onDoButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.PROVISIONING_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->finishWithIntent(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private onPoButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.PROVISIONING_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->finishWithIntent(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method private showDivider(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    const v0, 0x7f090097

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method private showDoOption(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    const v0, 0x7f090098

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v0, 0x7f090099

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private showPoOption(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    const v0, 0x7f090118

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method private showRelevantProvisioningOptions(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->hideAllOptions(Landroid/view/ViewGroup;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->hideDivider(Landroid/view/ViewGroup;)V

    .line 59
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->getAllowedProvisioningModes()Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    .local v0, "allowedProvisioningModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->containsDoOption(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showDoOption(Landroid/view/ViewGroup;)V

    .line 63
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->containsPoOption(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->containsDoOption(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showDivider(Landroid/view/ViewGroup;)V

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showPoOption(Landroid/view/ViewGroup;)V

    .line 69
    :cond_2
    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$GetProvisioningModeActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->onPoButtonClick(Landroid/view/View;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$GetProvisioningModeActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->onDoButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->setResult(I)V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->setContentView(I)V

    .line 46
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/GetProvisioningModeActivity;->showRelevantProvisioningOptions(Landroid/view/ViewGroup;)V

    .line 48
    return-void
.end method
