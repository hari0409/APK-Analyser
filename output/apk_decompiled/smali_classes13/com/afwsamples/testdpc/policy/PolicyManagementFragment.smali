.class public Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/afwsamples/testdpc/common/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;,
        Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_KEY:Ljava/lang/String; = "add_account"

.field private static final AFFILIATED_USER_KEY:Ljava/lang/String; = "affiliated_user"

.field private static final APP_FEEDBACK_NOTIFICATIONS:Ljava/lang/String; = "app_feedback_notifications"

.field private static final APP_RESTRICTIONS_MANAGING_PACKAGE_KEY:Ljava/lang/String; = "app_restrictions_managing_package"

.field private static final APP_STATUS_KEY:Ljava/lang/String; = "app_status"

.field private static final AUTO_BRIGHTNESS_KEY:Ljava/lang/String; = "auto_brightness"

.field private static final BATTERY_PLUGGED_ANY:Ljava/lang/String;

.field private static final BIND_DEVICE_ADMIN_POLICIES:Ljava/lang/String; = "bind_device_admin_policies"

.field private static final BLOCK_UNINSTALLATION_BY_PKG_KEY:Ljava/lang/String; = "block_uninstallation_by_pkg"

.field private static final BLOCK_UNINSTALLATION_LIST_KEY:Ljava/lang/String; = "block_uninstallation_list"

.field private static final CAPTURE_IMAGE_KEY:Ljava/lang/String; = "capture_image"

.field private static final CAPTURE_IMAGE_REQUEST_CODE:I = 0x1e0b

.field private static final CAPTURE_VIDEO_KEY:Ljava/lang/String; = "capture_video"

.field private static final CAPTURE_VIDEO_REQUEST_CODE:I = 0x1e0c

.field private static final CHECK_LOCK_TASK_PERMITTED_KEY:Ljava/lang/String; = "check_lock_task_permitted"

.field private static final CLEAR_APP_DATA_KEY:Ljava/lang/String; = "clear_app_data"

.field private static final CLEAR_GLOBAL_HTTP_PROXY_KEY:Ljava/lang/String; = "clear_global_http_proxy"

.field private static final COMMON_CRITERIA_MODE_KEY:Ljava/lang/String; = "common_criteria_mode"

.field private static final CREATE_AND_MANAGE_USER_KEY:Ljava/lang/String; = "create_and_manage_user"

.field private static final CREATE_EAP_TLS_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "create_eap_tls_wifi_configuration"

.field private static final CREATE_MANAGED_PROFILE_KEY:Ljava/lang/String; = "create_managed_profile"

.field private static final CREATE_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "create_wifi_configuration"

.field private static final CROSS_PROFILE_APPS:Ljava/lang/String; = "cross_profile_apps"

.field private static final CROSS_PROFILE_APPS_ALLOWLIST:Ljava/lang/String; = "cross_profile_apps_allowlist"

.field private static final CROSS_PROFILE_CALENDAR_KEY:Ljava/lang/String; = "cross_profile_calendar"

.field private static final DELEGATED_CERT_INSTALLER_KEY:Ljava/lang/String; = "manage_cert_installer"

.field private static final DISABLE_CAMERA_KEY:Ljava/lang/String; = "disable_camera"

.field private static final DISABLE_CAMERA_ON_PARENT_KEY:Ljava/lang/String; = "disable_camera_on_parent"

.field private static final DISABLE_KEYGUARD:Ljava/lang/String; = "disable_keyguard"

.field private static final DISABLE_METERED_DATA_KEY:Ljava/lang/String; = "disable_metered_data"

.field private static final DISABLE_SCREEN_CAPTURE_KEY:Ljava/lang/String; = "disable_screen_capture"

.field private static final DISABLE_SCREEN_CAPTURE_ON_PARENT_KEY:Ljava/lang/String; = "disable_screen_capture_on_parent"

.field private static final DISABLE_STATUS_BAR:Ljava/lang/String; = "disable_status_bar"

.field private static final DONT_STAY_ON:Ljava/lang/String; = "0"

.field private static final ENABLE_BACKUP_SERVICE:Ljava/lang/String; = "enable_backup_service"

.field private static final ENABLE_LOGOUT_KEY:Ljava/lang/String; = "enable_logout"

.field private static final ENABLE_NETWORK_LOGGING:Ljava/lang/String; = "enable_network_logging"

.field private static final ENABLE_SECURITY_LOGGING:Ljava/lang/String; = "enable_security_logging"

.field private static final ENABLE_SYSTEM_APPS_BY_INTENT_KEY:Ljava/lang/String; = "enable_system_apps_by_intent"

.field private static final ENABLE_SYSTEM_APPS_BY_PACKAGE_NAME_KEY:Ljava/lang/String; = "enable_system_apps_by_package_name"

.field private static final ENABLE_SYSTEM_APPS_KEY:Ljava/lang/String; = "enable_system_apps"

.field private static final ENABLE_USB_DATA_SIGNALING_KEY:Ljava/lang/String; = "enable_usb_data_signaling"

.field private static final ENROLLMENT_SPECIFIC_ID_KEY:Ljava/lang/String; = "enrollment_specific_id"

.field private static final EPHEMERAL_USER_KEY:Ljava/lang/String; = "ephemeral_user"

.field private static final FACTORY_RESET_ORG_OWNED_DEVICE:Ljava/lang/String; = "factory_reset_org_owned_device"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "PolicyManagementFragment"

.field private static final GENERATE_KEY_CERTIFICATE_KEY:Ljava/lang/String; = "generate_key_and_certificate"

.field private static final GENERIC_DELEGATION_KEY:Ljava/lang/String; = "generic_delegation"

.field private static final GET_CA_CERTIFICATES_KEY:Ljava/lang/String; = "get_ca_certificates"

.field private static final GET_DISABLE_ACCOUNT_MANAGEMENT_KEY:Ljava/lang/String; = "get_disable_account_management"

.field private static final HIDE_APPS_KEY:Ljava/lang/String; = "hide_apps"

.field private static final HIDE_APPS_PARENT_KEY:Ljava/lang/String; = "hide_apps_parent"

.field private static final INSTALL_APK_PACKAGE_KEY:Ljava/lang/String; = "install_apk_package"

.field private static final INSTALL_APK_PACKAGE_REQUEST_CODE:I = 0x1e0d

.field private static final INSTALL_CA_CERTIFICATE_KEY:Ljava/lang/String; = "install_ca_certificate"

.field private static final INSTALL_CA_CERTIFICATE_REQUEST_CODE:I = 0x1e0a

.field private static final INSTALL_EXISTING_PACKAGE_KEY:Ljava/lang/String; = "install_existing_packages"

.field private static final INSTALL_KEY_CERTIFICATE_KEY:Ljava/lang/String; = "install_key_certificate"

.field private static final INSTALL_KEY_CERTIFICATE_REQUEST_CODE:I = 0x1e09

.field private static final INSTALL_NONMARKET_APPS_KEY:Ljava/lang/String; = "install_nonmarket_apps"

.field private static final KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep_uninstalled_packages"

.field private static final LOCK_NOW_KEY:Ljava/lang/String; = "lock_now"

.field private static final LOCK_SCREEN_POLICY_KEY:Ljava/lang/String; = "lock_screen_policy"

.field private static final LOGOUT_USER_KEY:Ljava/lang/String; = "logout_user"

.field public static final LOG_TAG:Ljava/lang/String; = "TestDPC"

.field private static final MANAGED_CONFIGURATIONS_KEY:Ljava/lang/String; = "managed_configurations"

.field private static final MANAGED_PROFILE_SPECIFIC_POLICIES_KEY:Ljava/lang/String; = "managed_profile_policies"

.field private static final MANAGED_SYSTEM_UPDATES_KEY:Ljava/lang/String; = "managed_system_updates"

.field private static final MANAGE_APP_PERMISSIONS_KEY:Ljava/lang/String; = "manage_app_permissions"

.field private static final MANAGE_LOCK_TASK_LIST_KEY:Ljava/lang/String; = "manage_lock_task"

.field private static final MANAGE_OVERRIDE_APN_KEY:Ljava/lang/String; = "manage_override_apn"

.field private static final MODIFY_OWNED_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "modify_owned_wifi_configuration"

.field private static final MODIFY_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "modify_wifi_configuration"

.field private static final MUTE_AUDIO_KEY:Ljava/lang/String; = "mute_audio"

.field private static final NETWORK_STATS_KEY:Ljava/lang/String; = "network_stats"

.field public static final OVERRIDE_KEY_SELECTION_KEY:Ljava/lang/String; = "override_key_selection"

.field private static final PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

.field private static final PASSWORD_COMPLEXITY_KEY:Ljava/lang/String; = "password_complexity"

.field private static final PASSWORD_COMPLIANT_KEY:Ljava/lang/String; = "password_compliant"

.field private static final PASSWORD_CONSTRAINTS_KEY:Ljava/lang/String; = "password_constraints"

.field private static final PROFILE_MAX_TIME_OFF_KEY:Ljava/lang/String; = "profile_max_time_off"

.field private static final REBOOT_KEY:Ljava/lang/String; = "reboot"

.field private static final REENABLE_KEYGUARD:Ljava/lang/String; = "reenable_keyguard"

.field private static final REENABLE_STATUS_BAR:Ljava/lang/String; = "reenable_status_bar"

.field private static final RELAUNCH_IN_LOCK_TASK:Ljava/lang/String; = "relaunch_in_lock_task"

.field private static final REMOVE_ACCOUNT_KEY:Ljava/lang/String; = "remove_account"

.field private static final REMOVE_ALL_CERTIFICATES_KEY:Ljava/lang/String; = "remove_all_ca_certificates"

.field private static final REMOVE_DEVICE_OWNER_KEY:Ljava/lang/String; = "remove_device_owner"

.field private static final REMOVE_KEY_CERTIFICATE_KEY:Ljava/lang/String; = "remove_key_certificate"

.field private static final REMOVE_NOT_OWNED_WIFI_CONFIGURATION_KEY:Ljava/lang/String; = "remove_not_owned_wifi_configurations"

.field private static final REMOVE_USER_KEY:Ljava/lang/String; = "remove_user"

.field private static final REQUEST_BUGREPORT_KEY:Ljava/lang/String; = "request_bugreport"

.field private static final REQUEST_MANAGE_CREDENTIALS_KEY:Ljava/lang/String; = "request_manage_credentials"

.field private static final REQUEST_MANAGE_CREDENTIALS_REQUEST_CODE:I = 0x1e0e

.field private static final REQUEST_NETWORK_LOGS:Ljava/lang/String; = "request_network_logs"

.field private static final REQUEST_PRE_REBOOT_SECURITY_LOGS:Ljava/lang/String; = "request_pre_reboot_security_logs"

.field private static final REQUEST_SECURITY_LOGS:Ljava/lang/String; = "request_security_logs"

.field private static final REQUIRED_PASSWORD_COMPLEXITY_KEY:Ljava/lang/String; = "required_password_complexity"

.field private static final REQUIRED_PASSWORD_COMPLEXITY_ON_PARENT_KEY:Ljava/lang/String; = "required_password_complexity_on_parent"

.field private static final RESET_PASSWORD_KEY:Ljava/lang/String; = "reset_password"

.field private static final SECURITY_PATCH_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final SECURITY_PATCH_KEY:Ljava/lang/String; = "security_patch"

.field private static final SEPARATE_CHALLENGE_KEY:Ljava/lang/String; = "separate_challenge"

.field private static final SET_ACCESSIBILITY_SERVICES_KEY:Ljava/lang/String; = "set_accessibility_services"

.field private static final SET_AFFILIATION_IDS_KEY:Ljava/lang/String; = "set_affiliation_ids"

.field private static final SET_ALWAYS_ON_VPN_KEY:Ljava/lang/String; = "set_always_on_vpn"

.field private static final SET_AUTO_TIME_KEY:Ljava/lang/String; = "set_auto_time"

.field private static final SET_AUTO_TIME_REQUIRED_KEY:Ljava/lang/String; = "set_auto_time_required"

.field private static final SET_AUTO_TIME_ZONE_KEY:Ljava/lang/String; = "set_auto_time_zone"

.field private static final SET_DEVICE_ORGANIZATION_NAME_KEY:Ljava/lang/String; = "set_device_organization_name"

.field private static final SET_DISABLE_ACCOUNT_MANAGEMENT_KEY:Ljava/lang/String; = "set_disable_account_management"

.field private static final SET_FACTORY_RESET_PROTECTION_POLICY_KEY:Ljava/lang/String; = "set_factory_reset_protection_policy"

.field private static final SET_GET_PREFERENTIAL_NETWORK_SERVICE_STATUS:Ljava/lang/String; = "set_get_preferential_network_service_status"

.field private static final SET_GLOBAL_HTTP_PROXY_KEY:Ljava/lang/String; = "set_global_http_proxy"

.field private static final SET_INPUT_METHODS_KEY:Ljava/lang/String; = "set_input_methods"

.field private static final SET_INPUT_METHODS_ON_PARENT_KEY:Ljava/lang/String; = "set_input_methods_on_parent"

.field private static final SET_LOCATION_ENABLED_KEY:Ljava/lang/String; = "set_location_enabled"

.field private static final SET_LOCATION_MODE_KEY:Ljava/lang/String; = "set_location_mode"

.field private static final SET_LOCK_TASK_FEATURES_KEY:Ljava/lang/String; = "set_lock_task_features"

.field private static final SET_LONG_SUPPORT_MESSAGE_KEY:Ljava/lang/String; = "set_long_support_message"

.field private static final SET_NEW_PASSWORD:Ljava/lang/String; = "set_new_password"

.field private static final SET_NEW_PASSWORD_WITH_COMPLEXITY:Ljava/lang/String; = "set_new_password_with_complexity"

.field private static final SET_NOTIFICATION_LISTENERS_KEY:Ljava/lang/String; = "set_notification_listeners"

.field private static final SET_NOTIFICATION_LISTENERS_TEXT_KEY:Ljava/lang/String; = "set_notification_listeners_text"

.field private static final SET_ORGANIZATION_ID_KEY:Ljava/lang/String; = "set_organization_id"

.field private static final SET_PERMISSION_POLICY_KEY:Ljava/lang/String; = "set_permission_policy"

.field private static final SET_PRIVATE_DNS_MODE_KEY:Ljava/lang/String; = "set_private_dns_mode"

.field private static final SET_PROFILE_NAME_KEY:Ljava/lang/String; = "set_profile_name"

.field private static final SET_PROFILE_PARENT_NEW_PASSWORD:Ljava/lang/String; = "set_profile_parent_new_password"

.field private static final SET_PROFILE_PARENT_NEW_PASSWORD_DEVICE_REQUIREMENT:Ljava/lang/String; = "set_profile_parent_new_password_device_requirement"

.field private static final SET_REQUIRED_PASSWORD_COMPLEXITY:Ljava/lang/String; = "set_required_password_complexity"

.field private static final SET_REQUIRED_PASSWORD_COMPLEXITY_ON_PARENT:Ljava/lang/String; = "set_required_password_complexity_on_parent"

.field private static final SET_SCREEN_BRIGHTNESS_KEY:Ljava/lang/String; = "set_screen_brightness"

.field private static final SET_SCREEN_OFF_TIMEOUT_KEY:Ljava/lang/String; = "set_screen_off_timeout"

.field private static final SET_SHORT_SUPPORT_MESSAGE_KEY:Ljava/lang/String; = "set_short_support_message"

.field private static final SET_TIME_KEY:Ljava/lang/String; = "set_time"

.field private static final SET_TIME_ZONE_KEY:Ljava/lang/String; = "set_time_zone"

.field private static final SET_USER_RESTRICTIONS_KEY:Ljava/lang/String; = "set_user_restrictions"

.field private static final SET_USER_RESTRICTIONS_PARENT_KEY:Ljava/lang/String; = "set_user_restrictions_parent"

.field private static final SET_USER_SESSION_MESSAGE_KEY:Ljava/lang/String; = "set_user_session_message"

.field private static final SHOW_WIFI_MAC_ADDRESS_KEY:Ljava/lang/String; = "show_wifi_mac_address"

.field private static final START_KIOSK_MODE:Ljava/lang/String; = "start_kiosk_mode"

.field private static final START_LOCK_TASK:Ljava/lang/String; = "start_lock_task"

.field private static final START_USER_IN_BACKGROUND_KEY:Ljava/lang/String; = "start_user_in_background"

.field private static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"

.field private static final STOP_LOCK_TASK:Ljava/lang/String; = "stop_lock_task"

.field private static final STOP_USER_KEY:Ljava/lang/String; = "stop_user"

.field private static final SUSPEND_APPS_KEY:Ljava/lang/String; = "suspend_apps"

.field private static final SUSPEND_PERSONAL_APPS_KEY:Ljava/lang/String; = "suspend_personal_apps"

.field private static final SWITCH_USER_KEY:Ljava/lang/String; = "switch_user"

.field private static final SYSTEM_UPDATE_PENDING_KEY:Ljava/lang/String; = "system_update_pending"

.field private static final SYSTEM_UPDATE_POLICY_KEY:Ljava/lang/String; = "system_update_policy"

.field public static final TAG:Ljava/lang/String; = "PolicyManagement"

.field private static final TAG_WIFI_CONFIG_CREATION:Ljava/lang/String; = "wifi_config_creation"

.field private static final TEST_KEY_USABILITY_KEY:Ljava/lang/String; = "test_key_usability"

.field private static final TRANSFER_OWNERSHIP_KEY:Ljava/lang/String; = "transfer_ownership_to_component"

.field private static final UNHIDE_APPS_KEY:Ljava/lang/String; = "unhide_apps"

.field private static final UNHIDE_APPS_PARENT_KEY:Ljava/lang/String; = "unhide_apps_parent"

.field private static final UNINSTALL_PACKAGE_KEY:Ljava/lang/String; = "uninstall_package"

.field private static final UNSUSPEND_APPS_KEY:Ljava/lang/String; = "unsuspend_apps"

.field private static final USER_OPERATION_ERROR_UNKNOWN:I = 0x1

.field private static final USER_OPERATION_SUCCESS:I = 0x0

