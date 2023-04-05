.class public Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;
.super Landroid/app/Fragment;
.source "ResetPasswordWithTokenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "password-token"

.field private static final REQUEST_CONFIRM_CREDENTIAL:I = 0x1

.field private static final TOKEN_NAME:Ljava/lang/String; = "token"


# instance fields
.field private mBtnActivateToken:Landroid/widget/Button;

.field private mBtnNewToken:Landroid/widget/Button;

.field private mBtnRemoveToken:Landroid/widget/Button;

.field private mBtnSetPassword:Landroid/widget/Button;

.field private mChkDoNotAllowOtherAdminsChange:Landroid/widget/CheckBox;

.field private mChkDoNotRequirePasswordOnBoot:Landroid/widget/CheckBox;

.field private mChkRequireEntry:Landroid/widget/CheckBox;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEdtPassword:Landroid/widget/EditText;

.field private mEdtToken:Landroid/widget/EditText;

.field private mEdtTokenStatus:Landroid/widget/EditText;

.field private mEdtUseToken:Landroid/widget/EditText;

.field private mKeyguardMgr:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private activatePasswordToken()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mKeyguardMgr:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    :cond_0
    return-void
.end method

.method private createNewPasswordToken()V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->generateRandomPasswordToken()[B

    move-result-object v0

    .line 191
    .local v0, "token":[B
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const v1, 0x7f0f02ef

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->savePasswordResetTokenToPreference([B)V

    .line 197
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    goto :goto_0
.end method

.method private generateRandomPasswordToken()[B
    .locals 3

    .prologue
    .line 183
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "directBootContext":Landroid/content/Context;
    const-string v4, "password-token"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 78
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v4, "token"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "tokenString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 80
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v3

    .line 82
    :cond_0
    return-object v3
.end method

.method private reloadTokenInfomation()V
    .locals 5

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B

    move-result-object v1

    .line 105
    .local v1, "token":[B
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "tokenString":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtToken:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtUseToken:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 110
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 109
    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 111
    .local v0, "active":Z
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtTokenStatus:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const v3, 0x7f0f02ac

    :goto_1
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnActivateToken:Landroid/widget/Button;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    return-void

    .line 105
    .end local v0    # "active":Z
    .end local v2    # "tokenString":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0f02ae

    .line 106
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 111
    .restart local v0    # "active":Z
    .restart local v2    # "tokenString":Ljava/lang/String;
    :cond_1
    const v3, 0x7f0f02ad

    goto :goto_1

    .line 113
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private removePasswordToken()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->savePasswordResetTokenToPreference([B)V

    .line 213
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    goto :goto_0
.end method

.method private resetPasswordWithToken()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 217
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtUseToken:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "tokenString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 225
    .local v4, "token":[B
    :goto_0
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "password":Ljava/lang/String;
    const/4 v1, 0x0

    .line 227
    .local v1, "flags":I
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkRequireEntry:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_1
    or-int/2addr v1, v6

    .line 229
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotRequirePasswordOnBoot:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    :goto_2
    or-int/2addr v1, v6

    .line 231
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotAllowOtherAdminsChange:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_3
    or-int/2addr v1, v6

    .line 234
    if-eqz v4, :cond_4

    .line 235
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 236
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v9

    .line 235
    invoke-virtual {v6, v9, v2, v4, v1}, Landroid/app/admin/DevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v3

    .line 238
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 239
    const v6, 0x7f0f02b0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    .line 246
    .end local v3    # "result":Z
    :goto_4
    return-void

    .line 221
    .end local v1    # "flags":I
    .end local v2    # "password":Ljava/lang/String;
    .end local v4    # "token":[B
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .restart local v4    # "token":[B
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "flags":I
    .restart local v2    # "password":Ljava/lang/String;
    :cond_0
    move v6, v8

    .line 227
    goto :goto_1

    :cond_1
    move v6, v8

    .line 229
    goto :goto_2

    :cond_2
    move v6, v8

    .line 231
    goto :goto_3

    .line 241
    .restart local v3    # "result":Z
    :cond_3
    const v6, 0x7f0f02af

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 244
    .end local v3    # "result":Z
    :cond_4
    const v6, 0x7f0f02aa

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private savePasswordResetTokenToPreference([B)V
    .locals 5
    .param p1, "token"    # [B

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "directBootContext":Landroid/content/Context;
    const-string v3, "password-token"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 94
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 95
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 96
    const-string v3, "token"

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void

    .line 98
    :cond_0
    const-string v3, "token"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 173
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->createNewPasswordToken()V

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->removePasswordToken()V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->activatePasswordToken()V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->resetPasswordWithToken()V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x7f090057
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 121
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const v1, 0x7f0b006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtToken:Landroid/widget/EditText;

    .line 130
    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtUseToken:Landroid/widget/EditText;

    .line 131
    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtTokenStatus:Landroid/widget/EditText;

    .line 132
    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mEdtPassword:Landroid/widget/EditText;

    .line 134
    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkRequireEntry:Landroid/widget/CheckBox;

    .line 135
    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotRequirePasswordOnBoot:Landroid/widget/CheckBox;

    .line 137
    const v1, 0x7f09009d

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mChkDoNotAllowOtherAdminsChange:Landroid/widget/CheckBox;

    .line 140
    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnNewToken:Landroid/widget/Button;

    .line 141
    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnRemoveToken:Landroid/widget/Button;

    .line 142
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnActivateToken:Landroid/widget/Button;

    .line 143
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnSetPassword:Landroid/widget/Button;

    .line 145
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnNewToken:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnRemoveToken:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnActivateToken:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->mBtnSetPassword:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->reloadTokenInfomation()V

    .line 73
    return-void
.end method
