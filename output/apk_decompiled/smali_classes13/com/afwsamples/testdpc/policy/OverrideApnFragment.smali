.class public Lcom/afwsamples/testdpc/policy/OverrideApnFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "OverrideApnFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field private static final ENABLE_OVERRIDE_APN_KEY:Ljava/lang/String; = "enable_override_apn"

.field private static final INSERT_OVERRIDE_APN_KEY:Ljava/lang/String; = "insert_override_apn"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final REMOVE_OVERRIDE_APN_KEY:Ljava/lang/String; = "remove_override_apn"


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "OverrideApnFragment"

    sput-object v0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private UriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p1, "inetAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    :goto_0
    return-object v1

    .line 285
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Can\'t parse InetAddress from string: unknown host."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const v2, 0x7f0f0061

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private makeApnSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZII)Landroid/telephony/data/ApnSetting;
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "apnName"    # Ljava/lang/String;
    .param p4, "proxyAddress"    # Ljava/net/InetAddress;
    .param p5, "proxyPort"    # I
    .param p6, "mmsc"    # Landroid/net/Uri;
    .param p7, "mmsProxyAddress"    # Ljava/net/InetAddress;
    .param p8, "mmsProxyPort"    # I
    .param p9, "user"    # Ljava/lang/String;
    .param p10, "password"    # Ljava/lang/String;
    .param p11, "authType"    # I
    .param p12, "apnTypeBitmask"    # I
    .param p13, "protocol"    # I
    .param p14, "roamingProtocol"    # I
    .param p15, "carrierEnabled"    # Z
    .param p16, "networkTypeBitmask"    # I
    .param p17, "mvnoType"    # I

    .prologue
    .line 255
    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 256
    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1, p2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, p3}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 259
    invoke-virtual {v1, p4}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1, p5}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1, p6}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, p7}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, p8}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p9}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1, p10}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 266
    invoke-virtual {v1, p11}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1, p12}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, p13}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 269
    move/from16 v0, p14

    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 270
    move/from16 v0, p15

    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 271
    move/from16 v0, p17

    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 272
    move/from16 v0, p16

    invoke-virtual {v1, v0}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    return-object v1
.end method

.method private onRemoveOverrideApn()V
    .locals 6

    .prologue
    .line 235
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 236
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "apnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    .line 238
    .local v0, "apn":Landroid/telephony/data/ApnSetting;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    goto :goto_0

    .line 240
    .end local v0    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_0
    return-void
.end method

