.class public Lcom/afwsamples/testdpc/policy/UserRestriction;
.super Ljava/lang/Object;
.source "UserRestriction.java"


# static fields
.field public static final ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

.field public static final DEVICE_OWNER_ONLY_RESTRICTIONS:[Ljava/lang/String;

.field public static final MANAGED_PROFILE_ONLY_RESTRICTIONS:[Ljava/lang/String;

.field public static MNC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static NON_MANAGED_PROFILE_RESTRICTIONS:[Ljava/lang/String;

.field public static NYC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static OC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static PIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static final PRIMARY_USER_ONLY_RESTRICTIONS:[Ljava/lang/String;

.field public static final PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

.field public static final PROFILE_OWNER_ORG_OWNED_RESTRICTIONS:[Ljava/lang/String;

.field public static QT_PLUS_RESTRICTIONS:[Ljava/lang/String;

.field public static SC_PLUS_RESTRICTIONS:[Ljava/lang/String;


# instance fields
.field public key:Ljava/lang/String;

.field public titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    const/16 v0, 0x36

    new-array v0, v0, [Lcom/afwsamples/testdpc/policy/UserRestriction;

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "allow_parent_profile_app_linking"

    const v3, 0x7f0f004b

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_add_managed_profile"

    const v3, 0x7f0f00f0

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_add_user"

    const v3, 0x7f0f00f1

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_adjust_volume"

    const v3, 0x7f0f00f2

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_control_apps"

    const v3, 0x7f0f00f5

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_bluetooth"

    const v4, 0x7f0f00f7

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_bluetooth"

    const v4, 0x7f0f00fa

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_cell_broadcasts"

    const v4, 0x7f0f00fc

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_credentials"

    const v4, 0x7f0f00fd

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_mobile_networks"

    const v4, 0x7f0f0100

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_tethering"

    const v4, 0x7f0f0103

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_vpn"

    const v4, 0x7f0f0104

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_wifi"

    const v4, 0x7f0f0105

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_create_windows"

    const v4, 0x7f0f0108

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_system_error_dialogs"

    const v4, 0x7f0f0120

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_cross_profile_copy_paste"

    const v4, 0x7f0f0109

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_data_roaming"

    const v4, 0x7f0f010a

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_debugging_features"

    const v4, 0x7f0f010b

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_factory_reset"

    const v4, 0x7f0f010c

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_fun"

    const v4, 0x7f0f010d

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_install_apps"

    const v4, 0x7f0f010e

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_install_unknown_sources"

    const v4, 0x7f0f010f

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_install_unknown_sources_globally"

    const v4, 0x7f0f0110

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_modify_accounts"

    const v4, 0x7f0f0112

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_physical_media"

    const v4, 0x7f0f0113

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_network_reset"

    const v4, 0x7f0f0114

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_outgoing_beam"

    const v4, 0x7f0f0115

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_outgoing_calls"

    const v4, 0x7f0f0116

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_remove_managed_profile"

    const v4, 0x7f0f0118

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_remove_user"

    const v4, 0x7f0f0119

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_safe_boot"

    const v4, 0x7f0f011a

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_set_user_icon"

    const v4, 0x7f0f011b

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_set_wallpaper"

    const v4, 0x7f0f011c

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_share_location"

    const v4, 0x7f0f011e

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_sms"

    const v4, 0x7f0f011f

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_uninstall_apps"

    const v4, 0x7f0f0122

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_unmute_microphone"

    const v4, 0x7f0f0123

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_usb_file_transfer"

    const v4, 0x7f0f0124

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "ensure_verify_apps"

    const v4, 0x7f0f0144

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_autofill"

    const v4, 0x7f0f00f6

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_bluetooth_sharing"

    const v4, 0x7f0f00f8

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_unified_password"

    const v4, 0x7f0f0121

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_user_switch"

    const v4, 0x7f0f0125

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_location"

    const v4, 0x7f0f00ff

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_airplane_mode"

    const v4, 0x7f0f00f3

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_brightness"

    const v4, 0x7f0f00fb

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_date_time"

    const v4, 0x7f0f00fe

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_screen_timeout"

    const v4, 0x7f0f0102

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_ambient_display"

    const v4, 0x7f0f00f4

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_sharing_into_profile"

    const v4, 0x7f0f011d

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_printing"

    const v4, 0x7f0f0117

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "disallow_config_private_dns"

    const v4, 0x7f0f0101

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "disallow_microphone_toggle"

    const v4, 0x7f0f0111

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "disallow_camera_toggle"

    const v4, 0x7f0f00f9

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    .line 222
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/afwsamples/testdpc/policy/UserRestriction;

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_config_date_time"

    const v3, 0x7f0f00fe

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_config_tethering"

    const v3, 0x7f0f0103

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_data_roaming"

    const v3, 0x7f0f010a

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_debugging_features"

    const v3, 0x7f0f010b

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v2, "no_bluetooth"

    const v3, 0x7f0f00f7

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_bluetooth_sharing"

    const v4, 0x7f0f00f8

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_bluetooth"

    const v4, 0x7f0f00fa

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_cell_broadcasts"

    const v4, 0x7f0f00fc

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_location"

    const v4, 0x7f0f00ff

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_mobile_networks"

    const v4, 0x7f0f0100

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "disallow_config_private_dns"

    const v4, 0x7f0f0101

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_config_wifi"

    const v4, 0x7f0f0105

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_content_capture"

    const v4, 0x7f0f0106

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_content_suggestions"

    const v4, 0x7f0f0107

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_safe_boot"

    const v4, 0x7f0f011a

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_share_location"

    const v4, 0x7f0f011e

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_sms"

    const v4, 0x7f0f011f

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_usb_file_transfer"

    const v4, 0x7f0f0124

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_airplane_mode"

    const v4, 0x7f0f00f3

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_physical_media"

    const v4, 0x7f0f0113

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_outgoing_calls"

    const v4, 0x7f0f0116

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestriction;

    const-string v3, "no_unmute_microphone"

    const v4, 0x7f0f0123

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/UserRestriction;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    .line 272
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_add_managed_profile"

    aput-object v1, v0, v5

    const-string v1, "no_add_user"

    aput-object v1, v0, v6

    const-string v1, "no_adjust_volume"

    aput-object v1, v0, v7

    const-string v1, "no_bluetooth"

    aput-object v1, v0, v8

    const-string v1, "no_config_bluetooth"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "no_config_cell_broadcasts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "no_config_mobile_networks"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "no_config_tethering"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "no_config_wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "no_create_windows"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "no_system_error_dialogs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "no_data_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "no_factory_reset"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "no_fun"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "no_physical_media"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "no_network_reset"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "no_outgoing_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "no_remove_managed_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "no_safe_boot"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "no_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "no_unmute_microphone"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "no_usb_file_transfer"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "no_airplane_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "disallow_config_private_dns"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PRIMARY_USER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    .line 302
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "no_user_switch"

    aput-object v1, v0, v5

    const-string v1, "disallow_microphone_toggle"

    aput-object v1, v0, v6

    const-string v1, "disallow_camera_toggle"

    aput-object v1, v0, v7

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->DEVICE_OWNER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    .line 312
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "no_config_date_time"

    aput-object v1, v0, v5

    const-string v1, "no_config_tethering"

    aput-object v1, v0, v6

    const-string v1, "no_data_roaming"

    aput-object v1, v0, v7

    const-string v1, "no_debugging_features"

    aput-object v1, v0, v8

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_OWNED_RESTRICTIONS:[Ljava/lang/String;

    .line 322
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "allow_parent_profile_app_linking"

    aput-object v1, v0, v5

    const-string v1, "no_cross_profile_copy_paste"

    aput-object v1, v0, v6

    const-string v1, "no_unified_password"

    aput-object v1, v0, v7

    const-string v1, "no_sharing_into_profile"

    aput-object v1, v0, v8

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->MANAGED_PROFILE_ONLY_RESTRICTIONS:[Ljava/lang/String;

    .line 332
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_remove_user"

    aput-object v1, v0, v5

    const-string v1, "no_set_wallpaper"

    aput-object v1, v0, v6

    const-string v1, "no_config_date_time"

    aput-object v1, v0, v7

    const-string v1, "no_airplane_mode"

    aput-object v1, v0, v8

    const-string v1, "no_config_screen_timeout"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "no_config_brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "no_ambient_display"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->NON_MANAGED_PROFILE_RESTRICTIONS:[Ljava/lang/String;

    .line 345
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "allow_parent_profile_app_linking"

    aput-object v1, v0, v5

    const-string v1, "no_safe_boot"

    aput-object v1, v0, v6

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->MNC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 350
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "no_data_roaming"

    aput-object v1, v0, v5

    const-string v1, "no_set_user_icon"

    aput-object v1, v0, v6

    const-string v1, "no_set_wallpaper"

    aput-object v1, v0, v7

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->NYC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 356
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_add_managed_profile"

    aput-object v1, v0, v5

    const-string v1, "no_bluetooth"

    aput-object v1, v0, v6

    const-string v1, "no_remove_managed_profile"

    aput-object v1, v0, v7

    const-string v1, "no_autofill"

    aput-object v1, v0, v8

    const-string v1, "no_bluetooth_sharing"

    aput-object v1, v0, v9

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->OC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 364
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_unified_password"

    aput-object v1, v0, v5

    const-string v1, "no_system_error_dialogs"

    aput-object v1, v0, v6

    const-string v1, "no_user_switch"

    aput-object v1, v0, v7

    const-string v1, "no_config_location"

    aput-object v1, v0, v8

    const-string v1, "no_airplane_mode"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "no_config_date_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "no_config_brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "no_config_screen_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "no_ambient_display"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "no_sharing_into_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "no_printing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->PIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 378
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "no_install_unknown_sources_globally"

    aput-object v1, v0, v5

    const-string v1, "disallow_config_private_dns"

    aput-object v1, v0, v6

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->QT_PLUS_RESTRICTIONS:[Ljava/lang/String;

    .line 383
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "disallow_microphone_toggle"

    aput-object v1, v0, v5

    const-string v1, "disallow_camera_toggle"

    aput-object v1, v0, v6

    sput-object v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->SC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "titleResId"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    .line 71
    return-void
.end method
