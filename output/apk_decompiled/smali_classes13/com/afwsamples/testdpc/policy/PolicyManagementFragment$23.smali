.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForGeneratedKeyAlias(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$customChallengeInput:Landroid/widget/EditText;

.field final synthetic val$deviceBrandAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$deviceImeiAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$deviceMeidAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$deviceSerialAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$ecKeyCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$includeAttestationChallengeCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$useIndividualAttestationCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$useStrongBoxCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$userSelectableCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3078
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$includeAttestationChallengeCheckbox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$customChallengeInput:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceBrandAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceSerialAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceImeiAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceMeidAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p10, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$useIndividualAttestationCheckbox:Landroid/widget/CheckBox;

    iput-object p11, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$useStrongBoxCheckbox:Landroid/widget/CheckBox;

    iput-object p12, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$ecKeyCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3081
    new-instance v3, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;-><init>()V

    .line 3083
    .local v3, "paramsBuilder":Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setAlias(Ljava/lang/String;)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3084
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setIsUserSelectable(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3086
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$includeAttestationChallengeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3087
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$customChallengeInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3088
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3089
    .local v0, "customChallenge":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 3091
    .local v1, "decodedChallenge":[B
    invoke-virtual {v3, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setAttestationChallenge([B)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3094
    .end local v0    # "customChallenge":Ljava/lang/String;
    .end local v1    # "decodedChallenge":[B
    :cond_0
    const/4 v2, 0x0

    .line 3095
    .local v2, "idAttestationFlags":I
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceBrandAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3096
    or-int/lit8 v2, v2, 0x1

    .line 3098
    :cond_1
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceSerialAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3099
    or-int/lit8 v2, v2, 0x2

    .line 3101
    :cond_2
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceImeiAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3102
    or-int/lit8 v2, v2, 0x4

    .line 3104
    :cond_3
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$deviceMeidAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3105
    or-int/lit8 v2, v2, 0x8

    .line 3107
    :cond_4
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$useIndividualAttestationCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3108
    or-int/lit8 v2, v2, 0x10

    .line 3111
    :cond_5
    invoke-virtual {v3, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setIdAttestationFlags(I)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3112
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$useStrongBoxCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setUseStrongBox(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3113
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->val$ecKeyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->setGenerateEcKey(Z)Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;

    .line 3115
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters$Builder;->build()Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V

    .line 3116
    return-void
.end method
