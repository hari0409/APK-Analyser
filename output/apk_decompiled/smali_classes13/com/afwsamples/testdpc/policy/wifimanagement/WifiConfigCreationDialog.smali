.class public Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
.super Landroid/app/DialogFragment;
.source "WifiConfigCreationDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;
    }
.end annotation


# static fields
.field public static final SECURITY_TYPE_NONE:I = 0x0

.field public static final SECURITY_TYPE_WEP:I = 0x1

.field public static final SECURITY_TYPE_WPA:I = 0x2


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

.field private mOldConfig:Landroid/net/wifi/WifiConfiguration;

.field private mPasswordDirty:Z

.field private mPasswordText:Landroid/widget/EditText;

.field private mPasswordView:Landroid/view/View;

.field private mSaveButton:Landroid/widget/Button;

.field private mSecurityChoicesSpinner:Landroid/widget/Spinner;

.field private mSecurityType:I

.field private mSsidText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    return-void
.end method

.method private enableSaveButtonIfAppropriate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 242
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    .line 243
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    :cond_0
    move v0, v1

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    :cond_1
    return-void

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v2

    .line 241
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v0, v2

    .line 243
    goto :goto_1
.end method

.method private getQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 159
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 176
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iput v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    goto :goto_0

    .line 168
    :cond_1
    iput v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iput v5, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    goto :goto_0
.end method

.method public static newInstance()Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;-><init>()V

    .line 68
    .local v0, "dialog":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    .line 69
    return-object v0
.end method

.method public static newInstance(Landroid/net/wifi/WifiConfiguration;Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    .locals 3
    .param p0, "oldConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "listener"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    .prologue
    const/4 v1, 0x1

    .line 74
    new-instance v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;-><init>()V

    .line 75
    .local v0, "dialog":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    iput-object p0, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    .line 76
    iput-object p1, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    .line 78
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 80
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 82
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    .line 83
    return-object v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    return-void
.end method

.method private updateConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 179
    iget v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    packed-switch v2, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 185
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 186
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 187
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 188
    .local v0, "length":I
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "password":Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_2

    :cond_1
    const-string v2, "[0-9A-Fa-f]*"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v2, v4

    .line 197
    :goto_1
    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_1

    .line 201
    .end local v0    # "length":I
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 202
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 203
    .restart local v0    # "length":I
    if-eqz v0, :cond_0

    .line 204
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1    # "password":Ljava/lang/String;
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_3
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 267
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordDirty:Z

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->enableSaveButtonIfAppropriate()V

    .line 270
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 257
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;->onCancel()V

    .line 156
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 132
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 133
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 134
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->updateConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)V

    .line 135
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigUtil;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 139
    .local v1, "success":Z
    if-eqz v1, :cond_2

    const v2, 0x7f0f038b

    :goto_0
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->showToast(I)V

    .line 141
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "success":Z
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->dismiss()V

    .line 142
    return-void

    .line 139
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "success":Z
    :cond_2
    const v2, 0x7f0f038a

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 90
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b00ba

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "dialogView":Landroid/view/View;
    const v4, 0x7f09010e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordView:Landroid/view/View;

    .line 92
    const v4, 0x7f09017b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    .line 93
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSsidText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    const v4, 0x7f09010c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    .line 95
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    const v4, 0x7f090153

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    .line 98
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030006

    const v6, 0x1090008

    invoke-static {v4, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 101
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityChoicesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->initialize()V

    .line 105
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f003d

    .line 106
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0395

    .line 109
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0388

    .line 110
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mListener:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog$Listener;->onDismiss()V

    .line 149
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 221
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    const v1, 0x7f090153

    if-ne v0, v1, :cond_0

    .line 222
    iput p3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    .line 223
    iget v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSecurityType:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->enableSaveButtonIfAppropriate()V

    .line 238
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mOldConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    const v0, 0x7f0f01da

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 228
    :cond_1
    const v0, 0x7f0f039a

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
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
    .line 252
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 118
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 119
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 123
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 262
    return-void
.end method