.field private static final WIFI_CONFIG_LOCKDOWN_ENABLE_KEY:Ljava/lang/String; = "enable_wifi_config_lockdown"

.field private static final WIPE_DATA_KEY:Ljava/lang/String; = "wipe_data"

.field public static final X509_CERT_TYPE:Ljava/lang/String; = "X.509"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mAffiliatedUserPreference:Landroidx/preference/Preference;

.field private mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field private mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mEnableAppFeedbackNotificationsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

.field private mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mEphemeralUserPreference:Landroidx/preference/Preference;

.field private mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

.field private mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

.field private mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

.field private mHideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mImageUri:Landroid/net/Uri;

.field private mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mIsProfileOwner:Z

.field private mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

.field private mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

.field private mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

.field private mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnhideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserRestrictionsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 434
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->BATTERY_PLUGGED_ANY:Ljava/lang/String;

    .line 443
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    .line 445
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 446
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 454
    .local v0, "complexityIds":[I
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    .line 460
    .local v1, "complexityNames":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 461
    sget-object v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    aget v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-void

    .line 446
    :array_0
    .array-data 4
        0x0
        0x10000
        0x30000
        0x50000
    .end array-data

    .line 454
    :array_1
    .array-data 4
        0x7f0f022b
        0x7f0f0229
        0x7f0f022a
        0x7f0f0228
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    .line 527
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    .line 528
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    .line 529
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    .line 530
    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    .line 4366
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startKioskMode([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->removeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->requestToManageCredentials(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/security/PrivateKey;
    .param p2, "x2"    # Ljava/security/cert/Certificate;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installKeyPair(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->generateKeyPair(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/Object;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedNotificationListeners(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    return-object v0
.end method

.method static synthetic access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$800(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setDisableAccountManagement(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V
    .locals 5
    .param p1, "pref"    # Landroidx/preference/ListPreference;

    .prologue
    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 896
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 897
    sget-object v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    sget-object v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    :cond_0
    new-array v4, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 901
    new-array v4, v2, [Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 902
    return-void
.end method

.method private chooseAccount()V
    .locals 4

    .prologue
    .line 4271
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4288
    :cond_0
    :goto_0
    return-void

    .line 4275
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4276
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4277
    const v2, 0x7f0f01fa

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4279
    :cond_2
    new-instance v0, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;

    .line 4280
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090012

    invoke-direct {v0, v2, v3, v1}, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4281
    .local v0, "accountArrayAdapter":Lcom/afwsamples/testdpc/common/AccountArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0278

    .line 4282
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$65;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$65;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 4283
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4286
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private choosePrivateKeyForRemoval()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3131
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$24;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3154
    return-void
.end method

.method private clearApplicationUserData(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 3648
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/afwsamples/testdpc/util/MainThreadExecutor;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/util/MainThreadExecutor;-><init>()V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$52;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$52;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V

    .line 3656
    return-void
.end method

.method private constrainSpecialCasePreferences()V
    .locals 2

    .prologue
    .line 927
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 928
    const-string v0, "reset_password"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->clearNonCustomConstraints()V

    .line 930
    :cond_0
    return-void
.end method

.method private dispatchCaptureIntent(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "storageUri"    # Landroid/net/Uri;

    .prologue
    .line 1814
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1815
    .local v0, "captureIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1816
    const-string v1, "output"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1817
    invoke-virtual {p0, v0, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1821
    :goto_0
    return-void

    .line 1819
    :cond_0
    const v1, 0x7f0f0081

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private factoryResetOrgOwnedDevice()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 4321
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$67;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$67;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$68;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$68;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 4324
    return-void
.end method

.method private generateKeyPair(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;)V
    .locals 3
    .param p1, "params"    # Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;

    .prologue
    .line 1807
    new-instance v0, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;-><init>(Lcom/afwsamples/testdpc/policy/keymanagement/KeyGenerationParameters;Landroid/app/Activity;Landroid/content/ComponentName;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/keymanagement/GenerateKeyAndCertificateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1808
    return-void
.end method

.method private getAllInstalledApplicationsSorted()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3678
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3680
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3681
    return-object v0
.end method

.method private getAllLauncherIntentResolversSorted()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/Util;->getLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 3670
    .local v0, "launcherIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    .line 3671
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3672
    .local v1, "launcherIntentResolvers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3674
    return-object v1
.end method

.method private getMeteredDataRestrictedPkgs()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getRequiredComplexity(Landroid/app/admin/DevicePolicyManager;)I
    .locals 1
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 2548
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getRequiredPasswordComplexity()I

    move-result v0

    return v0
.end method

.method private getStorageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1829
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1832
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.afwsamples.testdpc.fileprovider"

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private hasNetworkLoggingDelegation()Z
    .locals 2

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "delegation-network-logging"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/Util;->hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private importCaCertificateFromIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3162
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3178
    :cond_0
    :goto_0
    return-void

    .line 3165
    :cond_1
    const/4 v2, 0x0

    .line 3166
    .local v2, "data":Landroid/net/Uri;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3167
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3168
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 3170
    .local v4, "isCaInstalled":Z
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 3171
    .local v0, "certificateInputStream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v5, v6}, Lcom/afwsamples/testdpc/common/Util;->installCaCertificate(Ljava/io/InputStream;Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3176
    .end local v0    # "certificateInputStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v4, :cond_2

    const v5, 0x7f0f0182

    :goto_2
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3173
    :catch_0
    move-exception v3

    .line 3174
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v5, "PolicyManagement"

    const-string v6, "importCaCertificateFromIntent: "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3176
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    const v5, 0x7f0f0181

    goto :goto_2
.end method

.method private importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2903
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2904
    return-void
.end method

.method private importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "attempts"    # I

    .prologue
    .line 2915
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2918
    :cond_1
    const/4 v0, 0x0

    .line 2919
    .local v0, "data":Landroid/net/Uri;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2921
    if-nez p2, :cond_2

    .line 2922
    const-string p2, ""

    .line 2926
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, p2}, Lcom/afwsamples/testdpc/common/CertificateUtil;->parsePKCS12Certificate(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;

    move-result-object v2

    .line 2927
    .local v2, "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    iget-object v3, v2, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->privateKey:Ljava/security/PrivateKey;

    iget-object v4, v2, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->certificate:Ljava/security/cert/X509Certificate;

    iget-object v5, v2, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->alias:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForKeyCertificateAlias(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2929
    .end local v2    # "parseInfo":Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
    :catch_0
    move-exception v1

    .line 2931
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "PolicyManagement"

    const-string v4, "Unable to load key"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2932
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2933
    .local v1, "e":Ljava/io/IOException;
    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForCertificatePassword(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2934
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 2935
    .local v1, "e":Ljava/lang/ClassCastException;
    const v3, 0x7f0f0208

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2929
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method private installApkPackageFromIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 3365
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3378
    :cond_0
    :goto_0
    return-void

    .line 3369
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 3371
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 3372
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/afwsamples/testdpc/common/PackageInstallationUtils;->installPackage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3373
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 3374
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Failed to open APK file"

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 3375
    const-string v3, "PolicyManagement"

    const-string v4, "Failed to open APK file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private installKeyPair(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isUserSelectable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1788
    :try_start_0
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 1790
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object p2, v3, v2

    if-eqz p4, :cond_0

    const/4 v5, 0x2

    :goto_0
    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v0

    .line 1802
    :goto_1
    return v0

    :cond_0
    move v5, v7

    .line 1790
    goto :goto_0

    .line 1794
    :cond_1
    if-nez p4, :cond_2

    .line 1795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set key as non-user-selectable prior to P"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :catch_0
    move-exception v6

    .line 1801
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v0, "PolicyManagement"

    const-string v1, "Not allowed to install keys"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 1802
    goto :goto_1

    .line 1798
    .end local v6    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method

.method private installUpdate()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .prologue
    .line 1410
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "ota.zip"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1412
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.afwsamples.testdpc.fileprovider"

    .line 1411
    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1413
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    new-instance v4, Lcom/afwsamples/testdpc/util/MainThreadExecutor;

    invoke-direct {v4}, Lcom/afwsamples/testdpc/util/MainThreadExecutor;-><init>()V

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$2;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/app/admin/DevicePolicyManager;->installSystemUpdate(Landroid/content/ComponentName;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    .line 1423
    return-void
.end method

.method private isCredentialManagerApp()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 959
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_1

    .line 965
    :cond_0
    :goto_0
    return v2

    .line 962
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 963
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 965
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isDelegatedApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 949
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v1

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 954
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDeviceOwner()Z
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isManagedProfileOwner()Z
    .locals 1

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNetworkLoggingEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1745
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_1

    .line 1746
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->hasNetworkLoggingDelegation()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1754
    :cond_0
    :goto_0
    return v0

    .line 1750
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->hasNetworkLoggingDelegation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1754
    :cond_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method private isOrganizationOwnedDevice()Z
    .locals 2

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    .line 4328
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 4329
    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isOrganizationOwnedDeviceWithManagedProfile()Z

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

.method private isPackageSuspended(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 3661
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPackageSuspended(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3664
    :goto_0
    return v1

    .line 3662
    :catch_0
    move-exception v0

    .line 3663
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PolicyManagement"

    const-string v2, "Unable check if package is suspended"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3664
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecurityLoggingEnabled()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static final synthetic lambda$null$148$PolicyManagementFragment(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 3329
    const-string v0, "enableSystemApp(%s)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/afwsamples/testdpc/common/Util;->onErrorLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$promptInstallUpdate$106$PolicyManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .prologue
    .line 1403
    return-void
.end method

.method static final synthetic lambda$setNotificationAllowlistEditBox$162$PolicyManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .prologue
    .line 3862
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static final synthetic lambda$showChooseUserPrompt$142$PolicyManagementFragment(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .prologue
    .line 2390
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-interface {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;->onUserChosen(Landroid/os/UserHandle;)V

    return-void
.end method

.method static final synthetic lambda$showClearAppDataPrompt$156$PolicyManagementFragment(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 3629
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static final synthetic lambda$showHideAppsOnParentPrompt$152$PolicyManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .prologue
    .line 3506
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static final synthetic lambda$showLockNowPrompt$110$PolicyManagementFragment(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 1499
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final synthetic lambda$showLockNowPrompt$111$PolicyManagementFragment(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 1501
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final synthetic lambda$showSetMeteredDataPrompt$155$PolicyManagementFragment(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 3605
    invoke-virtual/range {p0 .. p5}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private loadAppFeedbackNotifications()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 2451
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2459
    :goto_0
    return-void

    .line 2456
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableAppFeedbackNotificationsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 2457
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0f0064

    .line 2458
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2456
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private loadAppStatus()V
    .locals 4

    .prologue
    .line 2463
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 2464
    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2465
    .local v1, "isOrgOwned":Z
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2466
    if-eqz v1, :cond_1

    .line 2467
    const v0, 0x7f0f0345

    .line 2478
    .local v0, "appStatusStringId":I
    :goto_1
    const-string v2, "app_status"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2479
    return-void

    .line 2464
    .end local v0    # "appStatusStringId":I
    .end local v1    # "isOrgOwned":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2469
    .restart local v1    # "isOrgOwned":Z
    :cond_1
    const v0, 0x7f0f0344

    .restart local v0    # "appStatusStringId":I
    goto :goto_1

    .line 2471
    .end local v0    # "appStatusStringId":I
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2472
    const v0, 0x7f0f0343

    .restart local v0    # "appStatusStringId":I
    goto :goto_1

    .line 2473
    .end local v0    # "appStatusStringId":I
    :cond_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDelegatedApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2474
    const v0, 0x7f0f0342

    .restart local v0    # "appStatusStringId":I
    goto :goto_1

    .line 2476
    .end local v0    # "appStatusStringId":I
    :cond_4
    const v0, 0x7f0f0346

    .restart local v0    # "appStatusStringId":I
    goto :goto_1
.end method

.method private loadEnrollmentSpecificId()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 2503
    const-string v2, "enrollment_specific_id"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2504
    .local v0, "enrollmentSpecificIdPreference":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2511
    :goto_0
    return-void

    .line 2508
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getEnrollmentSpecificId()Ljava/lang/String;

    move-result-object v1

    .line 2510
    .local v1, "esid":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private loadIsEphemeralUserUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2694
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEphemeralUserPreference:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2695
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2696
    .local v0, "isEphemeralUser":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEphemeralUserPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    const v1, 0x7f0f03a4

    :goto_0
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2698
    .end local v0    # "isEphemeralUser":Z
    :cond_0
    return-void

    .line 2696
    .restart local v0    # "isEphemeralUser":Z
    :cond_1
    const v1, 0x7f0f01f9

    goto :goto_0
.end method

.method private loadPasswordComplexity()V
    .locals 9

    .prologue
    .line 2527
    const-string v5, "password_complexity"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 2528
    .local v3, "passwordComplexityPreference":Landroidx/preference/Preference;
    invoke-virtual {v3}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2544
    :goto_0
    return-void

    .line 2533
    :cond_0
    sget-object v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2534
    .local v0, "complexity":I
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_1

    .line 2535
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2536
    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 2537
    .local v2, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2538
    .local v1, "parentComplexity":I
    const v5, 0x7f0f022c

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 2539
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2538
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2543
    .end local v1    # "parentComplexity":I
    .end local v2    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .local v4, "summary":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2541
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_1
.end method

.method private loadPasswordCompliant()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2604
    const-string v6, "password_compliant"

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 2605
    .local v4, "passwordCompliantPreference":Landroidx/preference/Preference;
    invoke-virtual {v4}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2628
    :goto_0
    return-void

    .line 2610
    :cond_0
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    .line 2611
    .local v0, "compliant":Z
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2612
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2613
    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 2614
    .local v3, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v2

    .line 2616
    .local v2, "parentCompliant":Z
    sget v6, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x1f

    if-ge v6, v7, :cond_1

    .line 2617
    const-string v1, "N/A"

    .line 2621
    .local v1, "deviceCompliant":Ljava/lang/String;
    :goto_1
    const v6, 0x7f0f022e

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2622
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2621
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2627
    .end local v1    # "deviceCompliant":Ljava/lang/String;
    .end local v2    # "parentCompliant":Z
    .end local v3    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .local v5, "summary":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2619
    .end local v5    # "summary":Ljava/lang/String;
    .restart local v2    # "parentCompliant":Z
    .restart local v3    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deviceCompliant":Ljava/lang/String;
    goto :goto_1

    .line 2624
    .end local v1    # "deviceCompliant":Ljava/lang/String;
    .end local v2    # "parentCompliant":Z
    .end local v3    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2
    const v6, 0x7f0f022f

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    .line 2625
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 2624
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_2
.end method

.method private loadRequiredPasswordComplexity()V
    .locals 9

    .prologue
    .line 2552
    const-string v5, "required_password_complexity"

    .line 2553
    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 2554
    .local v3, "requiredPasswordComplexityPreference":Landroidx/preference/Preference;
    invoke-virtual {v3}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2571
    :goto_0
    return-void

    .line 2559
    :cond_0
    sget-object v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getRequiredComplexity(Landroid/app/admin/DevicePolicyManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2560
    .local v0, "complexity":I
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_1

    .line 2561
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2562
    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 2563
    .local v2, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    sget-object v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->PASSWORD_COMPLEXITY:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getRequiredComplexity(Landroid/app/admin/DevicePolicyManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2564
    .local v1, "parentComplexity":I
    const v5, 0x7f0f022c

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 2565
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2564
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2570
    .end local v1    # "parentComplexity":I
    .end local v2    # "parentDpm":Landroid/app/admin/DevicePolicyManager;
    .local v4, "summary":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2567
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_1
.end method

.method private loadSecurityPatch()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 2483
    const-string v5, "security_patch"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 2484
    .local v4, "securityPatchPreference":Landroidx/preference/Preference;
    invoke-virtual {v4}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2499
    :goto_0
    return-void

    .line 2488
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 2491
    .local v0, "buildSecurityPatch":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2497
    .local v1, "date":Ljava/util/Date;
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2498
    .local v2, "display":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2492
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "display":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2493
    .local v3, "e":Ljava/text/ParseException;
    const v5, 0x7f0f0191

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 2494
    invoke-virtual {p0, v5, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2493
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private loadSeparateChallenge()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2515
    const-string v2, "separate_challenge"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 2516
    .local v1, "separateChallengePreference":Landroidx/preference/Preference;
    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2524
    :goto_0
    return-void

    .line 2520
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2521
    .local v0, "separate":Ljava/lang/Boolean;
    const v2, 0x7f0f02ca

    .line 2522
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2523
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2521
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "separate":Ljava/lang/Boolean;
    :cond_1
    move v2, v4

    .line 2520
    goto :goto_1
.end method

.method private lockNow()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1474
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showLockNowPrompt()V

    .line 1484
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1479
    .local v0, "gateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1481
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    .line 1483
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$22;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$23;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$23;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method private logAndShowToast(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 888
    const-string v0, "PolicyManagement"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method private logoutUser()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2400
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->logoutUser(Landroid/content/ComponentName;)I

    move-result v0

    .line 2401
    .local v0, "status":I
    if-nez v0, :cond_0

    const v1, 0x7f0f0374

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2403
    return-void

    .line 2401
    :cond_0
    const v1, 0x7f0f015f

    goto :goto_0
.end method

.method private maybeDisableLockTaskPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 938
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_0

    .line 939
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "manage_lock_task"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    const-string v4, "check_lock_task_permitted"

    aput-object v4, v0, v3

    const-string v3, "start_lock_task"

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v4, "stop_lock_task"

    aput-object v4, v0, v3

    .line 941
    .local v0, "lockTaskPreferences":[Ljava/lang/String;
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 942
    .local v1, "preference":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 943
    invoke-interface {v2, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 941
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 946
    .end local v0    # "lockTaskPreferences":[Ljava/lang/String;
    .end local v1    # "preference":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private maybeUpdateProfileMaxTimeOff()V
    .locals 4

    .prologue
    .line 869
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 872
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 871
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 870
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "currentValueAsString":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 876
    .end local v0    # "currentValueAsString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onCreateSetNewPasswordWithComplexityPreference()V
    .locals 2

    .prologue
    .line 905
    const-string v1, "set_new_password_with_complexity"

    .line 906
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 907
    .local v0, "complexityPref":Landroidx/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V

    .line 908
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 909
    return-void
.end method

.method private onCreateSetRequiredPasswordComplexityOnParentPreference()V
    .locals 2

    .prologue
    .line 919
    const-string v1, "set_required_password_complexity_on_parent"

    .line 920
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 921
    .local v0, "requiredParentComplexityPref":Landroidx/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V

    .line 922
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 923
    return-void
.end method

.method private onCreateSetRequiredPasswordComplexityPreference()V
    .locals 2

    .prologue
    .line 912
    const-string v1, "set_required_password_complexity"

    .line 913
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 914
    .local v0, "requiredComplexityPref":Landroidx/preference/ListPreference;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPasswordComplexityListToPreference(Landroidx/preference/ListPreference;)V

    .line 915
    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 916
    return-void
.end method

.method private onErrorOrFailureShowToast(Ljava/lang/String;Ljava/lang/Exception;II)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "failureMsgId"    # I
    .param p4, "errorMsgId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4404
    instance-of v0, p2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;

    if-eqz v0, :cond_0

    .line 4405
    const-string v0, "PolicyManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p3, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4411
    :goto_0
    return-void

    .line 4408
    :cond_0
    const-string v0, "PolicyManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4409
    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, p4, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs onErrorShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "msgId"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 4393
    const-string v0, "PolicyManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    invoke-direct {p0, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4395
    return-void
.end method

.method private varargs onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "msgId"    # I
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 4398
    const-string v0, "PolicyManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4399
    invoke-direct {p0, p3, p4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4400
    return-void
.end method

.method private varargs onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "msgId"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 4381
    const-string v0, "PolicyManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    invoke-direct {p0, p2, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4383
    return-void
.end method

.method private varargs onSuccessShowToastWithHardcodedMessage(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 4389
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 4390
    return-void
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 2670
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 2672
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 2671
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 2672
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private promptInstallUpdate()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .prologue
    .line 1397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0189

    .line 1398
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0188

    .line 1399
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f018b

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$20;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$20;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1400
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f018a

    sget-object v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$21;->$instance:Landroid/content/DialogInterface$OnClickListener;

    .line 1402
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1404
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1406
    return-void
.end method

.method private reboot()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 4024
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4025
    const v0, 0x7f0f0272

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4030
    :goto_0
    return-void

    .line 4028
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$57;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$57;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$58;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$58;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->reboot(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0
.end method

.method private relaunchInLockTaskMode()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 3972
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/ActivityManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3974
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3975
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3978
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3979
    const/high16 v4, 0x8000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3981
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 3982
    .local v3, "options":Landroid/app/ActivityOptions;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 3985
    :try_start_0
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 3986
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3990
    :goto_0
    return-void

    .line 3987
    :catch_0
    move-exception v1

    .line 3988
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "You must first allow-list the TestDPC package for LockTask"

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reloadAffiliatedApis()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAffiliatedUserPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2679
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAffiliatedUserPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2680
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f03a4

    .line 2679
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2683
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2684
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2685
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2686
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2687
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2688
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2689
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2690
    return-void

    .line 2680
    :cond_1
    const v0, 0x7f0f01f9

    goto :goto_0
.end method

.method private reloadAutoBrightnessUi()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2640
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2642
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    .line 2641
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2643
    .local v0, "brightnessMode":Ljava/lang/String;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2645
    .end local v0    # "brightnessMode":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "brightnessMode":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 2643
    goto :goto_0
.end method

.method private reloadCameraDisableOnParentUi()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 2708
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2709
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 2710
    .local v1, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2711
    .local v0, "isCameraDisabled":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2712
    return-void
.end method

.method private reloadCameraDisableUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 2702
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2703
    .local v0, "isCameraDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2704
    return-void
.end method

.method private reloadCommonCriteriaModeUi()V
    .locals 3

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2745
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2746
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2745
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2748
    :cond_0
    return-void
.end method

.method private reloadEnableBackupServiceUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2740
    :cond_0
    return-void
.end method

.method private reloadEnableLogoutUi()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2636
    :cond_0
    return-void
.end method

.method private reloadEnableNetworkLoggingUi()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 2716
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2717
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isNetworkLoggingEnabled()Z

    move-result v0

    .line 2718
    .local v0, "isNetworkLoggingEnabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2719
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2721
    .end local v0    # "isNetworkLoggingEnabled":Z
    :cond_0
    return-void
.end method

.method private reloadEnableSecurityLoggingUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 2725
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2726
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2727
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2728
    .local v0, "securityLoggingEnabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2729
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2730
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->refreshEnabledState()V

    .line 2732
    .end local v0    # "securityLoggingEnabled":Z
    :cond_0
    return-void
.end method

.method private reloadEnableUsbDataSignalingUi()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 2752
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2753
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isUsbDataSignalingEnabled()Z

    move-result v0

    .line 2754
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2756
    .end local v0    # "enabled":Z
    :cond_0
    return-void
.end method

.method private reloadLocationEnabledUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 2657
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2658
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2659
    return-void
.end method

.method private reloadLocationModeUi()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2649
    .line 2650
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    .line 2649
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2651
    .local v0, "locationMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 2652
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2653
    return-void
.end method

.method private reloadLockdownAdminConfiguredNetworksUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 2663
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2665
    .local v0, "lockdown":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2666
    return-void
.end method

.method private reloadMuteAudioUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 2804
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2805
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2806
    .local v0, "isAudioMuted":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2808
    .end local v0    # "isAudioMuted":Z
    :cond_0
    return-void
.end method

.method private reloadPersonalAppsSuspendedUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 880
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 882
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v0

    .line 883
    .local v0, "suspendReasons":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 885
    .end local v0    # "suspendReasons":I
    :cond_0
    return-void

    .line 883
    .restart local v0    # "suspendReasons":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reloadScreenCaptureDisableOnParentUi()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 2767
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2768
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 2769
    .local v1, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2770
    .local v0, "isScreenCaptureDisabled":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2771
    return-void
.end method

.method private reloadScreenCaptureDisableUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 2760
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2762
    .local v0, "isScreenCaptureDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 2763
    return-void
.end method

.method private reloadSetAutoTimeRequiredUi()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 2775
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0

    .line 2776
    .local v0, "isAutoTimeRequired":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2777
    return-void
.end method

.method private reloadSetAutoTimeUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 2781
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 2788
    :cond_0
    :goto_0
    return-void

    .line 2784
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isOrganizationOwnedDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2785
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2786
    .local v0, "isAutoTime":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private reloadSetAutoTimeZoneUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 2792
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 2800
    :cond_0
    :goto_0
    return-void

    .line 2795
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isOrganizationOwnedDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2796
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2797
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2798
    .local v0, "isAutoTimeZone":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private removeAccount(Landroid/accounts/Account;)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/accounts/Account;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 4307
    return-void
.end method

.method private removeUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$36;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$36;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$37;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$37;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2308
    return-void
.end method

.method private requestBugReport()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$33;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$33;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$34;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$34;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->requestBugreport(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1773
    return-void
.end method

.method private requestToManageCredentials(Ljava/lang/String;)V
    .locals 9
    .param p1, "policyStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2878
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy$Builder;

    invoke-direct {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;-><init>()V

    .line 2879
    .local v0, "builder":Landroid/security/AppUriAuthenticationPolicy$Builder;
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, "policies":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 2881
    aget-object v4, v2, v1

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2882
    .local v3, "segments":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 2883
    const v4, 0x7f0f018d

    .line 2884
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v6, v5, v7

    .line 2883
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 2892
    .end local v3    # "segments":[Ljava/lang/String;
    :goto_1
    return-void

    .line 2887
    .restart local v3    # "segments":[Ljava/lang/String;
    :cond_0
    aget-object v4, v3, v7

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    aget-object v6, v3, v8

    .line 2888
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    .line 2887
    invoke-virtual {v0, v4, v5, v6}, Landroid/security/AppUriAuthenticationPolicy$Builder;->addAppAndUriMapping(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/security/AppUriAuthenticationPolicy$Builder;

    .line 2880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2890
    .end local v3    # "segments":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;->build()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/security/KeyChain;->createManageCredentialsIntent(Landroid/security/AppUriAuthenticationPolicy;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x1e0e

    invoke-virtual {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private setAutoTimeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 4372
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V

    .line 4373
    return-void
.end method

.method private setAutoTimeZoneEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V

    .line 4378
    return-void
.end method

.method private setBackupServiceEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 1698
    return-void
.end method

.method private setCameraDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1681
    return-void
.end method

.method private setCameraDisabledOnParent(Z)V
    .locals 3
    .param p1, "disabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 1685
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1686
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1687
    .local v0, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 1688
    return-void
.end method

.method private setCommonCriteriaModeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V

    .line 1703
    return-void
.end method

.method private setDisableAccountManagement(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "disabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2182
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2184
    if-eqz p2, :cond_0

    const v0, 0x7f0f0028

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2191
    :goto_1
    return-void

    .line 2184
    :cond_0
    const v0, 0x7f0f0029

    goto :goto_0

    .line 2190
    :cond_1
    const v0, 0x7f0f015d

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setKeyGuardDisabled(Z)V
    .locals 4
    .param p1, "disabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1712
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$31;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$32;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$32;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1717
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1719
    if-eqz p1, :cond_1

    .line 1720
    const v0, 0x7f0f0356

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1722
    :cond_1
    const v0, 0x7f0f0357

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setNotificationAllowlistEditBox()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const v6, 0x7f0f02e6

    .line 3832
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3864
    :cond_0
    :goto_0
    return-void

    .line 3835
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0076

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3836
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0900d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3837
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3838
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 3839
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 3840
    .local v0, "enabledComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 3841
    const-string v3, "null"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3846
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3847
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3848
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$55;

    invoke-direct {v5, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$55;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 3849
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    sget-object v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$56;->$instance:Landroid/content/DialogInterface$OnClickListener;

    .line 3861
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3863
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3843
    :cond_2
    const-string v3, ", "

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setOrganizationId(Ljava/lang/String;)V
    .locals 5
    .param p1, "organizationId"    # Ljava/lang/String;

    .prologue
    .line 4261
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v2, "setOrganizationId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/common/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4267
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadEnrollmentSpecificId()V

    .line 4268
    return-void

    .line 4262
    :catch_0
    move-exception v0

    .line 4263
    .local v0, "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    const-string v1, "PolicyManagement"

    const-string v2, "Error invoking setOrganizationId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4264
    const-string v1, "Error setting organization ID"

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPermittedInputMethodsOnParent()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    .prologue
    .line 3802
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3828
    :cond_0
    :goto_0
    return-void

    .line 3806
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v1

    .line 3807
    .local v1, "parentDpmGateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0055

    const/4 v6, 0x0

    .line 3808
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3810
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3811
    .local v0, "allInputMethodsButton":Landroid/widget/Button;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$53;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$53;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3817
    const v4, 0x7f0901a4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3818
    .local v2, "systemInputMethodsButton":Landroid/widget/Button;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3825
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3826
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 3827
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setPermittedNotificationListeners(Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3902
    .local p1, "permittedNotificationListeners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 3903
    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0

    .line 3905
    .local v0, "result":Z
    if-nez p1, :cond_0

    const v1, 0x7f0f0049

    .line 3908
    .local v1, "successMsgId":I
    :goto_0
    if-eqz v0, :cond_1

    .end local v1    # "successMsgId":I
    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3909
    return-void

    .line 3905
    :cond_0
    const v1, 0x7f0f02ea

    goto :goto_0

    .line 3908
    .restart local v1    # "successMsgId":I
    :cond_1
    const v1, 0x7f0f02e9

    goto :goto_1
.end method

.method private setPreferenceChangeListeners([Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceKeys"    # [Ljava/lang/String;

    .prologue
    .line 2046
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 2047
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2049
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setRequiredPasswordComplexity(I)V
    .locals 1
    .param p1, "complexity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexity(Landroid/app/admin/DevicePolicyManager;I)V

    .line 2579
    return-void
.end method

.method private setRequiredPasswordComplexity(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "complexity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 2595
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequiredPasswordComplexity(I)V

    .line 2596
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordCompliant()V

    .line 2597
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordComplexity()V

    .line 2598
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadRequiredPasswordComplexity()V

    .line 2599
    return-void
.end method

.method private setRequiredPasswordComplexityOnParent(I)V
    .locals 2
    .param p1, "complexity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2587
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2586
    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexity(Landroid/app/admin/DevicePolicyManager;I)V

    .line 2588
    return-void
.end method

.method private setScreenCaptureDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 1730
    return-void
.end method

.method private setScreenCaptureDisabledOnParent(Z)V
    .locals 3
    .param p1, "disabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1e
    .end annotation

    .prologue
    .line 1734
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1735
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1736
    .local v0, "parentDpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 1737
    return-void
.end method

.method private setSecurityLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 1693
    return-void
.end method

.method private setStatusBarDisabled(Z)V
    .locals 2
    .param p1, "disable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    if-eqz p1, :cond_0

    .line 1779
    const-string v0, "Unable to disable status bar when lock password is set."

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 1782
    :cond_0
    return-void
.end method

.method private setUsbDataSignalingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUsbDataSignalingEnabled(Z)V

    .line 1708
    return-void
.end method

.method private showBlockUninstallationByPackageNamePrompt()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2409
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2410
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2413
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0076

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2414
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0900d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2415
    .local v2, "input":Landroid/widget/EditText;
    const v4, 0x7f0f017b

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2416
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2417
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0f0078

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2418
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0074

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$17;

    invoke-direct {v6, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$17;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2419
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0358

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;

    invoke-direct {v6, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$16;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2432
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 2445
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2446
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showBlockUninstallationPrompt()V
    .locals 10

    .prologue
    .line 3272
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3273
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3307
    :cond_0
    :goto_0
    return-void

    .line 3277
    :cond_1
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    .line 3278
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3279
    .local v2, "applicationInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3280
    .local v6, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3282
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3284
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    .line 3285
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3286
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3287
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3291
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    new-instance v3, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .line 3292
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090116

    iget-object v9, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-direct {v3, v7, v8, v6, v9}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/content/ComponentName;)V

    .line 3294
    .local v3, "blockUninstallationInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;
    new-instance v4, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3295
    .local v4, "listview":Landroid/widget/ListView;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3296
    new-instance v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;

    invoke-direct {v7, p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$25;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3302
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0f0078

    .line 3303
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 3304
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0f009f

    const/4 v9, 0x0

    .line 3305
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 3306
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showCaCertificateList()V
    .locals 2

    .prologue
    .line 3210
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3219
    :cond_0
    :goto_0
    return-void

    .line 3214
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3215
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->cancel(Z)Z

    .line 3217
    :cond_2
    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    .line 3218
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mShowCaCertificateListTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ShowCaCertificateListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showCheckLockTaskPermittedPrompt()V
    .locals 5

    .prologue
    .line 1898
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1927
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1902
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0900d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1903
    .local v0, "input":Landroid/widget/EditText;
    const v2, 0x7f0f017b

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1905
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f008f

    .line 1906
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1907
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 1908
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$7;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$7;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1920
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1926
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V
    .locals 4
    .param p1, "titleResId"    # I
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2374
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2393
    :cond_0
    :goto_0
    return-void

    .line 2378
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 2379
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 2380
    .local v0, "secondaryUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2381
    const v2, 0x7f0f0204

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2383
    :cond_2
    new-instance v1, Lcom/afwsamples/testdpc/common/UserArrayAdapter;

    .line 2384
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0901d2

    invoke-direct {v1, v2, v3, v0}, Lcom/afwsamples/testdpc/common/UserArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2385
    .local v1, "userArrayAdapter":Lcom/afwsamples/testdpc/common/UserArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2386
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$42;

    invoke-direct {v3, p2, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$42;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;Ljava/util/List;)V

    .line 2387
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2391
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showClearAppDataPrompt()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 3626
    .line 3627
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllInstalledApplicationsSorted()Ljava/util/List;

    move-result-object v2

    .line 3628
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$50;->$instance:Ljava/util/function/Function;

    .line 3629
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3630
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3631
    .local v1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3632
    const v2, 0x7f0f0095

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3644
    :goto_0
    return-void

    .line 3634
    :cond_0
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090116

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3636
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0098

    .line 3637
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$51;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$51;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3638
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3642
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showConfigurePolicyAndManageCredentialsPrompt()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2838
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    const-string v0, "appUriPolicy"

    .line 2842
    .local v0, "appUriPolicyName":Ljava/lang/String;
    const-string v1, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    .line 2846
    .local v1, "defaultPolicy":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0076

    .line 2847
    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2848
    .local v3, "inputContainer":Landroid/widget/LinearLayout;
    const v4, 0x7f0900d8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2849
    .local v2, "editText":Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2850
    const-string v4, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2851
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "appUriPolicy"

    const-string v6, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2854
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0288

    .line 2855
    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2856
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;

    invoke-direct {v6, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2857
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 2873
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2874
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showCreateAndManageUserPrompt()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 2223
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2227
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2230
    .local v6, "dialogView":Landroid/view/View;
    const v0, 0x7f0901d2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2231
    .local v2, "userNameEditText":Landroid/widget/EditText;
    const v0, 0x7f0f014b

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 2232
    const v0, 0x7f090171

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 2234
    .local v3, "skipSetupWizardCheckBox":Landroid/widget/CheckBox;
    const v0, 0x7f0900ee

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2236
    .local v4, "makeUserEphemeralCheckBox":Landroid/widget/CheckBox;
    const v0, 0x7f0900e0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 2238
    .local v5, "leaveAllSystemAppsEnabled":Landroid/widget/CheckBox;
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    .line 2239
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2240
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2243
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00a8

    .line 2244
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2245
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 2246
    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 2269
    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showDisableAccountTypeList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2197
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2201
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, "disabledAccountTypeList":[Ljava/lang/String;
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2203
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    .line 2204
    :cond_2
    const v1, 0x7f0f01fc

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 2206
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01ac

    .line 2207
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 2208
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090003

    const v5, 0x1020014

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 2211
    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2212
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showEapTlsWifiConfigCreationDialog()V
    .locals 3

    .prologue
    .line 4018
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->newInstance(Landroid/net/wifi/WifiConfiguration;)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    move-result-object v0

    .line 4019
    .local v0, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4020
    return-void
.end method

.method private showEnableSystemAppByPackageNamePrompt()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2814
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2835
    :cond_0
    :goto_0
    return-void

    .line 2817
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    .line 2818
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2819
    .local v1, "inputContainer":Landroid/widget/LinearLayout;
    const v2, 0x7f0900d8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2820
    .local v0, "editText":Landroid/widget/EditText;
    const v2, 0x7f0f0226

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2822
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0140

    .line 2823
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2824
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$43;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$43;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2825
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 2833
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2834
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showEnableSystemAppsPrompt()V
    .locals 5

    .prologue
    .line 3314
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDisabledSystemApps()Ljava/util/List;

    move-result-object v1

    .line 3316
    .local v1, "disabledSystemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3317
    const v2, 0x7f0f01fd

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3332
    :goto_0
    return-void

    .line 3319
    :cond_0
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090116

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3321
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0140

    .line 3322
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;

    invoke-direct {v3, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3323
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3330
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3960
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090078

    .line 3961
    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 3962
    return-void
.end method

.method private showFragment(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 3965
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3966
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090078

    .line 3967
    invoke-virtual {v1, v2, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 3968
    return-void
.end method

.method private showHideAppsOnParentPrompt(Z)V
    .locals 11
    .param p1, "showHiddenApps"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 3470
    if-eqz p1, :cond_0

    .line 3472
    const v7, 0x7f0f035b

    .line 3473
    .local v7, "dialogTitleResId":I
    const v4, 0x7f0f035c

    .line 3474
    .local v4, "successResId":I
    const v5, 0x7f0f035a

    .line 3475
    .local v5, "failureResId":I
    const v6, 0x7f0f035d

    .line 3484
    .local v6, "failureSystemResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0076

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 3485
    .local v8, "view":Landroid/view/View;
    const v0, 0x7f0900d8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3486
    .local v2, "input":Landroid/widget/EditText;
    const v0, 0x7f0f017b

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3488
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3489
    invoke-virtual {p0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3490
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;ZIII)V

    .line 3491
    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    sget-object v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$48;->$instance:Landroid/content/DialogInterface$OnClickListener;

    .line 3506
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3508
    return-void

    .line 3478
    .end local v2    # "input":Landroid/widget/EditText;
    .end local v4    # "successResId":I
    .end local v5    # "failureResId":I
    .end local v6    # "failureSystemResId":I
    .end local v7    # "dialogTitleResId":I
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    const v7, 0x7f0f016f

    .line 3479
    .restart local v7    # "dialogTitleResId":I
    const v4, 0x7f0f0170

    .line 3480
    .restart local v4    # "successResId":I
    const v5, 0x7f0f016e

    .line 3481
    .restart local v5    # "failureResId":I
    const v6, 0x7f0f0171

    .restart local v6    # "failureSystemResId":I
    goto :goto_0
.end method

.method private showHideAppsPrompt(Z)V
    .locals 11
    .param p1, "showHiddenApps"    # Z

    .prologue
    .line 3407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3408
    .local v2, "showApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3410
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllInstalledApplicationsSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 3411
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3413
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3418
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllLauncherIntentResolversSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 3419
    .local v9, "res":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3420
    invoke-virtual {v1, v3, v10}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3422
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3427
    .end local v9    # "res":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3428
    if-eqz p1, :cond_4

    const v0, 0x7f0f0359

    :goto_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3462
    :goto_3
    return-void

    .line 3428
    :cond_4
    const v0, 0x7f0f016d

    goto :goto_2

    .line 3430
    :cond_5
    new-instance v6, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090116

    const/4 v3, 0x1

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3435
    .local v6, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    if-eqz p1, :cond_6

    .line 3437
    const v8, 0x7f0f035e

    .line 3438
    .local v8, "dialogTitleResId":I
    const v4, 0x7f0f035c

    .line 3439
    .local v4, "successResId":I
    const v5, 0x7f0f035a

    .line 3446
    .local v5, "failureResId":I
    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3447
    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$27;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V

    .line 3448
    invoke-virtual {v10, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 3442
    .end local v4    # "successResId":I
    .end local v5    # "failureResId":I
    .end local v8    # "dialogTitleResId":I
    :cond_6
    const v8, 0x7f0f0172

    .line 3443
    .restart local v8    # "dialogTitleResId":I
    const v4, 0x7f0f0170

    .line 3444
    .restart local v4    # "successResId":I
    const v5, 0x7f0f016e

    .restart local v5    # "failureResId":I
    goto :goto_4
.end method

.method private showInstallExistingPackagePrompt()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3339
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3361
    :cond_0
    :goto_0
    return-void

    .line 3342
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    .line 3343
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3344
    .local v1, "inputContainer":Landroid/widget/LinearLayout;
    const v2, 0x7f0900d8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3345
    .local v0, "editText":Landroid/widget/EditText;
    const v2, 0x7f0f0226

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3347
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0185

    .line 3348
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3349
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$46;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$46;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 3350
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 3359
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3360
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showLockNowPrompt()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1491
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1492
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b003f

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1493
    .local v0, "dialogView":Landroid/view/View;
    const v4, 0x7f0900ec

    .line 1494
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1495
    .local v3, "lockParentCheckBox":Landroid/widget/CheckBox;
    const v4, 0x7f0900af

    .line 1496
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1498
    .local v1, "evictKeyCheckBox":Landroid/widget/CheckBox;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$24;

    invoke-direct {v4, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$24;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1500
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$25;

    invoke-direct {v4, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$25;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1503
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f01b0

    .line 1504
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1505
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$26;

    invoke-direct {v6, p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$26;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 1506
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 1515
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1516
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1517
    return-void
.end method

.method private showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V
    .locals 9
    .param p1, "dialogTitle"    # I
    .param p2, "callback"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;

    .prologue
    const/4 v7, 0x0

    .line 1845
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1848
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/afwsamples/testdpc/common/Util;->getLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 1849
    .local v3, "launcherIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1850
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1851
    .local v5, "primaryUserAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1855
    .local v1, "defaultLauncher":Landroid/content/pm/ResolveInfo;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1857
    const v6, 0x7f0f0200

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1859
    :cond_2
    new-instance v6, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1861
    new-instance v0, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

    .line 1862
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090116

    invoke-direct {v0, v6, v7, v5}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1863
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;
    new-instance v4, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1864
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1865
    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;

    invoke-direct {v6, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$4;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1872
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1873
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1874
    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;

    invoke-direct {v8, p0, v0, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V

    .line 1875
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$5;

    invoke-direct {v8, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$5;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 1882
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1889
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private showPendingSystemUpdate()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 1446
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 1447
    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v3

    .line 1448
    .local v3, "updateInfo":Landroid/app/admin/SystemUpdateInfo;
    if-nez v3, :cond_0

    .line 1449
    const v6, 0x7f0f036a

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 1466
    :goto_0
    return-void

    .line 1451
    :cond_0
    invoke-virtual {v3}, Landroid/app/admin/SystemUpdateInfo;->getReceivedTime()J

    move-result-wide v4

    .line 1452
    .local v4, "timestamp":J
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "date":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/app/admin/SystemUpdateInfo;->getSecurityPatchState()I

    move-result v1

    .line 1454
    .local v1, "securityState":I
    if-ne v1, v10, :cond_1

    const v6, 0x7f0f036c

    .line 1455
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1460
    .local v2, "securityText":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f036f

    .line 1461
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0f036b

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    aput-object v2, v8, v10

    .line 1462
    invoke-virtual {p0, v7, v8}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    .line 1463
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1464
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1455
    .end local v2    # "securityText":Ljava/lang/String;
    :cond_1
    if-ne v1, v8, :cond_2

    const v6, 0x7f0f036d

    .line 1457
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const v6, 0x7f0f036e

    .line 1458
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private showPromptForCertificatePassword(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "attempts"    # I

    .prologue
    .line 2948
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2975
    :cond_0
    :goto_0
    return-void

    .line 2951
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0026

    const/4 v4, 0x0

    .line 2952
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2953
    .local v1, "passwordInputView":Landroid/view/View;
    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2954
    .local v0, "input":Landroid/widget/EditText;
    const/4 v2, 0x1

    if-le p2, v2, :cond_2

    .line 2955
    const v2, 0x7f0900d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2957
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f008e

    .line 2958
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2959
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/Intent;I)V

    .line 2960
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$19;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 2968
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2974
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showPromptForGeneratedKeyAlias(Ljava/lang/String;)V
    .locals 17
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 3035
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3120
    :cond_0
    :goto_0
    return-void

    .line 3039
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b003c

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 3041
    .local v14, "aliasNamingView":Landroid/view/View;
    const v1, 0x7f090032

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3042
    .local v3, "input":Landroid/widget/EditText;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3043
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3044
    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 3047
    :cond_2
    const v1, 0x7f090033

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 3049
    .local v4, "userSelectableCheckbox":Landroid/widget/CheckBox;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3051
    const v1, 0x7f0900be

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 3055
    .local v13, "ecKeyCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0900d5

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 3057
    .local v5, "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0900d1

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 3059
    .local v7, "deviceBrandAttestationCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0900d4

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 3061
    .local v8, "deviceSerialAttestationCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0900d2

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 3063
    .local v9, "deviceImeiAttestationCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0900d3

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 3065
    .local v10, "deviceMeidAttestationCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0901d1

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 3067
    .local v12, "useStrongBoxCheckbox":Landroid/widget/CheckBox;
    const v1, 0x7f0901d0

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 3069
    .local v11, "useIndividualAttestationCheckbox":Landroid/widget/CheckBox;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 3072
    const v1, 0x7f090087

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 3075
    .local v6, "customChallengeInput":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f008a

    .line 3076
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3077
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x104000a

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v13}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$23;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 3078
    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v15, 0x0

    .line 3118
    invoke-virtual {v1, v2, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3119
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3049
    .end local v5    # "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    .end local v6    # "customChallengeInput":Landroid/widget/EditText;
    .end local v7    # "deviceBrandAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v8    # "deviceSerialAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v9    # "deviceImeiAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v10    # "deviceMeidAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v11    # "useIndividualAttestationCheckbox":Landroid/widget/CheckBox;
    .end local v12    # "useStrongBoxCheckbox":Landroid/widget/CheckBox;
    .end local v13    # "ecKeyCheckbox":Landroid/widget/CheckBox;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 3069
    .restart local v5    # "includeAttestationChallengeCheckbox":Landroid/widget/CheckBox;
    .restart local v7    # "deviceBrandAttestationCheckbox":Landroid/widget/CheckBox;
    .restart local v8    # "deviceSerialAttestationCheckbox":Landroid/widget/CheckBox;
    .restart local v9    # "deviceImeiAttestationCheckbox":Landroid/widget/CheckBox;
    .restart local v10    # "deviceMeidAttestationCheckbox":Landroid/widget/CheckBox;
    .restart local v11    # "useIndividualAttestationCheckbox":Landroid/widget/CheckBox;
    .restart local v12    # "useStrongBoxCheckbox":Landroid/widget/CheckBox;
    .restart local v13    # "ecKeyCheckbox":Landroid/widget/CheckBox;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private showPromptForKeyCertificateAlias(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x1c

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2987
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 2991
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0b0025

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2993
    .local v6, "passwordInputView":Landroid/view/View;
    const v0, 0x7f090032

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2994
    .local v2, "input":Landroid/widget/EditText;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2995
    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2996
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 2999
    :cond_2
    const v0, 0x7f090033

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 3001
    .local v3, "userSelectableCheckbox":Landroid/widget/CheckBox;
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v0, v8, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 3002
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-ge v0, v8, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3004
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f008a

    .line 3005
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3006
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    .line 3007
    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$21;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$21;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 3020
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3026
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    move v0, v4

    .line 3001
    goto :goto_1

    :cond_4
    move v1, v4

    .line 3002
    goto :goto_2
.end method

.method private showRemoveDeviceOwnerPrompt()V
    .locals 3

    .prologue
    .line 2016
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f027e

    .line 2017
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f027d

    .line 2018
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$35;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$35;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 2019
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 2026
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2027
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2028
    return-void
.end method

.method private showRemoveUserPrompt()V
    .locals 2

    .prologue
    .line 2317
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2318
    const v0, 0x7f0f0285

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$38;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$38;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2322
    :goto_0
    return-void

    .line 2320
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveUserPromptLegacy()V

    goto :goto_0
.end method

.method private showRemoveUserPromptLegacy()V
    .locals 5

    .prologue
    .line 2278
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2302
    :cond_0
    :goto_0
    return-void

    .line 2281
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2282
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0900d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2283
    .local v0, "input":Landroid/widget/EditText;
    const v2, 0x7f0f014a

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 2284
    const/16 v2, 0x1002

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 2286
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0285

    .line 2287
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2288
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$15;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2289
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2301
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showResetPasswordPrompt()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1935
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b0069

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1938
    .local v0, "dialogView":Landroid/view/View;
    const v5, 0x7f09010c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1940
    .local v2, "passwordView":Landroid/widget/EditText;
    const v5, 0x7f090139

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1942
    .local v3, "requireEntry":Landroid/widget/CheckBox;
    const v5, 0x7f09009e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1945
    .local v1, "dontRequireOnBoot":Landroid/widget/CheckBox;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 1971
    .local v4, "resetListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f02a0

    .line 1972
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1973
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    .line 1974
    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 1975
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1976
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1977
    return-void
.end method

.method private showSetDisableAccountManagementPrompt()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2152
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2156
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0900d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2157
    .local v0, "input":Landroid/widget/EditText;
    const v2, 0x7f0f002c

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 2159
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f02d7

    .line 2160
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2161
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f00e6

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$13;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$13;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2162
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0135

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 2169
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 2176
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2177
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetGlobalHttpProxyDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3226
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3264
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0068

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3232
    .local v0, "dialogView":Landroid/view/View;
    const v4, 0x7f090130

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3233
    .local v2, "hostEditText":Landroid/widget/EditText;
    const v4, 0x7f090131

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3234
    .local v3, "portEditText":Landroid/widget/EditText;
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3235
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3236
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3237
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3240
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f02da

    .line 3241
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 3242
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;

    invoke-direct {v6, p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 3243
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 3262
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 3263
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetMeteredDataPrompt()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 3584
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3585
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3613
    :cond_0
    :goto_0
    return-void

    .line 3589
    :cond_1
    iget-object v7, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    .line 3590
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3591
    .local v2, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3592
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3594
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3595
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 3596
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 3597
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3599
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v4, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    .line 3600
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 3601
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getMeteredDataRestrictedPkgs()Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v7, v6, v8}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 3602
    .local v4, "meteredDataRestrictionInfoAdapter":Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3603
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3604
    new-instance v7, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$49;

    invoke-direct {v7, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$49;-><init>(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3607
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0f01d7

    .line 3608
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 3609
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0f0370

    .line 3610
    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0f009f

    const/4 v9, 0x0

    .line 3611
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 3612
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetOrganizationIdDialog()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4233
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4256
    :cond_0
    :goto_0
    return-void

    .line 4237
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4239
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f0900d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4241
    .local v1, "organizationIdTextEdit":Landroid/widget/EditText;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4243
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f02ed

    .line 4244
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4245
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$64;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$64;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4246
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 4254
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4255
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetPermissionPolicyDialog()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2145
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0071

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2105
    .local v2, "setPermissionPolicyView":Landroid/view/View;
    const v3, 0x7f090166

    .line 2106
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 2108
    .local v0, "permissionGroup":Landroid/widget/RadioGroup;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v1

    .line 2109
    .local v1, "permissionPolicy":I
    packed-switch v1, :pswitch_data_0

    .line 2121
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f02d6

    .line 2122
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2123
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;

    invoke-direct {v5, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/RadioGroup;)V

    .line 2124
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2144
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2111
    :pswitch_0
    const v3, 0x7f09012f

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    .line 2114
    :pswitch_1
    const v3, 0x7f09000f

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    .line 2117
    :pswitch_2
    const v3, 0x7f090092

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    .line 2109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showSetProfileNameDialog()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4203
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4226
    :cond_0
    :goto_0
    return-void

    .line 4207
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4209
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f0900d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4211
    .local v1, "profileNameEditText":Landroid/widget/EditText;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4213
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f02f0

    .line 4214
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4215
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$63;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$63;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4216
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 4224
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4225
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetScreenBrightnessDialog()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4043
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4077
    :cond_0
    :goto_0
    return-void

    .line 4047
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4049
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0900d8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 4052
    .local v0, "brightnessEditText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    .line 4051
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4053
    .local v2, "oldBrightness":Ljava/lang/String;
    const v3, 0x7f0f02f4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 4054
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4055
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4058
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f02f3

    .line 4059
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4060
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$59;

    invoke-direct {v5, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$59;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4061
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 4075
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4076
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetScreenOffTimeoutDialog()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4085
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4121
    :cond_0
    :goto_0
    return-void

    .line 4089
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0076

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4091
    .local v0, "dialogView":Landroid/view/View;
    const v4, 0x7f0900d8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 4094
    .local v3, "timeoutEditText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    .line 4093
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4095
    .local v1, "oldTimeout":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4096
    .local v2, "oldTimeoutValue":I
    const v4, 0x7f0f02f6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 4097
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4098
    div-int/lit16 v4, v2, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4101
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f02f5

    .line 4102
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4103
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$60;

    invoke-direct {v6, p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$60;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4104
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 4119
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 4120
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetTimeDialog()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4128
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4159
    :cond_0
    :goto_0
    return-void

    .line 4132
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4134
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0900d8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 4136
    .local v2, "timeEditText":Landroid/widget/EditText;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 4137
    .local v0, "currentTime":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4139
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f02f9

    .line 4140
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4141
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$61;

    invoke-direct {v5, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$61;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4142
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 4157
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4158
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetTimeZoneDialog()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4167
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4196
    :cond_0
    :goto_0
    return-void

    .line 4171
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4173
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0900d8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 4175
    .local v2, "timezoneEditText":Landroid/widget/EditText;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 4176
    .local v0, "currentTimezone":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4178
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f02fb

    .line 4179
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4180
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$62;

    invoke-direct {v5, p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$62;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V

    .line 4181
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 4194
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 4195
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showSetupManagement()V
    .locals 3

    .prologue
    .line 4033
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/SetupManagementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4034
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4035
    return-void
.end method

.method private showStartUserInBackgroundPrompt()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2343
    const v0, 0x7f0f031a

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$40;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$40;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2350
    return-void
.end method

.method private showStopUserPrompt()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2358
    const v0, 0x7f0f0320

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$41;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$41;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2363
    return-void
.end method

.method private showSuspendAppsPrompt(Z)V
    .locals 11
    .param p1, "forUnsuspending"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 3515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3516
    .local v2, "showApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3518
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllInstalledApplicationsSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 3519
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3520
    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3525
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllLauncherIntentResolversSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 3526
    .local v9, "res":Landroid/content/pm/ResolveInfo;
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3527
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3528
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3533
    .end local v9    # "res":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3534
    if-eqz p1, :cond_4

    const v0, 0x7f0f0365

    :goto_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3577
    :goto_3
    return-void

    .line 3534
    :cond_4
    const v0, 0x7f0f0327

    goto :goto_2

    .line 3538
    :cond_5
    new-instance v6, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090116

    const/4 v3, 0x1

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3543
    .local v6, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    if-eqz p1, :cond_6

    .line 3545
    const v8, 0x7f0f0368

    .line 3546
    .local v8, "dialogTitleResId":I
    const v4, 0x7f0f0367

    .line 3547
    .local v4, "successResId":I
    const v5, 0x7f0f0366

    .line 3554
    .local v5, "failureResId":I
    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3555
    invoke-virtual {p0, v8}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$28;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;ZII)V

    .line 3556
    invoke-virtual {v10, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3575
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 3550
    .end local v4    # "successResId":I
    .end local v5    # "failureResId":I
    .end local v8    # "dialogTitleResId":I
    :cond_6
    const v8, 0x7f0f032a

    .line 3551
    .restart local v8    # "dialogTitleResId":I
    const v4, 0x7f0f0329

    .line 3552
    .restart local v4    # "successResId":I
    const v5, 0x7f0f0328

    .restart local v5    # "failureResId":I
    goto :goto_4
.end method

.method private showSwitchUserPrompt()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 2330
    const v0, 0x7f0f0331

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$39;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$39;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showChooseUserPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$UserCallback;)V

    .line 2335
    return-void
.end method

.method private varargs showToast(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 3685
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    .line 3686
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3689
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V

    .line 3690
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 3693
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3694
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3695
    :cond_0
    const-string v1, "PolicyManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not toasting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as activity is finishing or finished"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :goto_0
    return-void

    .line 3698
    :cond_1
    const-string v1, "PolicyManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showUninstallPackagePrompt()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 3382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3383
    .local v1, "installedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getAllLauncherIntentResolversSorted()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 3384
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3385
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3388
    .end local v2    # "res":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090116

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 3390
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f035f

    .line 3391
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$26;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V

    .line 3392
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3399
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3400
    return-void
.end method

.method private showWifiConfigCreationDialog()V
    .locals 3

    .prologue
    .line 4013
    invoke-static {}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->newInstance()Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;

    move-result-object v0

    .line 4014
    .local v0, "dialog":Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "wifi_config_creation"

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiConfigCreationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4015
    return-void
.end method

.method private showWifiMacAddress()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 2035
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "macAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2038
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0312

    .line 2039
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2040
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    .line 2041
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2042
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2043
    return-void

    .line 2036
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0f0311

    .line 2037
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showWipeDataPrompt()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1984
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1985
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b00bd

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1986
    .local v0, "dialogView":Landroid/view/View;
    const v4, 0x7f0900b6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1988
    .local v1, "externalStorageCheckBox":Landroid/widget/CheckBox;
    const v4, 0x7f09013b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1991
    .local v3, "resetProtectionCheckBox":Landroid/widget/CheckBox;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f03a0

    .line 1992
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1993
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;

    invoke-direct {v6, p0, v1, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 1994
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 2008
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2009
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2010
    return-void
.end method

.method private startKioskMode([Ljava/lang/String;)V
    .locals 5
    .param p1, "lockTaskArray"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3993
    new-instance v0, Landroid/content/ComponentName;

    .line 3994
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3997
    .local v0, "customLauncher":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4003
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 4004
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->getHomeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 4003
    invoke-virtual {v2, v3, v4, v0}, Landroid/app/admin/DevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 4005
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4006
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v2, "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4008
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 4009
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 4010
    return-void
.end method

.method private testKeyCanBeUsedForSigning()V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1427
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$3;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method private updateStayOnWhilePluggedInPreference()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2062
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2077
    :goto_0
    return-void

    .line 2066
    :cond_0
    const/4 v0, 0x0

    .line 2067
    .local v0, "checked":Z
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2069
    .local v1, "currentState":I
    and-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 2073
    :goto_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v5, "stay_on_while_plugged_in"

    if-eqz v0, :cond_2

    sget-object v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->BATTERY_PLUGGED_ANY:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4, v5, v2}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2069
    goto :goto_1

    .line 2073
    :cond_2
    sget-object v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->DONT_STAY_ON:Ljava/lang/String;

    goto :goto_2
.end method

.method private validateAffiliatedUserAfterP()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 4311
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4312
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4313
    const v0, 0x7f0f0290

    .line 4316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeviceOwnerBeforeO()I
    .locals 2

    .prologue
    .line 4333
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 4334
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4335
    const v0, 0x7f0f0297

    .line 4338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeviceOwnerBeforeP()I
    .locals 2

    .prologue
    .line 4342
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 4343
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4344
    const v0, 0x7f0f0297

    .line 4347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeviceOwnerBeforeQ()I
    .locals 2

    .prologue
    .line 4351
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 4352
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4353
    const v0, 0x7f0f0297

    .line 4356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeviceOwnerOrDelegationNetworkLoggingBeforeS()I
    .locals 2

    .prologue
    .line 4360
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDeviceOwner()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->hasNetworkLoggingDelegation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4361
    :cond_0
    const v0, 0x7f0f0298

    .line 4363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$PolicyManagementFragment()I
    .locals 1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateAffiliatedUserAfterP()I

    move-result v0

    return v0
.end method

.method final bridge synthetic bridge$lambda$1$PolicyManagementFragment()I
    .locals 1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerBeforeP()I

    move-result v0

    return v0
.end method

.method final bridge synthetic bridge$lambda$2$PolicyManagementFragment()I
    .locals 1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerBeforeQ()I

    move-result v0

    return v0
.end method

.method final bridge synthetic bridge$lambda$3$PolicyManagementFragment()I
    .locals 1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerOrDelegationNetworkLoggingBeforeS()I

    move-result v0

    return v0
.end method

.method final bridge synthetic bridge$lambda$4$PolicyManagementFragment()I
    .locals 1

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->validateDeviceOwnerBeforeO()I

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 852
    const-string v0, "%smAdminComponentName: %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 853
    const-string v0, "%smImageUri: %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 854
    const-string v0, "%smmVideoUri: %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 855
    const-string v0, "%smmVideoUri: %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 856
    const-string v0, "%sisManagedProfileOwner(): %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isManagedProfileOwner()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 857
    const-string v0, "%sisDeviceOwner(): %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/Util;->isDeviceOwner(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 858
    const-string v0, "%sisSystemUser(): %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 859
    const-string v0, "%sisPrimaryUser(): %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/Util;->isPrimaryUser(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 860
    const-string v0, "%sisRunningOnTvDevice(): %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnTvDevice(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 861
    const-string v0, "%sisRunningOnAutomotiveDevice(): %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 862
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/Util;->isRunningOnAutomotiveDevice(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    .line 861
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 866
    return-void
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 970
    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$chooseAccount$171$PolicyManagementFragment(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .prologue
    .line 4285
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->removeAccount(Landroid/accounts/Account;)V

    return-void
.end method

.method final synthetic lambda$clearApplicationUserData$158$PolicyManagementFragment(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "__"    # Ljava/lang/String;
    .param p3, "succeed"    # Z

    .prologue
    .line 3652
    if-eqz p3, :cond_0

    const v0, 0x7f0f0097

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const v0, 0x7f0f0096

    goto :goto_0
.end method

.method final synthetic lambda$factoryResetOrgOwnedDevice$173$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 4322
    const-string v0, "wipeData"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$factoryResetOrgOwnedDevice$174$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 4323
    const-string v0, "wipeData"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$lockNow$108$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1483
    const-string v0, "lockNow"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$lockNow$109$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1483
    const-string v0, "lockNow"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$null$102$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 997
    const-string v0, "setLockTaskPackages()"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$null$103$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 998
    const-string v0, "setLockTaskPackages()"

    const v1, 0x7f0f01bb

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$112$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1512
    const-string v0, "lockNow"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$null$113$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1513
    const-string v0, "lockNow"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$null$125$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    const v0, 0x7f0f00e4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 2023
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2024
    :cond_0
    return-void
.end method

.method final synthetic lambda$null$126$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2024
    const-string v0, "clearDeviceOwnerApp"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$null$133$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 2332
    const-string v0, "switchUser"

    const v1, 0x7f0f0381

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$134$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2333
    const-string v0, "switchUser"

    const v1, 0x7f0f0165

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$136$PolicyManagementFragment(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 2345
    const-string v0, "startUserInBackground"

    const v1, 0x7f0f037e

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$137$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2347
    const-string v0, "startUserInBackground"

    const v1, 0x7f0f0163

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$139$PolicyManagementFragment(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 2360
    const-string v0, "stopUser"

    const v1, 0x7f0f037f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$140$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2361
    const-string v0, "stopUser"

    const v1, 0x7f0f0164

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$143$PolicyManagementFragment(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 2828
    const-string v0, "enableSystemApp"

    const v1, 0x7f0f013e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$144$PolicyManagementFragment(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2831
    const-string v0, "enableSystemApp"

    const v1, 0x7f0f0225

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$null$147$PolicyManagementFragment(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 3326
    const-string v0, "enableSystemApp"

    const v1, 0x7f0f013e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$onCreatePreferences$100$PolicyManagementFragment()I
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_install_unknown_sources_globally"

    .line 749
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0f0377

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final synthetic lambda$onCreatePreferences$101$PolicyManagementFragment()I
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f0291

    goto :goto_0
.end method

.method final synthetic lambda$onCreatePreferences$98$PolicyManagementFragment()I
    .locals 1

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isSecurityLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f029e

    goto :goto_0
.end method

.method final synthetic lambda$onCreatePreferences$99$PolicyManagementFragment()I
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isNetworkLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f029a

    goto :goto_0
.end method

.method final synthetic lambda$onPreferenceChange$115$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1573
    const-string v0, "setPreferentialNetworkServiceEnabled(%b)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1575
    invoke-interface {v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPreferentialNetworkServiceEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1573
    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToastWithHardcodedMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$onPreferenceChange$116$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1576
    const-string v0, "setPreferentialNetworkServiceEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$onPreferenceChange$117$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1610
    const-string v0, "setOrganizationName"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onPreferenceChange$118$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1611
    const-string v0, "setOrganizationName"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$onPreferenceClick$104$PolicyManagementFragment([Ljava/lang/String;)V
    .locals 3
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$83;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$83;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$84;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$84;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskPackages([Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method final synthetic lambda$promptInstallUpdate$105$PolicyManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1401
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installUpdate()V

    return-void
.end method

.method final synthetic lambda$reboot$163$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 4028
    const-string v0, "reboot"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$reboot$164$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 4029
    const-string v0, "reboot"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$removeAccount$172$PolicyManagementFragment(Landroid/accounts/Account;Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .param p2, "future"    # Landroid/accounts/AccountManagerFuture;

    .prologue
    const v8, 0x7f0f015c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4294
    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 4295
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4296
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 4297
    const v3, 0x7f0f0324

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4306
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "success":Z
    :goto_0
    return-void

    .line 4299
    .restart local v1    # "result":Landroid/os/Bundle;
    .restart local v2    # "success":Z
    :cond_0
    const v3, 0x7f0f015c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4301
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 4302
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "PolicyManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4303
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-direct {p0, v8, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4301
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final synthetic lambda$removeUser$130$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 3
    .param p1, "u"    # Ljava/lang/Void;

    .prologue
    .line 2306
    const-string v0, "removeUser()"

    const v1, 0x7f0f0376

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessShowToast(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$removeUser$131$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2307
    const-string v0, "removeUser()"

    const v1, 0x7f0f0160

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorShowToast(Ljava/lang/String;Ljava/lang/Exception;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$requestBugReport$121$PolicyManagementFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1769
    const-string v0, "requestBugreport"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$requestBugReport$122$PolicyManagementFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1770
    const-string v0, "requestBugreport"

    const v1, 0x7f0f007e

    const v2, 0x7f0f007a

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onErrorOrFailureShowToast(Ljava/lang/String;Ljava/lang/Exception;II)V

    return-void
.end method

.method final synthetic lambda$setKeyGuardDisabled$119$PolicyManagementFragment(ZLjava/lang/Void;)V
    .locals 4
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 1713
    const-string v0, "setKeyGuardDisabled(%b)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$setKeyGuardDisabled$120$PolicyManagementFragment(ZLjava/lang/Exception;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1714
    if-eqz p1, :cond_0

    const v0, 0x7f0f0356

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const v0, 0x7f0f0357

    goto :goto_0
.end method

.method final synthetic lambda$setNotificationAllowlistEditBox$161$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 3851
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3852
    .local v1, "packageNames":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3853
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedNotificationListeners(Ljava/util/List;)V

    .line 3859
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 3860
    return-void

    .line 3856
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s*,\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3855
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3857
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedNotificationListeners(Ljava/util/List;)V

    goto :goto_0
.end method

.method final synthetic lambda$setPermittedInputMethodsOnParent$159$PolicyManagementFragment(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 3812
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermittedInputMethods(Ljava/util/List;)Z

    move-result v0

    .line 3813
    .local v0, "result":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0f0048

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3816
    return-void

    .line 3813
    :cond_0
    const v1, 0x7f0f003c

    goto :goto_0
.end method

.method final synthetic lambda$setPermittedInputMethodsOnParent$160$PolicyManagementFragment(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 3819
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermittedInputMethods(Ljava/util/List;)Z

    move-result v0

    .line 3820
    .local v0, "result":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0f0332

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3823
    return-void

    .line 3820
    :cond_0
    const v1, 0x7f0f003c

    goto :goto_0
.end method

.method final synthetic lambda$showClearAppDataPrompt$157$PolicyManagementFragment(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .prologue
    .line 3641
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->clearApplicationUserData(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$showEnableSystemAppByPackageNamePrompt$145$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 2826
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$71;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$71;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$72;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$72;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2832
    return-void
.end method

.method final synthetic lambda$showEnableSystemAppsPrompt$149$PolicyManagementFragment(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "position"    # I

    .prologue
    .line 3324
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3325
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$69;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$70;

    invoke-direct {v3, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$70;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 3329
    return-void
.end method

.method final synthetic lambda$showHideAppsOnParentPrompt$151$PolicyManagementFragment(Landroid/widget/EditText;ZIIILandroid/content/DialogInterface;I)V
    .locals 7
    .param p6, "dialog"    # Landroid/content/DialogInterface;
    .param p7, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3492
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3494
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    if-nez p2, :cond_0

    move v2, v3

    .line 3495
    :goto_0
    invoke-virtual {v5, v6, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3497
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-direct {p0, p3, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3504
    :goto_1
    invoke-interface {p6}, Landroid/content/DialogInterface;->dismiss()V

    .line 3505
    return-void

    :cond_0
    move v2, v4

    .line 3494
    goto :goto_0

    .line 3499
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-virtual {p0, p4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3501
    :catch_0
    move-exception v0

    .line 3502
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {p0, p5, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method final synthetic lambda$showInstallExistingPackagePrompt$150$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 3351
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3352
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    .line 3354
    .local v1, "success":Z
    if-eqz v1, :cond_0

    const v2, 0x7f0f0184

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3357
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 3358
    return-void

    .line 3354
    :cond_0
    const v2, 0x7f0f0225

    goto :goto_0
.end method

.method final synthetic lambda$showLockNowPrompt$114$PolicyManagementFragment(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .prologue
    .line 1507
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1509
    .local v0, "flags":I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v1

    .line 1512
    .local v1, "gateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    :goto_1
    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$81;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$81;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$82;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$82;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1514
    return-void

    .line 1507
    .end local v0    # "flags":I
    .end local v1    # "gateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1510
    .restart local v0    # "flags":I
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    goto :goto_1
.end method

.method final synthetic lambda$showRemoveDeviceOwnerPrompt$127$PolicyManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$79;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$79;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$80;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$80;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->clearDeviceOwnerApp(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method final synthetic lambda$showRemoveUserPrompt$132$PolicyManagementFragment(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "u"    # Landroid/os/UserHandle;

    .prologue
    .line 2318
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->removeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method final synthetic lambda$showSetGlobalHttpProxyDialog$146$PolicyManagementFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 3244
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3245
    .local v0, "hostString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3246
    const v3, 0x7f0f01fe

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 3261
    :goto_0
    return-void

    .line 3249
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3250
    .local v2, "portString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3251
    const v3, 0x7f0f01ff

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3254
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3255
    .local v1, "port":I
    const v3, 0xffff

    if-le v1, v3, :cond_2

    .line 3256
    const v3, 0x7f0f025e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 3259
    :cond_2
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 3260
    invoke-static {v0, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v5

    .line 3259
    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    goto :goto_0
.end method

.method final synthetic lambda$showSetOrganizationIdDialog$170$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    .line 4247
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4248
    .local v0, "organizationId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4249
    const v1, 0x7f0f021e

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4253
    :goto_0
    return-void

    .line 4252
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setOrganizationId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final synthetic lambda$showSetProfileNameDialog$169$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    .line 4217
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4218
    .local v0, "newProfileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4219
    const v1, 0x7f0f0201

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4223
    :goto_0
    return-void

    .line 4222
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final synthetic lambda$showSetScreenBrightnessDialog$165$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 4062
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4063
    .local v0, "brightness":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4064
    const v2, 0x7f0f0202

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4074
    :goto_0
    return-void

    .line 4067
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4068
    .local v1, "brightnessValue":I
    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    if-gez v1, :cond_2

    .line 4069
    :cond_1
    const v2, 0x7f0f018f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4072
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v4, "screen_brightness"

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/admin/DevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final synthetic lambda$showSetScreenOffTimeoutDialog$166$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 4105
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4106
    .local v0, "screenTimeout":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4107
    const v2, 0x7f0f0203

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4118
    :goto_0
    return-void

    .line 4110
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4111
    .local v1, "screenTimeoutVaue":I
    if-gez v1, :cond_1

    .line 4112
    const v2, 0x7f0f0190

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4115
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v4, "screen_off_timeout"

    mul-int/lit16 v5, v1, 0x3e8

    .line 4117
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 4115
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final synthetic lambda$showSetTimeDialog$167$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    const/4 v5, 0x0

    .line 4143
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4144
    .local v1, "newTimeString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4145
    const v4, 0x7f0f0205

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4156
    :goto_0
    return-void

    .line 4148
    :cond_0
    const-wide/16 v2, 0x0

    .line 4150
    .local v2, "newTime":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 4155
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setTime(Landroid/content/ComponentName;J)Z

    goto :goto_0

    .line 4151
    :catch_0
    move-exception v0

    .line 4152
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v4, 0x7f0f0192

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final synthetic lambda$showSetTimeZoneDialog$168$PolicyManagementFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 4182
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4183
    .local v1, "newTimezone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4184
    const v2, 0x7f0f0206

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    .line 4193
    :goto_0
    return-void

    .line 4187
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 4188
    .local v0, "ids":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4189
    const v2, 0x7f0f0194

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4192
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/app/admin/DevicePolicyManager;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method final synthetic lambda$showStartUserInBackgroundPrompt$138$PolicyManagementFragment(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$75;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$75;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$76;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$76;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2349
    return-void
.end method

.method final synthetic lambda$showStopUserPrompt$141$PolicyManagementFragment(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$73;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$73;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$74;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$74;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2362
    return-void
.end method

.method final synthetic lambda$showSwitchUserPrompt$135$PolicyManagementFragment(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$77;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$77;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$78;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$78;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->switchUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2334
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3182
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3184
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3185
    packed-switch p1, :pswitch_data_0

    .line 3204
    :cond_0
    :goto_0
    return-void

    .line 3187
    :pswitch_0
    const-string v0, ""

    invoke-direct {p0, p3, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importKeyCertificateFromIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 3190
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->importCaCertificateFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3193
    :pswitch_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->newInstance(ILandroid/net/Uri;)Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 3197
    :pswitch_3
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/MediaDisplayFragment;->newInstance(ILandroid/net/Uri;)Lcom/afwsamples/testdpc/common/MediaDisplayFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 3201
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->installApkPackageFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3185
    :pswitch_data_0
    .packed-switch 0x1e09
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 539
    .local v6, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isDelegatedApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->isCredentialManagerApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 544
    :goto_0
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 545
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    .line 546
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 547
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v4, Landroid/location/LocationManager;

    .line 548
    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 550
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isProfileOwnerApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsProfileOwner:Z

    .line 551
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 552
    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 553
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPackageName:Ljava/lang/String;

    .line 555
    const-string v0, "image.jpg"

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getStorageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    .line 556
    const-string v0, "video.mp4"

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getStorageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    .line 558
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 559
    return-void

    .line 542
    :cond_1
    invoke-static {v6}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 563
    const v4, 0x7f120003

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->addPreferencesFromResource(I)V

    .line 565
    const-string v4, "override_key_selection"

    .line 566
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    .line 567
    .local v2, "overrideKeySelectionPreference":Landroidx/preference/EditTextPreference;
    invoke-virtual {v2, p0}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 568
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    const-string v4, "manage_lock_task"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 570
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 571
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mManageLockTaskListPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$0;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 572
    const-string v4, "check_lock_task_permitted"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 573
    const-string v4, "set_lock_task_features"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 574
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 575
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLockTaskFeaturesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$1;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 576
    const-string v4, "start_lock_task"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 577
    const-string v4, "relaunch_in_lock_task"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 578
    const-string v4, "stop_lock_task"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 579
    const-string v4, "create_managed_profile"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 580
    const-string v4, "create_and_manage_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 581
    const-string v4, "remove_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 582
    const-string v4, "switch_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 583
    const-string v4, "start_user_in_background"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 584
    const-string v4, "stop_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 585
    const-string v4, "enable_logout"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 586
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableLogoutPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 587
    const-string v4, "set_user_session_message"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 588
    const-string v4, "logout_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 589
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 590
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLogoutUserPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$2;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 591
    const-string v4, "set_affiliation_ids"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 592
    const-string v4, "affiliated_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAffiliatedUserPreference:Landroidx/preference/Preference;

    .line 593
    const-string v4, "ephemeral_user"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEphemeralUserPreference:Landroidx/preference/Preference;

    .line 594
    const-string v4, "disable_camera"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 595
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 596
    const-string v4, "disable_camera_on_parent"

    .line 597
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 598
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableCameraOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 599
    const-string v4, "capture_image"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 600
    const-string v4, "capture_video"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 601
    const-string v4, "disable_screen_capture"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 603
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 604
    const-string v4, "disable_screen_capture_on_parent"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 606
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableScreenCaptureOnParentSwitchPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 607
    const-string v4, "mute_audio"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 609
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mMuteAudioSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 611
    iget-boolean v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mIsProfileOwner:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_0

    .line 612
    const-string v4, "set_get_preferential_network_service_status"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 614
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 615
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mPreferentialNetworkServiceSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 616
    invoke-interface {v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPreferentialNetworkServiceEnabled()Z

    move-result v5

    .line 615
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 618
    :cond_0
    const-string v4, "lock_screen_policy"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 619
    const-string v4, "password_constraints"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 620
    const-string v4, "reset_password"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 621
    const-string v4, "lock_now"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 622
    const-string v4, "system_update_policy"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 623
    const-string v4, "system_update_pending"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 624
    const-string v4, "set_always_on_vpn"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 625
    const-string v4, "set_global_http_proxy"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 626
    const-string v4, "clear_global_http_proxy"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 627
    const-string v4, "set_private_dns_mode"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 628
    const-string v4, "network_stats"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 629
    const-string v4, "manage_cert_installer"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 630
    const-string v4, "disable_status_bar"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 631
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 632
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$3;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 633
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$4;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$4;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 634
    const-string v4, "reenable_status_bar"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 635
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 636
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$5;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$5;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 637
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableStatusBarPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$6;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$6;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 638
    const-string v4, "disable_keyguard"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 639
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 640
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$7;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$7;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 641
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDisableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$8;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$8;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 642
    const-string v4, "reenable_keyguard"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 643
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 644
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$9;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$9;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 645
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mReenableKeyguardPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$10;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$10;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 646
    const-string v4, "start_kiosk_mode"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 647
    const-string v4, "stay_on_while_plugged_in"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 649
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mStayOnWhilePluggedInSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 650
    const-string v4, "wipe_data"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 651
    const-string v4, "remove_device_owner"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 652
    const-string v4, "enable_backup_service"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 654
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 655
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableBackupServicePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$11;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$11;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 656
    const-string v4, "common_criteria_mode"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 658
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mCommonCriteriaModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 659
    const-string v4, "enable_usb_data_signaling"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 661
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableUsbDataSignalingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 662
    const-string v4, "request_bugreport"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 663
    const-string v4, "enable_security_logging"

    .line 664
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    .line 665
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableSecurityLoggingPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 666
    const-string v4, "request_security_logs"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 667
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 668
    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$12;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$12;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 671
    .local v3, "securityLoggingChecker":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 672
    const-string v4, "request_pre_reboot_security_logs"

    .line 673
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 674
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 675
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestPreRebootSecurityLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 676
    const-string v4, "enable_network_logging"

    .line 677
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 678
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 679
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableNetworkLoggingPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$13;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$13;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 681
    const-string v4, "request_network_logs"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 682
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 683
    new-instance v1, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$14;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$14;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    .line 686
    .local v1, "networkLoggingChecker":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mRequestNetworkLogsPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 687
    const-string v4, "set_accessibility_services"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 688
    const-string v4, "set_input_methods"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 689
    const-string v4, "set_input_methods_on_parent"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 690
    const-string v4, "set_notification_listeners"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 691
    const-string v4, "set_notification_listeners_text"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 692
    const-string v4, "set_disable_account_management"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 693
    const-string v4, "get_disable_account_management"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 694
    const-string v4, "add_account"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 695
    const-string v4, "remove_account"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 696
    const-string v4, "block_uninstallation_by_pkg"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 697
    const-string v4, "block_uninstallation_list"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 698
    const-string v4, "app_feedback_notifications"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 699
    const-string v4, "app_feedback_notifications"

    .line 700
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mEnableAppFeedbackNotificationsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 701
    const-string v4, "enable_system_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 702
    const-string v4, "enable_system_apps_by_package_name"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 703
    const-string v4, "enable_system_apps_by_intent"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 704
    const-string v4, "install_existing_packages"

    .line 705
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 706
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 707
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallExistingPackagePreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$15;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$15;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 708
    const-string v4, "install_apk_package"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 709
    const-string v4, "uninstall_package"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 710
    const-string v4, "hide_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 711
    const-string v4, "hide_apps_parent"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mHideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 712
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mHideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 713
    const-string v4, "unhide_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 714
    const-string v4, "unhide_apps_parent"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUnhideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 715
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUnhideAppsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 716
    const-string v4, "suspend_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 717
    const-string v4, "unsuspend_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 718
    const-string v4, "clear_app_data"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 719
    const-string v4, "keep_uninstalled_packages"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 720
    const-string v4, "managed_configurations"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 721
    const-string v4, "disable_metered_data"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 722
    const-string v4, "generic_delegation"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 723
    const-string v4, "app_restrictions_managing_package"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 724
    const-string v4, "request_manage_credentials"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 725
    const-string v4, "install_key_certificate"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 726
    const-string v4, "generate_key_and_certificate"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 727
    const-string v4, "remove_key_certificate"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 728
    const-string v4, "test_key_usability"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 729
    const-string v4, "install_ca_certificate"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 730
    const-string v4, "get_ca_certificates"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 731
    const-string v4, "remove_all_ca_certificates"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 732
    const-string v4, "managed_profile_policies"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 733
    const-string v4, "set_permission_policy"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 734
    const-string v4, "manage_app_permissions"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 735
    const-string v4, "create_wifi_configuration"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 736
    const-string v4, "create_eap_tls_wifi_configuration"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 737
    const-string v4, "enable_wifi_config_lockdown"

    .line 738
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 739
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mLockdownAdminConfiguredNetworksPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 740
    const-string v4, "modify_wifi_configuration"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 741
    const-string v4, "modify_owned_wifi_configuration"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 742
    const-string v4, "remove_not_owned_wifi_configurations"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 743
    const-string v4, "transfer_ownership_to_component"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 744
    const-string v4, "show_wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 745
    const-string v4, "install_nonmarket_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 747
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$16;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$16;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 753
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 754
    const-string v4, "set_user_restrictions"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 755
    const-string v4, "set_user_restrictions_parent"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserRestrictionsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 756
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mUserRestrictionsParentPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 758
    const-string v4, "reboot"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 759
    const-string v4, "set_short_support_message"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 760
    const-string v4, "set_long_support_message"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 761
    const-string v4, "set_new_password"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 762
    const-string v4, "set_profile_parent_new_password"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 763
    const-string v4, "set_profile_parent_new_password_device_requirement"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 764
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 765
    const-string v4, "cross_profile_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 766
    const-string v4, "cross_profile_apps_allowlist"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 768
    const-string v4, "set_screen_brightness"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 769
    const-string v4, "auto_brightness"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 770
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAutoBrightnessPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 771
    const-string v4, "set_screen_off_timeout"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 773
    const-string v4, "set_time"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 774
    const-string v4, "set_time_zone"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 776
    const-string v4, "set_profile_name"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 778
    const-string v4, "manage_override_apn"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 779
    const-string v4, "managed_system_updates"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 781
    const-string v4, "cross_profile_calendar"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 782
    const-string v4, "factory_reset_org_owned_device"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 783
    const-string v4, "set_factory_reset_protection_policy"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 784
    const-string v4, "set_organization_id"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 786
    const-string v4, "bind_device_admin_policies"

    .line 787
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 788
    .local v0, "bindDeviceAdminPreference":Lcom/afwsamples/testdpc/common/preference/DpcPreference;
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$17;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$17;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v0, v4}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 792
    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 794
    const-string v4, "set_auto_time_required"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 796
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    new-instance v5, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$18;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$18;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-virtual {v4, v5}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 797
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeRequiredPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 798
    const-string v4, "set_auto_time"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 799
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 800
    const-string v4, "set_auto_time_zone"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 801
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetAutoTimeZonePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 803
    const-string v4, "set_device_organization_name"

    .line 804
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/EditTextPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

    .line 805
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 807
    const-string v4, "set_location_enabled"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 809
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationEnabledPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 811
    const-string v4, "set_location_mode"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 812
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetLocationModePreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 814
    const-string v4, "suspend_personal_apps"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 815
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSuspendPersonalApps:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 817
    const-string v4, "profile_max_time_off"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    .line 818
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mProfileMaxTimeOff:Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;

    invoke-virtual {v4, p0}, Lcom/afwsamples/testdpc/common/preference/DpcEditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 819
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->maybeUpdateProfileMaxTimeOff()V

    .line 821
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onCreateSetNewPasswordWithComplexityPreference()V

    .line 822
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onCreateSetRequiredPasswordComplexityPreference()V

    .line 823
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->onCreateSetRequiredPasswordComplexityOnParentPreference()V

    .line 824
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->constrainSpecialCasePreferences()V

    .line 826
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->maybeDisableLockTaskPreferences()V

    .line 827
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadAppFeedbackNotifications()V

    .line 828
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadAppStatus()V

    .line 829
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadSecurityPatch()V

    .line 830
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadEnrollmentSpecificId()V

    .line 831
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadIsEphemeralUserUi()V

    .line 832
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCameraDisableUi()V

    .line 833
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadScreenCaptureDisableUi()V

    .line 834
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadMuteAudioUi()V

    .line 835
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableBackupServiceUi()V

    .line 836
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCommonCriteriaModeUi()V

    .line 837
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableUsbDataSignalingUi()V

    .line 838
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableSecurityLoggingUi()V

    .line 839
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableNetworkLoggingUi()V

    .line 840
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeRequiredUi()V

    .line 841
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeUi()V

    .line 842
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeZoneUi()V

    .line 843
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableLogoutUi()V

    .line 844
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadAutoBrightnessUi()V

    .line 845
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadPersonalAppsSuspendedUi()V

    .line 846
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1522
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1524
    .local v4, "key":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 1675
    const/4 v10, 0x0

    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_1
    return v10

    .line 1524
    .restart local p2    # "newValue":Ljava/lang/Object;
    :sswitch_0
    const-string v11, "override_key_selection"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :sswitch_1
    const-string v11, "disable_camera"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2
    const-string v11, "disable_camera_on_parent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :sswitch_3
    const-string v11, "enable_backup_service"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x3

    goto :goto_0

    :sswitch_4
    const-string v11, "common_criteria_mode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x4

    goto :goto_0

    :sswitch_5
    const-string v11, "enable_usb_data_signaling"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x5

    goto :goto_0

    :sswitch_6
    const-string v11, "enable_security_logging"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x6

    goto :goto_0

    :sswitch_7
    const-string v11, "enable_network_logging"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x7

    goto :goto_0

    :sswitch_8
    const-string v11, "disable_screen_capture"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x8

    goto :goto_0

    :sswitch_9
    const-string v11, "disable_screen_capture_on_parent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x9

    goto :goto_0

    :sswitch_a
    const-string v11, "mute_audio"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xa

    goto :goto_0

    :sswitch_b
    const-string v11, "set_get_preferential_network_service_status"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xb

    goto :goto_0

    :sswitch_c
    const-string v11, "stay_on_while_plugged_in"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v11, "enable_wifi_config_lockdown"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v11, "install_nonmarket_apps"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v11, "set_auto_time_required"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v11, "set_auto_time"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v11, "set_auto_time_zone"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v11, "set_device_organization_name"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v11, "enable_logout"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v11, "auto_brightness"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v11, "set_new_password_with_complexity"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v11, "set_required_password_complexity"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v11, "set_required_password_complexity_on_parent"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v11, "app_feedback_notifications"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v11, "set_location_enabled"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v11, "set_location_mode"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string v11, "suspend_personal_apps"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v11, "profile_max_time_off"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v10, 0x1c

    goto/16 :goto_0

    .line 1526
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1527
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1529
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setCameraDisabled(Z)V

    .line 1531
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCameraDisableUi()V

    .line 1532
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1534
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setCameraDisabledOnParent(Z)V

    .line 1535
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCameraDisableOnParentUi()V

    .line 1536
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1538
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setBackupServiceEnabled(Z)V

    .line 1539
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableBackupServiceUi()V

    .line 1540
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1542
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setCommonCriteriaModeEnabled(Z)V

    .line 1543
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadCommonCriteriaModeUi()V

    .line 1544
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1546
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setUsbDataSignalingEnabled(Z)V

    .line 1547
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableUsbDataSignalingUi()V

    .line 1548
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1550
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setSecurityLoggingEnabled(Z)V

    .line 1551
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableSecurityLoggingUi()V

    .line 1552
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1554
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setNetworkLogging(Z)V

    .line 1555
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableNetworkLoggingUi()V

    .line 1556
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1558
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setScreenCaptureDisabled(Z)V

    .line 1560
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadScreenCaptureDisableUi()V

    .line 1561
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1563
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setScreenCaptureDisabledOnParent(Z)V

    .line 1564
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadScreenCaptureDisableOnParentUi()V

    .line 1565
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1567
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    check-cast p2, Ljava/lang/Boolean;

    .line 1568
    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1567
    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 1569
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadMuteAudioUi()V

    .line 1570
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1572
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    new-instance v12, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$27;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$27;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v13, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$28;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$28;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v10, v11, v12, v13}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPreferentialNetworkServiceEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1577
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1579
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v13, "stay_on_while_plugged_in"

    const/4 v10, 0x1

    .line 1581
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->BATTERY_PLUGGED_ANY:Ljava/lang/String;

    .line 1579
    :goto_2
    invoke-virtual {v11, v12, v13, v10}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateStayOnWhilePluggedInPreference()V

    .line 1583
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1581
    :cond_1
    sget-object v10, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->DONT_STAY_ON:Ljava/lang/String;

    goto :goto_2

    .line 1585
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v12, 0x1

    .line 1586
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1585
    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V

    .line 1587
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLockdownAdminConfiguredNetworksUi()V

    .line 1588
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1590
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v13, "install_non_market_apps"

    const/4 v10, 0x1

    .line 1592
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "1"

    .line 1590
    :goto_3
    invoke-virtual {v11, v12, v13, v10}, Landroid/app/admin/DevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateInstallNonMarketAppsPreference()V

    .line 1594
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1592
    :cond_2
    const-string v10, "0"

    goto :goto_3

    .line 1596
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v12, 0x1

    .line 1597
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1596
    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 1598
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeRequiredUi()V

    .line 1599
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1601
    :pswitch_10
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeEnabled(Z)V

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeUi()V

    .line 1603
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1605
    :pswitch_11
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeZoneEnabled(Z)V

    .line 1606
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadSetAutoTimeZoneUi()V

    .line 1607
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1609
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/String;

    new-instance v12, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$29;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$29;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    new-instance v13, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$30;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$30;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-interface {v11, v10, v12, v13}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setOrganizationName(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mSetDeviceOrganizationNamePreference:Landroidx/preference/Preference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1613
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1615
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 1616
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadEnableLogoutUi()V

    .line 1617
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1619
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v13, "screen_brightness_mode"

    const/4 v10, 0x1

    .line 1620
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "1"

    .line 1619
    :goto_4
    invoke-virtual {v11, v12, v13, v10}, Landroid/app/admin/DevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadAutoBrightnessUi()V

    .line 1622
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1620
    :cond_3
    const-string v10, "0"

    goto :goto_4

    .line 1624
    :pswitch_15
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "android.app.extra.PASSWORD_COMPLEXITY"

    check-cast p2, Ljava/lang/String;

    .line 1627
    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1625
    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1628
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    .line 1629
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1631
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_16
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1632
    .local v6, "requiredComplexity":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexity(I)V

    .line 1633
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1635
    .end local v6    # "requiredComplexity":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_17
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1636
    .local v7, "requiredParentComplexity":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setRequiredPasswordComplexityOnParent(I)V

    .line 1637
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1640
    .end local v7    # "requiredParentComplexity":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1641
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const v10, 0x7f0f0064

    .line 1642
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 1643
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1641
    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1644
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1645
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1647
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 1648
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationEnabledUi()V

    .line 1649
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationModeUi()V

    .line 1650
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1653
    :pswitch_1a
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1654
    const/4 v5, 0x3

    .line 1658
    .local v5, "locationMode":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v12, "location_mode"

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1659
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1658
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/admin/DevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationEnabledUi()V

    .line 1661
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadLocationModeUi()V

    .line 1662
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1656
    .end local v5    # "locationMode":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "locationMode":I
    goto :goto_5

    .line 1664
    .end local v5    # "locationMode":I
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    check-cast p2, Ljava/lang/Boolean;

    .line 1665
    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1664
    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 1666
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadPersonalAppsSuspendedUi()V

    .line 1667
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1669
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_1c
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1670
    .local v8, "timeoutSec":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1671
    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 1670
    invoke-virtual {v10, v11, v12, v13}, Landroid/app/admin/DevicePolicyManager;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 1672
    invoke-direct/range {p0 .. p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->maybeUpdateProfileMaxTimeOff()V

    .line 1673
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1524
    :sswitch_data_0
    .sparse-switch
        -0x6dc064d1 -> :sswitch_4
        -0x6d10d7c1 -> :sswitch_16
        -0x61e7cc8c -> :sswitch_3
        -0x50267840 -> :sswitch_10
        -0x4e324934 -> :sswitch_e
        -0x49a461b2 -> :sswitch_1b
        -0x3d1d2c6e -> :sswitch_7
        -0x3258c364 -> :sswitch_6
        -0x2a84c24b -> :sswitch_9
        -0x23eb0211 -> :sswitch_15
        -0xcc4df56 -> :sswitch_8
        -0xc0672c2 -> :sswitch_f
        -0x4e6d335 -> :sswitch_11
        0x90415ab -> :sswitch_12
        0xe42eb0d -> :sswitch_b
        0x1571f84e -> :sswitch_1c
        0x15fd2d14 -> :sswitch_c
        0x176690e1 -> :sswitch_14
        0x366d64bc -> :sswitch_d
        0x3f39ca3c -> :sswitch_5
        0x3f8943c6 -> :sswitch_13
        0x4a92085c -> :sswitch_1
        0x4e2e8f0a -> :sswitch_17
        0x5411d58c -> :sswitch_18
        0x587c16d0 -> :sswitch_1a
        0x5da1aee7 -> :sswitch_2
        0x5f139a30 -> :sswitch_a
        0x675202f4 -> :sswitch_19
        0x769e3879 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/16 v5, 0x1a

    const/16 v6, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 992
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "key":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1392
    :goto_1
    return v2

    .line 993
    :sswitch_0
    const-string v7, "manage_lock_task"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v7, "check_lock_task_permitted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v7, "set_lock_task_features"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "reset_password"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v7, "lock_now"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v7, "start_lock_task"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "relaunch_in_lock_task"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string v7, "stop_lock_task"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "wipe_data"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_9
    const-string v7, "remove_device_owner"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_a
    const-string v7, "request_bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0xa

    goto :goto_0

    :sswitch_b
    const-string v7, "request_network_logs"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :sswitch_c
    const-string v7, "request_security_logs"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v7, "request_pre_reboot_security_logs"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "set_accessibility_services"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "set_input_methods"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v7, "set_input_methods_on_parent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v7, "set_notification_listeners"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v7, "set_notification_listeners_text"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v7, "set_disable_account_management"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v7, "get_disable_account_management"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v7, "add_account"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v7, "remove_account"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v7, "create_managed_profile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string v7, "create_and_manage_user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v7, "remove_user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string v7, "switch_user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    goto/16 :goto_0

    :sswitch_1b
    const-string v7, "start_user_in_background"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string v7, "stop_user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string v7, "logout_user"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string v7, "set_user_session_message"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v6

    goto/16 :goto_0

    :sswitch_1f
    const-string v7, "set_affiliation_ids"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string v7, "block_uninstallation_by_pkg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string v7, "block_uninstallation_list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string v7, "enable_system_apps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v7, "enable_system_apps_by_package_name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string v7, "enable_system_apps_by_intent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string v7, "install_existing_packages"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string v7, "install_apk_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string v7, "uninstall_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string v7, "hide_apps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string v7, "hide_apps_parent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string v7, "unhide_apps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v7, "unhide_apps_parent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string v7, "suspend_apps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string v7, "unsuspend_apps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string v7, "clear_app_data"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string v7, "keep_uninstalled_packages"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string v7, "managed_configurations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string v7, "disable_metered_data"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string v7, "generic_delegation"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x32

    goto/16 :goto_0

    :sswitch_33
    const-string v7, "app_restrictions_managing_package"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x33

    goto/16 :goto_0

    :sswitch_34
    const-string v7, "set_permission_policy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x34

    goto/16 :goto_0

    :sswitch_35
    const-string v7, "manage_app_permissions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x35

    goto/16 :goto_0

    :sswitch_36
    const-string v7, "request_manage_credentials"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x36

    goto/16 :goto_0

    :sswitch_37
    const-string v7, "install_key_certificate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x37

    goto/16 :goto_0

    :sswitch_38
    const-string v7, "remove_key_certificate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x38

    goto/16 :goto_0

    :sswitch_39
    const-string v7, "generate_key_and_certificate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x39

    goto/16 :goto_0

    :sswitch_3a
    const-string v7, "test_key_usability"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x3a

    goto/16 :goto_0

    :sswitch_3b
    const-string v7, "install_ca_certificate"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x3b

    goto/16 :goto_0

    :sswitch_3c
    const-string v7, "get_ca_certificates"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x3c

    goto/16 :goto_0

    :sswitch_3d
    const-string v7, "remove_all_ca_certificates"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x3d

    goto/16 :goto_0

    :sswitch_3e
    const-string v7, "managed_profile_policies"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x3e

    goto/16 :goto_0

    :sswitch_3f
    const-string v7, "lock_screen_policy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x3f

    goto/16 :goto_0

    :sswitch_40
    const-string v7, "password_constraints"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x40

    goto/16 :goto_0

    :sswitch_41
    const-string v7, "system_update_policy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x41

    goto/16 :goto_0

    :sswitch_42
    const-string v7, "system_update_pending"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x42

    goto/16 :goto_0

    :sswitch_43
    const-string v7, "set_always_on_vpn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x43

    goto/16 :goto_0

    :sswitch_44
    const-string v7, "set_global_http_proxy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x44

    goto/16 :goto_0

    :sswitch_45
    const-string v7, "clear_global_http_proxy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x45

    goto/16 :goto_0

    :sswitch_46
    const-string v7, "set_private_dns_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x46

    goto/16 :goto_0

    :sswitch_47
    const-string v7, "network_stats"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x47

    goto/16 :goto_0

    :sswitch_48
    const-string v7, "manage_cert_installer"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x48

    goto/16 :goto_0

    :sswitch_49
    const-string v7, "disable_status_bar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x49

    goto/16 :goto_0

    :sswitch_4a
    const-string v7, "reenable_status_bar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x4a

    goto/16 :goto_0

    :sswitch_4b
    const-string v7, "disable_keyguard"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x4b

    goto/16 :goto_0

    :sswitch_4c
    const-string v7, "reenable_keyguard"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x4c

    goto/16 :goto_0

    :sswitch_4d
    const-string v7, "start_kiosk_mode"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x4d

    goto/16 :goto_0

    :sswitch_4e
    const-string v7, "capture_image"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x4e

    goto/16 :goto_0

    :sswitch_4f
    const-string v7, "capture_video"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x4f

    goto/16 :goto_0

    :sswitch_50
    const-string v7, "create_wifi_configuration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x50

    goto/16 :goto_0

    :sswitch_51
    const-string v7, "create_eap_tls_wifi_configuration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x51

    goto/16 :goto_0

    :sswitch_52
    const-string v7, "modify_wifi_configuration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x52

    goto/16 :goto_0

    :sswitch_53
    const-string v7, "modify_owned_wifi_configuration"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x53

    goto/16 :goto_0

    :sswitch_54
    const-string v7, "remove_not_owned_wifi_configurations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x54

    goto/16 :goto_0

    :sswitch_55
    const-string v7, "show_wifi_mac_address"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x55

    goto/16 :goto_0

    :sswitch_56
    const-string v7, "set_user_restrictions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x56

    goto/16 :goto_0

    :sswitch_57
    const-string v7, "set_user_restrictions_parent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x57

    goto/16 :goto_0

    :sswitch_58
    const-string v7, "reboot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x58

    goto/16 :goto_0

    :sswitch_59
    const-string v7, "set_short_support_message"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x59

    goto/16 :goto_0

    :sswitch_5a
    const-string v7, "set_long_support_message"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x5a

    goto/16 :goto_0

    :sswitch_5b
    const-string v7, "set_new_password"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x5b

    goto/16 :goto_0

    :sswitch_5c
    const-string v7, "set_profile_parent_new_password"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x5c

    goto/16 :goto_0

    :sswitch_5d
    const-string v7, "set_profile_parent_new_password_device_requirement"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x5d

    goto/16 :goto_0

    :sswitch_5e
    const-string v7, "bind_device_admin_policies"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x5e

    goto/16 :goto_0

    :sswitch_5f
    const-string v7, "cross_profile_apps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x5f

    goto/16 :goto_0

    :sswitch_60
    const-string v7, "cross_profile_apps_allowlist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x60

    goto/16 :goto_0

    :sswitch_61
    const-string v7, "set_screen_brightness"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x61

    goto/16 :goto_0

    :sswitch_62
    const-string v7, "set_screen_off_timeout"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x62

    goto/16 :goto_0

    :sswitch_63
    const-string v7, "transfer_ownership_to_component"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x63

    goto/16 :goto_0

    :sswitch_64
    const-string v7, "set_time"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x64

    goto/16 :goto_0

    :sswitch_65
    const-string v7, "set_time_zone"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x65

    goto/16 :goto_0

    :sswitch_66
    const-string v7, "manage_override_apn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x66

    goto/16 :goto_0

    :sswitch_67
    const-string v7, "managed_system_updates"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x67

    goto/16 :goto_0

    :sswitch_68
    const-string v7, "cross_profile_calendar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x68

    goto/16 :goto_0

    :sswitch_69
    const-string v7, "set_profile_name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x69

    goto/16 :goto_0

    :sswitch_6a
    const-string v7, "factory_reset_org_owned_device"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x6a

    goto/16 :goto_0

    :sswitch_6b
    const-string v7, "set_factory_reset_protection_policy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x6b

    goto/16 :goto_0

    :sswitch_6c
    const-string v7, "set_organization_id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v4, 0x6c

    goto/16 :goto_0

    .line 995
    :pswitch_0
    const v2, 0x7f0f01ba

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$19;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$19;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v2, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V

    move v2, v3

    .line 1000
    goto/16 :goto_1

    .line 1002
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCheckLockTaskPermittedPrompt()V

    move v2, v3

    .line 1003
    goto/16 :goto_1

    .line 1005
    :pswitch_2
    new-instance v2, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1006
    goto/16 :goto_1

    .line 1008
    :pswitch_3
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v4, v5, :cond_1

    .line 1009
    new-instance v2, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1010
    goto/16 :goto_1

    .line 1012
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showResetPasswordPrompt()V

    goto/16 :goto_1

    .line 1016
    :pswitch_4
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lockNow()V

    move v2, v3

    .line 1017
    goto/16 :goto_1

    .line 1020
    :pswitch_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->startLockTask()V

    move v2, v3

    .line 1021
    goto/16 :goto_1

    .line 1024
    :pswitch_6
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->relaunchInLockTaskMode()V

    move v2, v3

    .line 1025
    goto/16 :goto_1

    .line 1028
    :pswitch_7
    :try_start_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->stopLockTask()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v3

    .line 1032
    goto/16 :goto_1

    .line 1034
    :pswitch_8
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWipeDataPrompt()V

    move v2, v3

    .line 1035
    goto/16 :goto_1

    .line 1037
    :pswitch_9
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveDeviceOwnerPrompt()V

    move v2, v3

    .line 1038
    goto/16 :goto_1

    .line 1040
    :pswitch_a
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->requestBugReport()V

    move v2, v3

    .line 1041
    goto/16 :goto_1

    .line 1043
    :pswitch_b
    new-instance v2, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1044
    goto/16 :goto_1

    .line 1046
    :pswitch_c
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->newInstance(Z)Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1047
    goto/16 :goto_1

    .line 1049
    :pswitch_d
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->newInstance(Z)Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1050
    goto/16 :goto_1

    .line 1053
    :pswitch_e
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    .line 1054
    invoke-virtual {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1055
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    invoke-virtual {v4, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->cancel(Z)Z

    .line 1057
    :cond_2
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    .line 1058
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetAccessibilityServicesTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetAccessibilityServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 1059
    goto/16 :goto_1

    .line 1062
    :pswitch_f
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    invoke-virtual {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1063
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    invoke-virtual {v4, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->cancel(Z)Z

    .line 1065
    :cond_3
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    .line 1066
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetInputMethodsTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetInputMethodsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 1067
    goto/16 :goto_1

    .line 1069
    :pswitch_10
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setPermittedInputMethodsOnParent()V

    move v2, v3

    .line 1070
    goto/16 :goto_1

    .line 1073
    :pswitch_11
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    .line 1074
    invoke-virtual {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1075
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    invoke-virtual {v4, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->cancel(Z)Z

    .line 1077
    :cond_4
    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    .line 1078
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mGetNotificationListenersTask:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$GetNotificationListenersTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 1079
    goto/16 :goto_1

    .line 1081
    :pswitch_12
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setNotificationAllowlistEditBox()V

    move v2, v3

    .line 1082
    goto/16 :goto_1

    .line 1084
    :pswitch_13
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetDisableAccountManagementPrompt()V

    move v2, v3

    .line 1085
    goto/16 :goto_1

    .line 1087
    :pswitch_14
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showDisableAccountTypeList()V

    move v2, v3

    .line 1088
    goto/16 :goto_1

    .line 1090
    :pswitch_15
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/afwsamples/testdpc/AddAccountActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1091
    goto/16 :goto_1

    .line 1093
    :pswitch_16
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->chooseAccount()V

    move v2, v3

    .line 1094
    goto/16 :goto_1

    .line 1096
    :pswitch_17
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetupManagement()V

    move v2, v3

    .line 1097
    goto/16 :goto_1

    .line 1099
    :pswitch_18
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCreateAndManageUserPrompt()V

    move v2, v3

    .line 1100
    goto/16 :goto_1

    .line 1102
    :pswitch_19
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showRemoveUserPrompt()V

    move v2, v3

    .line 1103
    goto/16 :goto_1

    .line 1105
    :pswitch_1a
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSwitchUserPrompt()V

    move v2, v3

    .line 1106
    goto/16 :goto_1

    .line 1108
    :pswitch_1b
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showStartUserInBackgroundPrompt()V

    move v2, v3

    .line 1109
    goto/16 :goto_1

    .line 1111
    :pswitch_1c
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showStopUserPrompt()V

    move v2, v3

    .line 1112
    goto/16 :goto_1

    .line 1114
    :pswitch_1d
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->logoutUser()V

    move v2, v3

    .line 1115
    goto/16 :goto_1

    .line 1117
    :pswitch_1e
    new-instance v2, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/SetUserSessionMessageFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1118
    goto/16 :goto_1

    .line 1120
    :pswitch_1f
    new-instance v2, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/ManageAffiliationIdsFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1121
    goto/16 :goto_1

    .line 1123
    :pswitch_20
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showBlockUninstallationByPackageNamePrompt()V

    move v2, v3

    .line 1124
    goto/16 :goto_1

    .line 1126
    :pswitch_21
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showBlockUninstallationPrompt()V

    move v2, v3

    .line 1127
    goto/16 :goto_1

    .line 1129
    :pswitch_22
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showEnableSystemAppsPrompt()V

    move v2, v3

    .line 1130
    goto/16 :goto_1

    .line 1132
    :pswitch_23
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showEnableSystemAppByPackageNamePrompt()V

    move v2, v3

    .line 1133
    goto/16 :goto_1

    .line 1135
    :pswitch_24
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1136
    goto/16 :goto_1

    .line 1138
    :pswitch_25
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showInstallExistingPackagePrompt()V

    move v2, v3

    .line 1139
    goto/16 :goto_1

    .line 1141
    :pswitch_26
    const/16 v2, 0x1e0d

    invoke-static {p0, v2}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    move v2, v3

    .line 1142
    goto/16 :goto_1

    .line 1144
    :pswitch_27
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showUninstallPackagePrompt()V

    move v2, v3

    .line 1145
    goto/16 :goto_1

    .line 1147
    :pswitch_28
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsPrompt(Z)V

    move v2, v3

    .line 1148
    goto/16 :goto_1

    .line 1150
    :pswitch_29
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsOnParentPrompt(Z)V

    move v2, v3

    .line 1151
    goto/16 :goto_1

    .line 1153
    :pswitch_2a
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsPrompt(Z)V

    move v2, v3

    .line 1154
    goto/16 :goto_1

    .line 1156
    :pswitch_2b
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showHideAppsOnParentPrompt(Z)V

    move v2, v3

    .line 1157
    goto/16 :goto_1

    .line 1159
    :pswitch_2c
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSuspendAppsPrompt(Z)V

    move v2, v3

    .line 1160
    goto/16 :goto_1

    .line 1162
    :pswitch_2d
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSuspendAppsPrompt(Z)V

    move v2, v3

    .line 1163
    goto/16 :goto_1

    .line 1165
    :pswitch_2e
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showClearAppDataPrompt()V

    move v2, v3

    .line 1166
    goto/16 :goto_1

    .line 1168
    :pswitch_2f
    new-instance v2, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1169
    goto/16 :goto_1

    .line 1171
    :pswitch_30
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1172
    goto/16 :goto_1

    .line 1174
    :pswitch_31
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetMeteredDataPrompt()V

    move v2, v3

    .line 1175
    goto/16 :goto_1

    .line 1177
    :pswitch_32
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1178
    goto/16 :goto_1

    .line 1180
    :pswitch_33
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1181
    goto/16 :goto_1

    .line 1183
    :pswitch_34
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetPermissionPolicyDialog()V

    move v2, v3

    .line 1184
    goto/16 :goto_1

    .line 1186
    :pswitch_35
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/profilepolicy/permission/ManageAppPermissionsFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1187
    goto/16 :goto_1

    .line 1189
    :pswitch_36
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showConfigurePolicyAndManageCredentialsPrompt()V

    move v2, v3

    .line 1190
    goto/16 :goto_1

    .line 1192
    :pswitch_37
    const/16 v2, 0x1e09

    invoke-static {p0, v2}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    move v2, v3

    .line 1194
    goto/16 :goto_1

    .line 1196
    :pswitch_38
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->choosePrivateKeyForRemoval()V

    move v2, v3

    .line 1197
    goto/16 :goto_1

    .line 1199
    :pswitch_39
    const-string v2, "generated-key-testdpc-1"

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForGeneratedKeyAlias(Ljava/lang/String;)V

    move v2, v3

    .line 1200
    goto/16 :goto_1

    .line 1202
    :pswitch_3a
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->testKeyCanBeUsedForSigning()V

    move v2, v3

    .line 1203
    goto/16 :goto_1

    .line 1205
    :pswitch_3b
    const/16 v2, 0x1e0a

    invoke-static {p0, v2}, Lcom/afwsamples/testdpc/common/Util;->showFileViewer(Landroidx/preference/PreferenceFragment;I)V

    move v2, v3

    .line 1207
    goto/16 :goto_1

    .line 1209
    :pswitch_3c
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCaCertificateList()V

    move v2, v3

    .line 1210
    goto/16 :goto_1

    .line 1212
    :pswitch_3d
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->uninstallAllUserCaCerts(Landroid/content/ComponentName;)V

    .line 1213
    const v4, 0x7f0f0041

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v4, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(I[Ljava/lang/Object;)V

    move v2, v3

    .line 1214
    goto/16 :goto_1

    .line 1216
    :pswitch_3e
    new-instance v2, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;-><init>()V

    const-string v4, "ProfilePolicyManagementFragment"

    invoke-direct {p0, v2, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    move v2, v3

    .line 1218
    goto/16 :goto_1

    .line 1220
    :pswitch_3f
    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Container;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Container;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1221
    goto/16 :goto_1

    .line 1223
    :pswitch_40
    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1224
    goto/16 :goto_1

    .line 1226
    :pswitch_41
    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1227
    goto/16 :goto_1

    .line 1229
    :pswitch_42
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPendingSystemUpdate()V

    move v2, v3

    .line 1230
    goto/16 :goto_1

    .line 1232
    :pswitch_43
    new-instance v2, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1233
    goto/16 :goto_1

    .line 1235
    :pswitch_44
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetGlobalHttpProxyDialog()V

    move v2, v3

    .line 1236
    goto/16 :goto_1

    .line 1238
    :pswitch_45
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    move v2, v3

    .line 1240
    goto/16 :goto_1

    .line 1242
    :pswitch_46
    new-instance v2, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/networking/PrivateDnsModeFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1243
    goto/16 :goto_1

    .line 1245
    :pswitch_47
    new-instance v2, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1246
    goto/16 :goto_1

    .line 1248
    :pswitch_48
    new-instance v2, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1249
    goto/16 :goto_1

    .line 1251
    :pswitch_49
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setStatusBarDisabled(Z)V

    move v2, v3

    .line 1252
    goto/16 :goto_1

    .line 1254
    :pswitch_4a
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setStatusBarDisabled(Z)V

    move v2, v3

    .line 1255
    goto/16 :goto_1

    .line 1257
    :pswitch_4b
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setKeyGuardDisabled(Z)V

    move v2, v3

    .line 1258
    goto/16 :goto_1

    .line 1260
    :pswitch_4c
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setKeyGuardDisabled(Z)V

    move v2, v3

    .line 1261
    goto/16 :goto_1

    .line 1263
    :pswitch_4d
    const v2, 0x7f0f01aa

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V

    invoke-direct {p0, v2, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V

    move v2, v3

    .line 1271
    goto/16 :goto_1

    .line 1273
    :pswitch_4e
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/16 v4, 0x1e0b

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mImageUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->dispatchCaptureIntent(Ljava/lang/String;ILandroid/net/Uri;)V

    move v2, v3

    .line 1275
    goto/16 :goto_1

    .line 1277
    :pswitch_4f
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    const/16 v4, 0x1e0c

    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->dispatchCaptureIntent(Ljava/lang/String;ILandroid/net/Uri;)V

    move v2, v3

    .line 1279
    goto/16 :goto_1

    .line 1281
    :pswitch_50
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWifiConfigCreationDialog()V

    move v2, v3

    .line 1282
    goto/16 :goto_1

    .line 1284
    :pswitch_51
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showEapTlsWifiConfigCreationDialog()V

    move v2, v3

    .line 1285
    goto/16 :goto_1

    .line 1287
    :pswitch_52
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->createFragment(Z)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1288
    goto/16 :goto_1

    .line 1290
    :pswitch_53
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;->createFragment(Z)Lcom/afwsamples/testdpc/policy/wifimanagement/WifiModificationFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1291
    goto/16 :goto_1

    .line 1293
    :pswitch_54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1294
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->removeNonCallerConfiguredNetworks()Z

    move-result v1

    .line 1295
    .local v1, "removed":Z
    if-eqz v1, :cond_5

    .line 1296
    const-string v2, "One or more networks are removed"

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    :goto_3
    move v2, v3

    .line 1300
    goto/16 :goto_1

    .line 1298
    :cond_5
    const-string v2, "No network is removed"

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 1302
    .end local v1    # "removed":Z
    :pswitch_55
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWifiMacAddress()V

    move v2, v3

    .line 1303
    goto/16 :goto_1

    .line 1305
    :pswitch_56
    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1306
    goto/16 :goto_1

    .line 1308
    :pswitch_57
    new-instance v2, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1309
    goto/16 :goto_1

    .line 1311
    :pswitch_58
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reboot()V

    move v2, v3

    .line 1312
    goto/16 :goto_1

    .line 1314
    :pswitch_59
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->newInstance(I)Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1316
    goto/16 :goto_1

    .line 1318
    :pswitch_5a
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;->newInstance(I)Lcom/afwsamples/testdpc/policy/SetSupportMessageFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1320
    goto/16 :goto_1

    .line 1322
    :pswitch_5b
    const-string v2, "PolicyManagement"

    const-string v4, "starting android.app.action.SET_NEW_PASSWORD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1324
    goto/16 :goto_1

    .line 1326
    :pswitch_5c
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1328
    goto/16 :goto_1

    .line 1330
    :pswitch_5d
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

    .line 1331
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 1330
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 1332
    goto/16 :goto_1

    .line 1334
    :pswitch_5e
    new-instance v2, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1335
    goto/16 :goto_1

    .line 1337
    :pswitch_5f
    new-instance v2, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1338
    goto/16 :goto_1

    .line 1340
    :pswitch_60
    new-instance v2, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1341
    goto/16 :goto_1

    .line 1343
    :pswitch_61
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetScreenBrightnessDialog()V

    move v2, v3

    .line 1344
    goto/16 :goto_1

    .line 1346
    :pswitch_62
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetScreenOffTimeoutDialog()V

    move v2, v3

    .line 1347
    goto/16 :goto_1

    .line 1349
    :pswitch_63
    new-instance v2, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1350
    goto/16 :goto_1

    .line 1353
    :pswitch_64
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v4, v6, :cond_6

    .line 1354
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeEnabled(Z)V

    .line 1359
    :goto_4
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetTimeDialog()V

    move v2, v3

    .line 1360
    goto/16 :goto_1

    .line 1356
    :cond_6
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v5, "auto_time"

    const-string v6, "0"

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1362
    :pswitch_65
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    if-lt v4, v6, :cond_7

    .line 1363
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->setAutoTimeZoneEnabled(Z)V

    .line 1368
    :goto_5
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetTimeZoneDialog()V

    move v2, v3

    .line 1369
    goto/16 :goto_1

    .line 1365
    :cond_7
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const-string v5, "auto_time_zone"

    const-string v6, "0"

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1371
    :pswitch_66
    new-instance v2, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1372
    goto/16 :goto_1

    .line 1374
    :pswitch_67
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->promptInstallUpdate()V

    move v2, v3

    .line 1375
    goto/16 :goto_1

    .line 1377
    :pswitch_68
    new-instance v2, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1378
    goto/16 :goto_1

    .line 1380
    :pswitch_69
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetProfileNameDialog()V

    move v2, v3

    .line 1381
    goto/16 :goto_1

    .line 1383
    :pswitch_6a
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->factoryResetOrgOwnedDevice()V

    move v2, v3

    .line 1384
    goto/16 :goto_1

    .line 1386
    :pswitch_6b
    new-instance v2, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;-><init>()V

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showFragment(Landroid/app/Fragment;)V

    move v2, v3

    .line 1387
    goto/16 :goto_1

    .line 1389
    :pswitch_6c
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetOrganizationIdDialog()V

    move v2, v3

    .line 1390
    goto/16 :goto_1

    .line 1029
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 993
    :sswitch_data_0
    .sparse-switch
        -0x7f054cda -> :sswitch_54
        -0x7dbd5e36 -> :sswitch_6c
        -0x7ced576b -> :sswitch_2c
        -0x7ac7aa82 -> :sswitch_51
        -0x7a004d90 -> :sswitch_6a
        -0x797d9204 -> :sswitch_38
        -0x773638de -> :sswitch_4e
        -0x7680cdbe -> :sswitch_4f
        -0x74278ce9 -> :sswitch_5b
        -0x71cf7b75 -> :sswitch_57
        -0x702ca483 -> :sswitch_25
        -0x69a46899 -> :sswitch_61
        -0x697b9539 -> :sswitch_5e
        -0x67e3447b -> :sswitch_39
        -0x642a2068 -> :sswitch_31
        -0x6109ae88 -> :sswitch_6
        -0x5c391daa -> :sswitch_6b
        -0x5c32e4e0 -> :sswitch_f
        -0x5bf4fd2b -> :sswitch_14
        -0x586d4882 -> :sswitch_56
        -0x570ad2f5 -> :sswitch_53
        -0x568d4a01 -> :sswitch_3a
        -0x5666c9ef -> :sswitch_1b
        -0x53dcf1b7 -> :sswitch_13
        -0x529d1546 -> :sswitch_18
        -0x51dc0e49 -> :sswitch_59
        -0x51bdfc03 -> :sswitch_49
        -0x4fe83ccd -> :sswitch_68
        -0x4c479381 -> :sswitch_26
        -0x4912fe17 -> :sswitch_27
        -0x4338e355 -> :sswitch_10
        -0x429c45c5 -> :sswitch_62
        -0x40fd4de2 -> :sswitch_20
        -0x39fb0ce3 -> :sswitch_5d
        -0x388fe6b9 -> :sswitch_48
        -0x37ba085b -> :sswitch_58
        -0x372c8d08 -> :sswitch_a
        -0x35487641 -> :sswitch_0
        -0x2cb73f98 -> :sswitch_11
        -0x2ba88923 -> :sswitch_30
        -0x27627faf -> :sswitch_3f
        -0x25c0516e -> :sswitch_40
        -0x258214a8 -> :sswitch_41
        -0x2516291b -> :sswitch_2f
        -0x240458b2 -> :sswitch_47
        -0x1f4ca875 -> :sswitch_3
        -0x1de8f1a6 -> :sswitch_3b
        -0x1c809a8e -> :sswitch_16
        -0x1982a066 -> :sswitch_29
        -0x18029edc -> :sswitch_3d
        -0x13d957e2 -> :sswitch_69
        -0x13410b5f -> :sswitch_45
        -0x117ea15a -> :sswitch_19
        -0x88a923a -> :sswitch_22
        -0x78a883a -> :sswitch_66
        -0x2c4030f -> :sswitch_52
        -0x272c0a8 -> :sswitch_21
        0xcda75a -> :sswitch_67
        0x876788f -> :sswitch_15
        0x989bf36 -> :sswitch_4d
        0xce2bbbb -> :sswitch_1
        0x11df984f -> :sswitch_4c
        0x140d9553 -> :sswitch_23
        0x156b771d -> :sswitch_4b
        0x16b7cea7 -> :sswitch_1e
        0x1d1e71dd -> :sswitch_63
        0x1fc910a0 -> :sswitch_2
        0x2260a8d0 -> :sswitch_b
        0x24212d9e -> :sswitch_c
        0x26695f0c -> :sswitch_1f
        0x282e8d13 -> :sswitch_37
        0x31284365 -> :sswitch_9
        0x32d99f4f -> :sswitch_28
        0x34d67fdc -> :sswitch_55
        0x35710bc6 -> :sswitch_3e
        0x36edecd6 -> :sswitch_2a
        0x39bc99ae -> :sswitch_2d
        0x3a7af5dc -> :sswitch_5c
        0x3c43db91 -> :sswitch_5a
        0x3fdc3c90 -> :sswitch_32
        0x439702d2 -> :sswitch_36
        0x4be405a7 -> :sswitch_43
        0x4f066641 -> :sswitch_65
        0x4ff6504b -> :sswitch_24
        0x53183ea4 -> :sswitch_12
        0x545fbc8a -> :sswitch_64
        0x5567a20f -> :sswitch_60
        0x579a9705 -> :sswitch_34
        0x5bd08472 -> :sswitch_46
        0x5da80ca2 -> :sswitch_8
        0x5e0ad4e7 -> :sswitch_5f
        0x5e32a0af -> :sswitch_4a
        0x612a4de8 -> :sswitch_1c
        0x64490831 -> :sswitch_42
        0x655f7f76 -> :sswitch_44
        0x66271c33 -> :sswitch_2b
        0x671b7560 -> :sswitch_1d
        0x67567763 -> :sswitch_33
        0x6a236cac -> :sswitch_e
        0x6a44d87c -> :sswitch_5
        0x71d311c2 -> :sswitch_4
        0x73e8141c -> :sswitch_7
        0x74686000 -> :sswitch_d
        0x751a196f -> :sswitch_50
        0x75d42c8c -> :sswitch_35
        0x7866afc6 -> :sswitch_17
        0x7e415114 -> :sswitch_3c
        0x7eec4df6 -> :sswitch_1a
        0x7f779cba -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 975
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 976
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f025c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 980
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateStayOnWhilePluggedInPreference()V

    .line 981
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->updateInstallNonMarketAppsPreference()V

    .line 982
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordCompliant()V

    .line 983
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadPasswordComplexity()V

    .line 984
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadRequiredPasswordComplexity()V

    .line 985
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->loadSeparateChallenge()V

    .line 986
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->reloadAffiliatedApis()V

    .line 987
    return-void
.end method

.method public updateInstallNonMarketAppsPreference()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2088
    .line 2089
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    .line 2088
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2090
    .local v0, "isInstallNonMarketAppsAllowed":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->mInstallNonMarketAppsPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 2092
    return-void

    .line 2090
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