.method private parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 244
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 246
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 245
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private reloadEnableOverrideApnUi()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 295
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method private varargs showToast(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(Ljava/lang/String;I)V

    .line 302
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 310
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$showInsertOverrideApnDialog$179$OverrideApnFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 22
    .param p14, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p15, "i"    # I

    .prologue
    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "entryName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const v2, 0x7f0f0050

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "apnName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const v2, 0x7f0f0055

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 189
    .local v14, "apnTypeBitmask":I
    if-nez v14, :cond_2

    .line 190
    const v2, 0x7f0f005f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual/range {p5 .. p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 199
    invoke-virtual/range {p6 .. p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 200
    invoke-virtual/range {p7 .. p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->UriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 201
    invoke-virtual/range {p8 .. p8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 202
    invoke-virtual/range {p9 .. p9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 203
    invoke-virtual/range {p10 .. p10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 204
    invoke-virtual/range {p11 .. p11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const v2, 0x7f090039

    .line 210
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 211
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    const v2, 0x7f090044

    .line 213
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 214
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    const v2, 0x7f090046

    .line 215
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 216
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    const v2, 0x7f09003a

    .line 217
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 218
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_3

    const/16 v17, 0x1

    .line 219
    :goto_1
    invoke-virtual/range {p13 .. p13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->parseInt(Ljava/lang/String;I)I

    move-result v18

    const v2, 0x7f09003f

    .line 220
    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 221
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    move-object/from16 v2, p0

    .line 194
    invoke-direct/range {v2 .. v19}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->makeApnSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZII)Landroid/telephony/data/ApnSetting;

    move-result-object v20

    .line 223
    .local v20, "apn":Landroid/telephony/data/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v21

    .line 224
    .local v21, "insertedId":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    .line 225
    const v2, 0x7f0f017d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 218
    .end local v20    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v21    # "insertedId":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 227
    .restart local v20    # "apn":Landroid/telephony/data/ApnSetting;
    .restart local v21    # "insertedId":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted APN id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 65
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0221

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 67
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 72
    const v0, 0x7f120007

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->addPreferencesFromResource(I)V

    .line 74
    const-string v0, "insert_override_apn"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    const-string v0, "remove_override_apn"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v0, "enable_override_apn"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    .line 77
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mEnableOverrideApnPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "key":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 111
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_1
    return v2

    .line 104
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_0
    const-string v4, "enable_override_apn"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 106
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 108
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->reloadEnableOverrideApnUi()V

    .line 109
    const/4 v2, 0x1

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x10c59068
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "key":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 96
    :goto_1
    return v1

    .line 88
    :sswitch_0
    const-string v4, "insert_override_apn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "remove_override_apn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->showInsertOverrideApnDialog()V

    goto :goto_1

    .line 93
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->onRemoveOverrideApn()V

    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        -0x10c6650e -> :sswitch_0
        0x583c6707 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setUpAllSpinners(Landroid/view/View;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;

    .prologue
    const v2, 0x7f030003

    .line 124
    const v0, 0x7f090039

    const/high16 v1, 0x7f030000

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 126
    const v0, 0x7f090044

    invoke-virtual {p0, p1, v0, v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 128
    const v0, 0x7f090046

    invoke-virtual {p0, p1, v0, v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 130
    const v0, 0x7f09003f

    const v1, 0x7f030002

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 132
    const v0, 0x7f09003a

    const v1, 0x7f030001

    invoke-virtual {p0, p1, v0, v1}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpSpinner(Landroid/view/View;II)V

    .line 133
    return-void
.end method

.method setUpSpinner(Landroid/view/View;II)V
    .locals 4
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "textArrayId"    # I

    .prologue
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 117
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    .line 116
    invoke-static {v2, p3, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 118
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    return-void
.end method

.method showInsertOverrideApnDialog()V
    .locals 19

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b003a

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 142
    .local v15, "dialogView":Landroid/view/View;
    const v2, 0x7f09003b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 144
    .local v4, "entryNameEditText":Landroid/widget/EditText;
    const v2, 0x7f090038

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 146
    .local v5, "apnNameEditText":Landroid/widget/EditText;
    const v2, 0x7f090045

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 148
    .local v8, "proxyEditText":Landroid/widget/EditText;
    const v2, 0x7f090043

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 150
    .local v9, "portEditText":Landroid/widget/EditText;
    const v2, 0x7f09003c

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 152
    .local v10, "mmscEditText":Landroid/widget/EditText;
    const v2, 0x7f09003e

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 154
    .local v11, "mmsProxyEditText":Landroid/widget/EditText;
    const v2, 0x7f09003d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 156
    .local v12, "mmsPortEditText":Landroid/widget/EditText;
    const v2, 0x7f090048

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 158
    .local v13, "userEditText":Landroid/widget/EditText;
    const v2, 0x7f090042

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 160
    .local v14, "passwordEditText":Landroid/widget/EditText;
    const v2, 0x7f090047

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 162
    .local v6, "typeEditText":Landroid/widget/EditText;
    const v2, 0x7f090041

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 164
    .local v7, "numericEditText":Landroid/widget/EditText;
    const v2, 0x7f090040

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 166
    .local v16, "networkBitmaskEditText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->setUpAllSpinners(Landroid/view/View;)V

    .line 168
    const v2, 0x7f0f0050

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 169
    const v2, 0x7f0f0055

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 170
    const v2, 0x7f0f005f

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 172
    const v2, 0x7f0f0058

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 174
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f017c

    .line 175
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    new-instance v2, Lcom/afwsamples/testdpc/policy/OverrideApnFragment$$Lambda$0;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/OverrideApnFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;)V

    .line 177
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/16 v17, 0x0

    .line 230
    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
