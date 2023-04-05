package com.afwsamples.testdpc.policy;
public class PolicyManagementFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceClickListener, androidx.preference.Preference$OnPreferenceChangeListener, com.afwsamples.testdpc.common.Dumpable {
    private static final String ADD_ACCOUNT_KEY = "add_account";
    private static final String AFFILIATED_USER_KEY = "affiliated_user";
    private static final String APP_FEEDBACK_NOTIFICATIONS = "app_feedback_notifications";
    private static final String APP_RESTRICTIONS_MANAGING_PACKAGE_KEY = "app_restrictions_managing_package";
    private static final String APP_STATUS_KEY = "app_status";
    private static final String AUTO_BRIGHTNESS_KEY = "auto_brightness";
    private static final String BATTERY_PLUGGED_ANY = "";
    private static final String BIND_DEVICE_ADMIN_POLICIES = "bind_device_admin_policies";
    private static final String BLOCK_UNINSTALLATION_BY_PKG_KEY = "block_uninstallation_by_pkg";
    private static final String BLOCK_UNINSTALLATION_LIST_KEY = "block_uninstallation_list";
    private static final String CAPTURE_IMAGE_KEY = "capture_image";
    private static final int CAPTURE_IMAGE_REQUEST_CODE = 7691;
    private static final String CAPTURE_VIDEO_KEY = "capture_video";
    private static final int CAPTURE_VIDEO_REQUEST_CODE = 7692;
    private static final String CHECK_LOCK_TASK_PERMITTED_KEY = "check_lock_task_permitted";
    private static final String CLEAR_APP_DATA_KEY = "clear_app_data";
    private static final String CLEAR_GLOBAL_HTTP_PROXY_KEY = "clear_global_http_proxy";
    private static final String COMMON_CRITERIA_MODE_KEY = "common_criteria_mode";
    private static final String CREATE_AND_MANAGE_USER_KEY = "create_and_manage_user";
    private static final String CREATE_EAP_TLS_WIFI_CONFIGURATION_KEY = "create_eap_tls_wifi_configuration";
    private static final String CREATE_MANAGED_PROFILE_KEY = "create_managed_profile";
    private static final String CREATE_WIFI_CONFIGURATION_KEY = "create_wifi_configuration";
    private static final String CROSS_PROFILE_APPS = "cross_profile_apps";
    private static final String CROSS_PROFILE_APPS_ALLOWLIST = "cross_profile_apps_allowlist";
    private static final String CROSS_PROFILE_CALENDAR_KEY = "cross_profile_calendar";
    private static final String DELEGATED_CERT_INSTALLER_KEY = "manage_cert_installer";
    private static final String DISABLE_CAMERA_KEY = "disable_camera";
    private static final String DISABLE_CAMERA_ON_PARENT_KEY = "disable_camera_on_parent";
    private static final String DISABLE_KEYGUARD = "disable_keyguard";
    private static final String DISABLE_METERED_DATA_KEY = "disable_metered_data";
    private static final String DISABLE_SCREEN_CAPTURE_KEY = "disable_screen_capture";
    private static final String DISABLE_SCREEN_CAPTURE_ON_PARENT_KEY = "disable_screen_capture_on_parent";
    private static final String DISABLE_STATUS_BAR = "disable_status_bar";
    private static final String DONT_STAY_ON = "0";
    private static final String ENABLE_BACKUP_SERVICE = "enable_backup_service";
    private static final String ENABLE_LOGOUT_KEY = "enable_logout";
    private static final String ENABLE_NETWORK_LOGGING = "enable_network_logging";
    private static final String ENABLE_SECURITY_LOGGING = "enable_security_logging";
    private static final String ENABLE_SYSTEM_APPS_BY_INTENT_KEY = "enable_system_apps_by_intent";
    private static final String ENABLE_SYSTEM_APPS_BY_PACKAGE_NAME_KEY = "enable_system_apps_by_package_name";
    private static final String ENABLE_SYSTEM_APPS_KEY = "enable_system_apps";
    private static final String ENABLE_USB_DATA_SIGNALING_KEY = "enable_usb_data_signaling";
    private static final String ENROLLMENT_SPECIFIC_ID_KEY = "enrollment_specific_id";
    private static final String EPHEMERAL_USER_KEY = "ephemeral_user";
    private static final String FACTORY_RESET_ORG_OWNED_DEVICE = "factory_reset_org_owned_device";
    public static final String FRAGMENT_TAG = "PolicyManagementFragment";
    private static final String GENERATE_KEY_CERTIFICATE_KEY = "generate_key_and_certificate";
    private static final String GENERIC_DELEGATION_KEY = "generic_delegation";
    private static final String GET_CA_CERTIFICATES_KEY = "get_ca_certificates";
    private static final String GET_DISABLE_ACCOUNT_MANAGEMENT_KEY = "get_disable_account_management";
    private static final String HIDE_APPS_KEY = "hide_apps";
    private static final String HIDE_APPS_PARENT_KEY = "hide_apps_parent";
    private static final String INSTALL_APK_PACKAGE_KEY = "install_apk_package";
    private static final int INSTALL_APK_PACKAGE_REQUEST_CODE = 7693;
    private static final String INSTALL_CA_CERTIFICATE_KEY = "install_ca_certificate";
    private static final int INSTALL_CA_CERTIFICATE_REQUEST_CODE = 7690;
    private static final String INSTALL_EXISTING_PACKAGE_KEY = "install_existing_packages";
    private static final String INSTALL_KEY_CERTIFICATE_KEY = "install_key_certificate";
    private static final int INSTALL_KEY_CERTIFICATE_REQUEST_CODE = 7689;
    private static final String INSTALL_NONMARKET_APPS_KEY = "install_nonmarket_apps";
    private static final String KEEP_UNINSTALLED_PACKAGES = "keep_uninstalled_packages";
    private static final String LOCK_NOW_KEY = "lock_now";
    private static final String LOCK_SCREEN_POLICY_KEY = "lock_screen_policy";
    private static final String LOGOUT_USER_KEY = "logout_user";
    public static final String LOG_TAG = "TestDPC";
    private static final String MANAGED_CONFIGURATIONS_KEY = "managed_configurations";
    private static final String MANAGED_PROFILE_SPECIFIC_POLICIES_KEY = "managed_profile_policies";
    private static final String MANAGED_SYSTEM_UPDATES_KEY = "managed_system_updates";
    private static final String MANAGE_APP_PERMISSIONS_KEY = "manage_app_permissions";
    private static final String MANAGE_LOCK_TASK_LIST_KEY = "manage_lock_task";
    private static final String MANAGE_OVERRIDE_APN_KEY = "manage_override_apn";
    private static final String MODIFY_OWNED_WIFI_CONFIGURATION_KEY = "modify_owned_wifi_configuration";
    private static final String MODIFY_WIFI_CONFIGURATION_KEY = "modify_wifi_configuration";
    private static final String MUTE_AUDIO_KEY = "mute_audio";
    private static final String NETWORK_STATS_KEY = "network_stats";
    public static final String OVERRIDE_KEY_SELECTION_KEY = "override_key_selection";
    private static final android.util.SparseIntArray PASSWORD_COMPLEXITY = None;
    private static final String PASSWORD_COMPLEXITY_KEY = "password_complexity";
    private static final String PASSWORD_COMPLIANT_KEY = "password_compliant";
    private static final String PASSWORD_CONSTRAINTS_KEY = "password_constraints";
    private static final String PROFILE_MAX_TIME_OFF_KEY = "profile_max_time_off";
    private static final String REBOOT_KEY = "reboot";
    private static final String REENABLE_KEYGUARD = "reenable_keyguard";
    private static final String REENABLE_STATUS_BAR = "reenable_status_bar";
    private static final String RELAUNCH_IN_LOCK_TASK = "relaunch_in_lock_task";
    private static final String REMOVE_ACCOUNT_KEY = "remove_account";
    private static final String REMOVE_ALL_CERTIFICATES_KEY = "remove_all_ca_certificates";
    private static final String REMOVE_DEVICE_OWNER_KEY = "remove_device_owner";
    private static final String REMOVE_KEY_CERTIFICATE_KEY = "remove_key_certificate";
    private static final String REMOVE_NOT_OWNED_WIFI_CONFIGURATION_KEY = "remove_not_owned_wifi_configurations";
    private static final String REMOVE_USER_KEY = "remove_user";
    private static final String REQUEST_BUGREPORT_KEY = "request_bugreport";
    private static final String REQUEST_MANAGE_CREDENTIALS_KEY = "request_manage_credentials";
    private static final int REQUEST_MANAGE_CREDENTIALS_REQUEST_CODE = 7694;
    private static final String REQUEST_NETWORK_LOGS = "request_network_logs";
    private static final String REQUEST_PRE_REBOOT_SECURITY_LOGS = "request_pre_reboot_security_logs";
    private static final String REQUEST_SECURITY_LOGS = "request_security_logs";
    private static final String REQUIRED_PASSWORD_COMPLEXITY_KEY = "required_password_complexity";
    private static final String REQUIRED_PASSWORD_COMPLEXITY_ON_PARENT_KEY = "required_password_complexity_on_parent";
    private static final String RESET_PASSWORD_KEY = "reset_password";
    private static final String SECURITY_PATCH_FORMAT = "yyyy-MM-dd";
    private static final String SECURITY_PATCH_KEY = "security_patch";
    private static final String SEPARATE_CHALLENGE_KEY = "separate_challenge";
    private static final String SET_ACCESSIBILITY_SERVICES_KEY = "set_accessibility_services";
    private static final String SET_AFFILIATION_IDS_KEY = "set_affiliation_ids";
    private static final String SET_ALWAYS_ON_VPN_KEY = "set_always_on_vpn";
    private static final String SET_AUTO_TIME_KEY = "set_auto_time";
    private static final String SET_AUTO_TIME_REQUIRED_KEY = "set_auto_time_required";
    private static final String SET_AUTO_TIME_ZONE_KEY = "set_auto_time_zone";
    private static final String SET_DEVICE_ORGANIZATION_NAME_KEY = "set_device_organization_name";
    private static final String SET_DISABLE_ACCOUNT_MANAGEMENT_KEY = "set_disable_account_management";
    private static final String SET_FACTORY_RESET_PROTECTION_POLICY_KEY = "set_factory_reset_protection_policy";
    private static final String SET_GET_PREFERENTIAL_NETWORK_SERVICE_STATUS = "set_get_preferential_network_service_status";
    private static final String SET_GLOBAL_HTTP_PROXY_KEY = "set_global_http_proxy";
    private static final String SET_INPUT_METHODS_KEY = "set_input_methods";
    private static final String SET_INPUT_METHODS_ON_PARENT_KEY = "set_input_methods_on_parent";
    private static final String SET_LOCATION_ENABLED_KEY = "set_location_enabled";
    private static final String SET_LOCATION_MODE_KEY = "set_location_mode";
    private static final String SET_LOCK_TASK_FEATURES_KEY = "set_lock_task_features";
    private static final String SET_LONG_SUPPORT_MESSAGE_KEY = "set_long_support_message";
    private static final String SET_NEW_PASSWORD = "set_new_password";
    private static final String SET_NEW_PASSWORD_WITH_COMPLEXITY = "set_new_password_with_complexity";
    private static final String SET_NOTIFICATION_LISTENERS_KEY = "set_notification_listeners";
    private static final String SET_NOTIFICATION_LISTENERS_TEXT_KEY = "set_notification_listeners_text";
    private static final String SET_ORGANIZATION_ID_KEY = "set_organization_id";
    private static final String SET_PERMISSION_POLICY_KEY = "set_permission_policy";
    private static final String SET_PRIVATE_DNS_MODE_KEY = "set_private_dns_mode";
    private static final String SET_PROFILE_NAME_KEY = "set_profile_name";
    private static final String SET_PROFILE_PARENT_NEW_PASSWORD = "set_profile_parent_new_password";
    private static final String SET_PROFILE_PARENT_NEW_PASSWORD_DEVICE_REQUIREMENT = "set_profile_parent_new_password_device_requirement";
    private static final String SET_REQUIRED_PASSWORD_COMPLEXITY = "set_required_password_complexity";
    private static final String SET_REQUIRED_PASSWORD_COMPLEXITY_ON_PARENT = "set_required_password_complexity_on_parent";
    private static final String SET_SCREEN_BRIGHTNESS_KEY = "set_screen_brightness";
    private static final String SET_SCREEN_OFF_TIMEOUT_KEY = "set_screen_off_timeout";
    private static final String SET_SHORT_SUPPORT_MESSAGE_KEY = "set_short_support_message";
    private static final String SET_TIME_KEY = "set_time";
    private static final String SET_TIME_ZONE_KEY = "set_time_zone";
    private static final String SET_USER_RESTRICTIONS_KEY = "set_user_restrictions";
    private static final String SET_USER_RESTRICTIONS_PARENT_KEY = "set_user_restrictions_parent";
    private static final String SET_USER_SESSION_MESSAGE_KEY = "set_user_session_message";
    private static final String SHOW_WIFI_MAC_ADDRESS_KEY = "show_wifi_mac_address";
    private static final String START_KIOSK_MODE = "start_kiosk_mode";
    private static final String START_LOCK_TASK = "start_lock_task";
    private static final String START_USER_IN_BACKGROUND_KEY = "start_user_in_background";
    private static final String STAY_ON_WHILE_PLUGGED_IN = "stay_on_while_plugged_in";
    private static final String STOP_LOCK_TASK = "stop_lock_task";
    private static final String STOP_USER_KEY = "stop_user";
    private static final String SUSPEND_APPS_KEY = "suspend_apps";
    private static final String SUSPEND_PERSONAL_APPS_KEY = "suspend_personal_apps";
    private static final String SWITCH_USER_KEY = "switch_user";
    private static final String SYSTEM_UPDATE_PENDING_KEY = "system_update_pending";
    private static final String SYSTEM_UPDATE_POLICY_KEY = "system_update_policy";
    public static final String TAG = "PolicyManagement";
    private static final String TAG_WIFI_CONFIG_CREATION = "wifi_config_creation";
    private static final String TEST_KEY_USABILITY_KEY = "test_key_usability";
    private static final String TRANSFER_OWNERSHIP_KEY = "transfer_ownership_to_component";
    private static final String UNHIDE_APPS_KEY = "unhide_apps";
    private static final String UNHIDE_APPS_PARENT_KEY = "unhide_apps_parent";
    private static final String UNINSTALL_PACKAGE_KEY = "uninstall_package";
    private static final String UNSUSPEND_APPS_KEY = "unsuspend_apps";
    private static final int USER_OPERATION_ERROR_UNKNOWN = 1;
    private static final int USER_OPERATION_SUCCESS = 0;
    private static final String WIFI_CONFIG_LOCKDOWN_ENABLE_KEY = "enable_wifi_config_lockdown";
    private static final String WIPE_DATA_KEY = "wipe_data";
    public static final String X509_CERT_TYPE = "X.509";
    private android.accounts.AccountManager mAccountManager;
    private android.content.ComponentName mAdminComponentName;
    private androidx.preference.Preference mAffiliatedUserPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mAutoBrightnessPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mCommonCriteriaModePreference;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mDisableCameraOnParentSwitchPreference;
    private androidx.preference.SwitchPreference mDisableCameraSwitchPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mDisableKeyguardPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mDisableScreenCaptureOnParentSwitchPreference;
    private androidx.preference.SwitchPreference mDisableScreenCaptureSwitchPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mDisableStatusBarPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mEnableAppFeedbackNotificationsPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mEnableBackupServicePreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mEnableLogoutPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mEnableNetworkLoggingPreference;
    private androidx.preference.SwitchPreference mEnableSecurityLoggingPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mEnableUsbDataSignalingPreference;
    private androidx.preference.Preference mEphemeralUserPreference;
    private com.afwsamples.testdpc.policy.PolicyManagementFragment$GetAccessibilityServicesTask mGetAccessibilityServicesTask;
    private com.afwsamples.testdpc.policy.PolicyManagementFragment$GetInputMethodsTask mGetInputMethodsTask;
    private com.afwsamples.testdpc.policy.PolicyManagementFragment$GetNotificationListenersTask mGetNotificationListenersTask;
    private com.afwsamples.testdpc.common.preference.DpcPreference mHideAppsParentPreference;
    private android.net.Uri mImageUri;
    private com.afwsamples.testdpc.common.preference.DpcPreference mInstallExistingPackagePreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mInstallNonMarketAppsPreference;
    private boolean mIsProfileOwner;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mLockdownAdminConfiguredNetworksPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mLogoutUserPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mManageLockTaskListPreference;
    private androidx.preference.SwitchPreference mMuteAudioSwitchPreference;
    private android.content.pm.PackageManager mPackageManager;
    private String mPackageName;
    private androidx.preference.SwitchPreference mPreferentialNetworkServiceSwitchPreference;
    private com.afwsamples.testdpc.common.preference.DpcEditTextPreference mProfileMaxTimeOff;
    private com.afwsamples.testdpc.common.preference.DpcPreference mReenableKeyguardPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mReenableStatusBarPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mRequestNetworkLogsPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mRequestPreRebootSecurityLogsPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mRequestSecurityLogsPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mSetAutoTimePreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mSetAutoTimeRequiredPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mSetAutoTimeZonePreference;
    private androidx.preference.Preference mSetDeviceOrganizationNamePreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mSetLocationEnabledPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mSetLocationModePreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mSetLockTaskFeaturesPreference;
    private com.afwsamples.testdpc.policy.PolicyManagementFragment$ShowCaCertificateListTask mShowCaCertificateListTask;
    private androidx.preference.SwitchPreference mStayOnWhilePluggedInSwitchPreference;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mSuspendPersonalApps;
    private android.telephony.TelephonyManager mTelephonyManager;
    private com.afwsamples.testdpc.common.preference.DpcPreference mUnhideAppsParentPreference;
    private android.os.UserManager mUserManager;
    private com.afwsamples.testdpc.common.preference.DpcPreference mUserRestrictionsParentPreference;
    private android.net.Uri mVideoUri;

    static PolicyManagementFragment()
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.BATTERY_PLUGGED_ANY = Integer.toString(7);
        com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY = new android.util.SparseIntArray(4);
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 29) {
            int[] v0 = new int[4];
            v0 = {0, 65536, 196608, 327680};
            int[] v1 = new int[4];
            v1 = {2131690027, 2131690025, 2131690026, 2131690024};
            int v2 = 0;
            while (v2 < v0.length) {
                com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.put(v0[v2], v1[v2]);
                v2++;
            }
        }
        return;
    }

    public PolicyManagementFragment()
    {
        this.mGetAccessibilityServicesTask = 0;
        this.mGetInputMethodsTask = 0;
        this.mGetNotificationListenersTask = 0;
        this.mShowCaCertificateListTask = 0;
        return;
    }

    static synthetic void access$000(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String[] p1)
    {
        p0.startKioskMode(p1);
        return;
    }

    static synthetic void access$100(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1)
    {
        p0.showToast(p1);
        return;
    }

    static synthetic void access$1000(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, android.os.UserHandle p1)
    {
        p0.removeUser(p1);
        return;
    }

    static synthetic void access$1100(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1)
    {
        p0.requestToManageCredentials(p1);
        return;
    }

    static synthetic void access$1200(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, android.content.Intent p1, String p2, int p3)
    {
        p0.importKeyCertificateFromIntent(p1, p2, p3);
        return;
    }

    static synthetic boolean access$1300(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, java.security.PrivateKey p2, java.security.cert.Certificate p3, String p4, boolean p5)
    {
        return p1.installKeyPair(p2, p3, p4, p5);
    }

    static synthetic void access$1400(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters p1)
    {
        p0.generateKeyPair(p1);
        return;
    }

    static synthetic void access$1600(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1, int p2)
    {
        p0.showToast(p1, p2);
        return;
    }

    static synthetic void access$1700(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1, Exception p2, int p3, Object[] p4)
    {
        p0.onErrorShowToast(p1, p2, p3, p4);
        return;
    }

    static synthetic void access$1800(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1, int p2, Object[] p3)
    {
        p0.onSuccessShowToast(p1, p2, p3);
        return;
    }

    static synthetic void access$1900(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1, int p2, Object[] p3)
    {
        p0.onErrorShowToast(p1, p2, p3);
        return;
    }

    static synthetic void access$200(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, int p1, Object[] p2)
    {
        p0.showToast(p1, p2);
        return;
    }

    static synthetic android.content.pm.PackageManager access$2000(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        return p1.mPackageManager;
    }

    static synthetic void access$2100(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, java.util.List p1)
    {
        p0.setPermittedNotificationListeners(p1);
        return;
    }

    static synthetic com.afwsamples.testdpc.DevicePolicyManagerGateway access$300(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        return p1.mDevicePolicyManagerGateway;
    }

    static synthetic android.app.admin.DevicePolicyManager access$400(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        return p1.mDevicePolicyManager;
    }

    static synthetic void access$500(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1, Exception p2)
    {
        p0.onErrorLog(p1, p2);
        return;
    }

    static synthetic void access$600(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1)
    {
        p0.onSuccessLog(p1);
        return;
    }

    static synthetic android.content.ComponentName access$700(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        return p1.mAdminComponentName;
    }

    static synthetic void access$800(com.afwsamples.testdpc.policy.PolicyManagementFragment p0, String p1, boolean p2)
    {
        p0.setDisableAccountManagement(p1, p2);
        return;
    }

    static synthetic android.os.UserManager access$900(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        return p1.mUserManager;
    }

    private void addPasswordComplexityListToPreference(androidx.preference.ListPreference p6)
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        java.util.ArrayList v3_1 = new java.util.ArrayList();
        int v2 = com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.size();
        int v1 = 0;
        while (v1 < v2) {
            v0_1.add(this.getString(com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.valueAt(v1)));
            v3_1.add(Integer.toString(com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.keyAt(v1)));
            v1++;
        }
        CharSequence[] v4_12 = new CharSequence[v2];
        p6.setEntries(((CharSequence[]) v0_1.toArray(v4_12)));
        CharSequence[] v4_2 = new CharSequence[v2];
        p6.setEntryValues(((CharSequence[]) v3_1.toArray(v4_2)));
        return;
    }

    private void chooseAccount()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            java.util.List v1 = java.util.Arrays.asList(this.mAccountManager.getAccounts());
            if (!v1.isEmpty()) {
                new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690104).setAdapter(new com.afwsamples.testdpc.common.AccountArrayAdapter(this.getActivity(), 2131296274, v1), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$65(this, v1)).show();
            } else {
                com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$65 v3_6 = new Object[0];
                this.showToast(2131689978, v3_6);
            }
        }
        return;
    }

    private void choosePrivateKeyForRemoval()
    {
        android.security.KeyChain.choosePrivateKeyAlias(this.getActivity(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$24(this), 0, 0, 0, 0);
        return;
    }

    private void clearApplicationUserData(String p5)
    {
        this.mDevicePolicyManager.clearApplicationUserData(this.mAdminComponentName, p5, new com.afwsamples.testdpc.util.MainThreadExecutor(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$52(this, p5));
        return;
    }

    private void constrainSpecialCasePreferences()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 24) {
            ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("reset_password")).clearNonCustomConstraints();
        }
        return;
    }

    private void dispatchCaptureIntent(String p4, int p5, android.net.Uri p6)
    {
        android.content.Intent v0_1 = new android.content.Intent(p4);
        if (v0_1.resolveActivity(this.mPackageManager) == null) {
            Object[] v2_1 = new Object[0];
            this.showToast(2131689601, v2_1);
        } else {
            v0_1.putExtra("output", p6);
            this.startActivityForResult(v0_1, p5);
        }
        return;
    }

    private void factoryResetOrgOwnedDevice()
    {
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(this.getActivity()).wipeData(0, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$67(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$68(this));
        return;
    }

    private void generateKeyPair(com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters p4)
    {
        Void[] v1_2 = new Void[0];
        new com.afwsamples.testdpc.policy.keymanagement.GenerateKeyAndCertificateTask(p4, this.getActivity(), this.mAdminComponentName).execute(v1_2);
        return;
    }

    private java.util.List getAllInstalledApplicationsSorted()
    {
        java.util.List v0 = this.mPackageManager.getInstalledApplications(8192);
        java.util.Collections.sort(v0, new android.content.pm.ApplicationInfo$DisplayNameComparator(this.mPackageManager));
        return v0;
    }

    private java.util.List getAllLauncherIntentResolversSorted()
    {
        java.util.List v1 = this.mPackageManager.queryIntentActivities(com.afwsamples.testdpc.common.Util.getLauncherIntent(this.getActivity()), 0);
        java.util.Collections.sort(v1, new android.content.pm.ResolveInfo$DisplayNameComparator(this.mPackageManager));
        return v1;
    }

    private java.util.List getMeteredDataRestrictedPkgs()
    {
        return this.mDevicePolicyManager.getMeteredDataDisabledPackages(this.mAdminComponentName);
    }

    private int getRequiredComplexity(android.app.admin.DevicePolicyManager p2)
    {
        return p2.getRequiredPasswordComplexity();
    }

    private android.net.Uri getStorageUri(String p5)
    {
        java.io.File v0_1 = new java.io.File(new StringBuilder().append(this.getActivity().getFilesDir()).append(java.io.File.separator).append("media").append(java.io.File.separator).append(p5).toString());
        v0_1.getParentFile().mkdirs();
        return androidx.core.content.FileProvider.getUriForFile(this.getActivity(), "com.afwsamples.testdpc.fileprovider", v0_1);
    }

    private boolean hasNetworkLoggingDelegation()
    {
        return com.afwsamples.testdpc.common.Util.hasDelegation(this.getActivity(), "delegation-network-logging");
    }

    private void importCaCertificateFromIntent(android.content.Intent p8)
    {
        if ((this.getActivity() != null) && ((!this.getActivity().isFinishing()) && (p8 != null))) {
            android.net.Uri v2 = p8.getData();
            if (v2 != null) {
                try {
                    boolean v4 = com.afwsamples.testdpc.common.Util.installCaCertificate(this.getActivity().getContentResolver().openInputStream(v2), this.mDevicePolicyManager, this.mAdminComponentName);
                } catch (java.io.FileNotFoundException v3) {
                    android.util.Log.e("PolicyManagement", "importCaCertificateFromIntent: ", v3);
                }
                int v5_4;
                if (!v4) {
                    v5_4 = 2131689857;
                } else {
                    v5_4 = 2131689858;
                }
                Object[] v6_3 = new Object[0];
                this.showToast(v5_4, v6_3);
            }
        }
        return;
    }

    private void importKeyCertificateFromIntent(android.content.Intent p2, String p3)
    {
        this.importKeyCertificateFromIntent(p2, p3, 0);
        return;
    }

    private void importKeyCertificateFromIntent(android.content.Intent p7, String p8, int p9)
    {
        if ((this.getActivity() != null) && ((!this.getActivity().isFinishing()) && (p7 != null))) {
            android.net.Uri v0 = p7.getData();
            if (v0 != null) {
                if (p8 == null) {
                    p8 = "";
                }
                try {
                    com.afwsamples.testdpc.common.CertificateUtil$PKCS12ParseInfo v2 = com.afwsamples.testdpc.common.CertificateUtil.parsePKCS12Certificate(this.getActivity().getContentResolver(), v0, p8);
                    this.showPromptForKeyCertificateAlias(v2.privateKey, v2.certificate, v2.alias);
                } catch (ClassCastException v1) {
                    android.util.Log.e("PolicyManagement", "Unable to load key", v1);
                } catch (ClassCastException v1) {
                } catch (ClassCastException v1) {
                } catch (ClassCastException v1) {
                } catch (ClassCastException v1) {
                } catch (ClassCastException v1) {
                    this.showPromptForCertificatePassword(p7, (p9 + 1));
                } catch (ClassCastException v1) {
                    String v4_2 = new Object[0];
                    this.showToast(2131689992, v4_2);
                }
            }
        }
        return;
    }

    private void installApkPackageFromIntent(android.content.Intent p6)
    {
        if ((this.getActivity() != null) && ((!this.getActivity().isFinishing()) && (p6 != null))) {
            android.net.Uri v0 = p6.getData();
            if (v0 != null) {
                try {
                    com.afwsamples.testdpc.common.PackageInstallationUtils.installPackage(this.getActivity(), this.getActivity().getContentResolver().openInputStream(v0), 0);
                } catch (java.io.IOException v1) {
                    this.showToast("Failed to open APK file");
                    android.util.Log.e("PolicyManagement", "Failed to open APK file", v1);
                }
            }
        }
        return;
    }

    private boolean installKeyPair(java.security.PrivateKey p9, java.security.cert.Certificate p10, String p11, boolean p12)
    {
        try {
            boolean v0_3;
            if (com.afwsamples.testdpc.common.Util.SDK_INT < 28) {
                if (p12) {
                    v0_3 = this.mDevicePolicyManager.installKeyPair(this.mAdminComponentName, p9, p10, p11);
                } else {
                    throw new IllegalArgumentException("Cannot set key as non-user-selectable prior to P");
                }
            } else {
                int v5;
                boolean v0_2 = this.mDevicePolicyManager;
                android.content.ComponentName v1_1 = this.mAdminComponentName;
                java.security.cert.Certificate[] v3 = new java.security.cert.Certificate[1];
                v3[0] = p10;
                if (!p12) {
                    v5 = 0;
                } else {
                    v5 = 2;
                }
                v0_3 = v0_2.installKeyPair(v1_1, p9, v3, p11, v5);
            }
        } catch (SecurityException v6) {
            android.util.Log.w("PolicyManagement", "Not allowed to install keys", v6);
            v0_3 = 0;
        }
        return v0_3;
    }

    private void installUpdate()
    {
        this.mDevicePolicyManager.installSystemUpdate(this.mAdminComponentName, androidx.core.content.FileProvider.getUriForFile(this.getActivity(), "com.afwsamples.testdpc.fileprovider", new java.io.File(this.getContext().getFilesDir(), "ota.zip")), new com.afwsamples.testdpc.util.MainThreadExecutor(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$2(this));
        return;
    }

    private boolean isCredentialManagerApp()
    {
        int v2 = 0;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 31) {
            android.app.admin.DevicePolicyManager v0_1 = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService(android.app.admin.DevicePolicyManager));
            String v1 = this.getActivity().getPackageName();
            if ((!v0_1.isDeviceOwnerApp(v1)) && (!v0_1.isProfileOwnerApp(v1))) {
                v2 = 1;
            }
        }
        return v2;
    }

    private boolean isDelegatedApp()
    {
        int v1 = 0;
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 26) && (!((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService(android.app.admin.DevicePolicyManager)).getDelegatedScopes(0, this.getActivity().getPackageName()).isEmpty())) {
            v1 = 1;
        }
        return v1;
    }

    private boolean isDeviceOwner()
    {
        return this.mDevicePolicyManager.isDeviceOwnerApp(this.mPackageName);
    }

    private boolean isManagedProfileOwner()
    {
        return com.afwsamples.testdpc.common.Util.isManagedProfileOwner(this.getActivity());
    }

    private boolean isNetworkLoggingEnabled()
    {
        boolean v0_0 = 0;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 31) {
            if ((this.isDeviceOwner()) || ((this.isManagedProfileOwner()) || (this.hasNetworkLoggingDelegation()))) {
                v0_0 = this.mDevicePolicyManager.isNetworkLoggingEnabled(this.mAdminComponentName);
            }
        } else {
            if ((this.isDeviceOwner()) || (this.hasNetworkLoggingDelegation())) {
            }
        }
        return v0_0;
    }

    private boolean isOrganizationOwnedDevice()
    {
        if ((!this.mDevicePolicyManager.isDeviceOwnerApp(this.mPackageName)) && ((!this.mDevicePolicyManager.isProfileOwnerApp(this.mPackageName)) || (!this.mDevicePolicyManagerGateway.isOrganizationOwnedDeviceWithManagedProfile()))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private boolean isPackageSuspended(String p4)
    {
        try {
            int v1_1 = this.mDevicePolicyManagerGateway.isPackageSuspended(p4);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.e("PolicyManagement", "Unable check if package is suspended", v0);
            v1_1 = 0;
        }
        return v1_1;
    }

    private boolean isSecurityLoggingEnabled()
    {
        return this.mDevicePolicyManager.isSecurityLoggingEnabled(this.mAdminComponentName);
    }

    static final synthetic void lambda$null$148$PolicyManagementFragment(String p2, Exception p3)
    {
        Object[] v1_1 = new Object[0];
        com.afwsamples.testdpc.common.Util.onErrorLog("enableSystemApp(%s)", p2, v1_1);
        return;
    }

    static final synthetic void lambda$promptInstallUpdate$106$PolicyManagementFragment(android.content.DialogInterface p0, int p1)
    {
        return;
    }

    static final synthetic void lambda$setNotificationAllowlistEditBox$162$PolicyManagementFragment(android.content.DialogInterface p0, int p1)
    {
        p0.dismiss();
        return;
    }

    static final synthetic void lambda$showChooseUserPrompt$142$PolicyManagementFragment(com.afwsamples.testdpc.policy.PolicyManagementFragment$UserCallback p1, java.util.List p2, android.content.DialogInterface p3, int p4)
    {
        p1.onUserChosen(((android.os.UserHandle) p2.get(p4)));
        return;
    }

    static final synthetic String lambda$showClearAppDataPrompt$156$PolicyManagementFragment(android.content.pm.ApplicationInfo p1)
    {
        return p1.packageName;
    }

    static final synthetic void lambda$showHideAppsOnParentPrompt$152$PolicyManagementFragment(android.content.DialogInterface p0, int p1)
    {
        p0.dismiss();
        return;
    }

    static final synthetic void lambda$showLockNowPrompt$110$PolicyManagementFragment(android.widget.CheckBox p1, android.widget.CompoundButton p2, boolean p3)
    {
        int v0;
        if (p3) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        p1.setEnabled(v0);
        return;
    }

    static final synthetic void lambda$showLockNowPrompt$111$PolicyManagementFragment(android.widget.CheckBox p1, android.widget.CompoundButton p2, boolean p3)
    {
        int v0;
        if (p3) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        p1.setEnabled(v0);
        return;
    }

    static final synthetic void lambda$showSetMeteredDataPrompt$155$PolicyManagementFragment(com.afwsamples.testdpc.policy.MeteredDataRestrictionInfoAdapter p0, android.widget.AdapterView p1, android.view.View p2, int p3, long p4)
    {
        p0.onItemClick(p1, p2, p3, p4);
        return;
    }

    private void loadAppFeedbackNotifications()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 24) {
            this.mEnableAppFeedbackNotificationsPreference.setChecked(androidx.preference.PreferenceManager.getDefaultSharedPreferences(this.getContext()).getBoolean(this.getString(2131689572), 0));
        }
        return;
    }

    private void loadAppStatus()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT < 30) || (!this.mDevicePolicyManagerGateway.isOrganizationOwnedDeviceWithManagedProfile())) {
            int v1 = 0;
        } else {
            v1 = 1;
        }
        int v0;
        if (!this.mDevicePolicyManager.isProfileOwnerApp(this.mPackageName)) {
            if (!this.mDevicePolicyManager.isDeviceOwnerApp(this.mPackageName)) {
                if (!this.isDelegatedApp()) {
                    v0 = 2131690310;
                } else {
                    v0 = 2131690306;
                }
            } else {
                v0 = 2131690307;
            }
        } else {
            if (v1 == 0) {
                v0 = 2131690308;
            } else {
                v0 = 2131690309;
            }
        }
        this.findPreference("app_status").setSummary(v0);
        return;
    }

    private void loadEnrollmentSpecificId()
    {
        androidx.preference.Preference v0 = this.findPreference("enrollment_specific_id");
        if (v0.isEnabled()) {
            v0.setSummary(this.mDevicePolicyManager.getEnrollmentSpecificId());
        }
        return;
    }

    private void loadIsEphemeralUserUi()
    {
        if (this.mEphemeralUserPreference.isEnabled()) {
            int v1_1;
            if (!this.mDevicePolicyManager.isEphemeralUser(this.mAdminComponentName)) {
                v1_1 = 2131689977;
            } else {
                v1_1 = 2131690404;
            }
            this.mEphemeralUserPreference.setSummary(v1_1);
        }
        return;
    }

    private void loadPasswordComplexity()
    {
        androidx.preference.Preference v3 = this.findPreference("password_complexity");
        if (v3.isEnabled()) {
            String v4;
            int v0 = com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.get(this.mDevicePolicyManager.getPasswordComplexity());
            if ((!this.isManagedProfileOwner()) || (com.afwsamples.testdpc.common.Util.SDK_INT < 30)) {
                v4 = this.getString(v0);
            } else {
                int v1 = com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.get(this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName).getPasswordComplexity());
                String v5_6 = this.getString(2131690028);
                Object[] v6_4 = new Object[2];
                v6_4[0] = this.getString(v1);
                v6_4[1] = this.getString(v0);
                v4 = String.format(v5_6, v6_4);
            }
            v3.setSummary(v4);
        }
        return;
    }

    private void loadPasswordCompliant()
    {
        androidx.preference.Preference v4 = this.findPreference("password_compliant");
        if (v4.isEnabled()) {
            String v5;
            boolean v0 = this.mDevicePolicyManager.isActivePasswordSufficient();
            if (!this.isManagedProfileOwner()) {
                String v6_2 = this.getString(2131690031);
                Object[] v7_0 = new Object[1];
                v7_0[0] = Boolean.toString(v0);
                v5 = String.format(v6_2, v7_0);
            } else {
                String v1;
                android.app.admin.DevicePolicyManager v3 = this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName);
                boolean v2 = v3.isActivePasswordSufficient();
                if (com.afwsamples.testdpc.common.Util.SDK_INT >= 31) {
                    v1 = Boolean.toString(v3.isActivePasswordSufficientForDeviceRequirement());
                } else {
                    v1 = "N/A";
                }
                String v6_8 = this.getString(2131690030);
                Object[] v7_4 = new Object[3];
                v7_4[0] = Boolean.toString(v2);
                v7_4[1] = v1;
                v7_4[2] = Boolean.toString(v0);
                v5 = String.format(v6_8, v7_4);
            }
            v4.setSummary(v5);
        }
        return;
    }

    private void loadRequiredPasswordComplexity()
    {
        androidx.preference.Preference v3 = this.findPreference("required_password_complexity");
        if (v3.isEnabled()) {
            String v4;
            int v0 = com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.get(this.getRequiredComplexity(this.mDevicePolicyManager));
            if ((!this.isManagedProfileOwner()) || (com.afwsamples.testdpc.common.Util.SDK_INT < 31)) {
                v4 = this.getString(v0);
            } else {
                int v1 = com.afwsamples.testdpc.policy.PolicyManagementFragment.PASSWORD_COMPLEXITY.get(this.getRequiredComplexity(this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName)));
                String v5_6 = this.getString(2131690028);
                Object[] v6_4 = new Object[2];
                v6_4[0] = this.getString(v1);
                v6_4[1] = this.getString(v0);
                v4 = String.format(v5_6, v6_4);
            }
            v3.setSummary(v4);
        }
        return;
    }

    private void loadSecurityPatch()
    {
        androidx.preference.Preference v4 = this.findPreference("security_patch");
        if (v4.isEnabled()) {
            String v0 = android.os.Build$VERSION.SECURITY_PATCH;
            try {
                v4.setSummary(java.text.DateFormat.getDateInstance(2).format(new java.text.SimpleDateFormat("yyyy-MM-dd").parse(v0)));
            } catch (java.text.ParseException v3) {
                Object[] v6_1 = new Object[1];
                v6_1[0] = v0;
                v4.setSummary(this.getString(2131689873, v6_1));
            }
        }
        return;
    }

    private void loadSeparateChallenge()
    {
        androidx.preference.Preference v1 = this.findPreference("separate_challenge");
        if (v1.isEnabled()) {
            String v2_1;
            if (this.mDevicePolicyManager.isUsingUnifiedPassword(this.mAdminComponentName)) {
                v2_1 = 0;
            } else {
                v2_1 = 1;
            }
            Boolean v0 = Boolean.valueOf(v2_1);
            String v2_3 = this.getString(2131690186);
            Object[] v3_1 = new Object[1];
            v3_1[0] = Boolean.toString(v0.booleanValue());
            v1.setSummary(String.format(v2_3, v3_1));
        }
        return;
    }

    private void lockNow()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT < 26) || (!this.isManagedProfileOwner())) {
            com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl v0 = this.mDevicePolicyManagerGateway;
            if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 24) && (this.isManagedProfileOwner())) {
                v0 = com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(this.getActivity());
            }
            v0.lockNow(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$22(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$23(this));
        } else {
            this.showLockNowPrompt();
        }
        return;
    }

    private void logAndShowToast(String p3, Exception p4)
    {
        android.util.Log.e("PolicyManagement", p3, p4);
        this.showToast(new StringBuilder().append(p3).append(": ").append(p4.getMessage()).toString());
        return;
    }

    private void logoutUser()
    {
        int v1_1;
        if (this.mDevicePolicyManager.logoutUser(this.mAdminComponentName) != 0) {
            v1_1 = 2131689823;
        } else {
            v1_1 = 2131690356;
        }
        Object[] v2_2 = new Object[0];
        this.showToast(v1_1, v2_2);
        return;
    }

    private void maybeDisableLockTaskPreferences()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 26) {
            String[] v0 = new String[4];
            v0[0] = "manage_lock_task";
            v0[1] = "check_lock_task_permitted";
            v0[2] = "start_lock_task";
            v0[3] = "stop_lock_task";
            int v4_2 = v0.length;
            int v3_2 = 0;
            while (v3_2 < v4_2) {
                ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v0[v3_2])).setAdminConstraint(2);
                v3_2++;
            }
        }
        return;
    }

    private void maybeUpdateProfileMaxTimeOff()
    {
        if (this.mProfileMaxTimeOff.isEnabled()) {
            String v0 = Long.toString(java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(this.mDevicePolicyManager.getManagedProfileMaximumTimeOff(this.mAdminComponentName)));
            this.mProfileMaxTimeOff.setText(v0);
            this.mProfileMaxTimeOff.setSummary(v0);
        }
        return;
    }

    private void onCreateSetNewPasswordWithComplexityPreference()
    {
        androidx.preference.ListPreference v0_1 = ((androidx.preference.ListPreference) this.findPreference("set_new_password_with_complexity"));
        this.addPasswordComplexityListToPreference(v0_1);
        v0_1.setOnPreferenceChangeListener(this);
        return;
    }

    private void onCreateSetRequiredPasswordComplexityOnParentPreference()
    {
        androidx.preference.ListPreference v0_1 = ((androidx.preference.ListPreference) this.findPreference("set_required_password_complexity_on_parent"));
        this.addPasswordComplexityListToPreference(v0_1);
        v0_1.setOnPreferenceChangeListener(this);
        return;
    }

    private void onCreateSetRequiredPasswordComplexityPreference()
    {
        androidx.preference.ListPreference v0_1 = ((androidx.preference.ListPreference) this.findPreference("set_required_password_complexity"));
        this.addPasswordComplexityListToPreference(v0_1);
        v0_1.setOnPreferenceChangeListener(this);
        return;
    }

    private void onErrorOrFailureShowToast(String p5, Exception p6, int p7, int p8)
    {
        if (!(p6 instanceof com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedOperationException)) {
            android.util.Log.e("PolicyManagement", new StringBuilder().append("Exception when calling ").append(p5).toString(), p6);
            Object[] v0_1 = new Object[0];
            this.showToast(p8, v0_1);
        } else {
            android.util.Log.e("PolicyManagement", new StringBuilder().append(p5).append(" returned false").toString());
            Object[] v0_3 = new Object[0];
            this.showToast(p7, v0_3);
        }
        return;
    }

    private varargs void onErrorShowToast(String p4, int p5, Object[] p6)
    {
        android.util.Log.e("PolicyManagement", new StringBuilder().append(p4).append("() failed").toString());
        this.showToast(p5, p6);
        return;
    }

    private varargs void onErrorShowToast(String p4, Exception p5, int p6, Object[] p7)
    {
        android.util.Log.e("PolicyManagement", new StringBuilder().append(p4).append("() failed: ").toString(), p5);
        this.showToast(p6, p7);
        return;
    }

    private varargs void onSuccessShowToast(String p4, int p5, Object[] p6)
    {
        android.util.Log.d("PolicyManagement", new StringBuilder().append(p4).append("() succeeded").toString());
        this.showToast(p5, p6);
        return;
    }

    private varargs void onSuccessShowToastWithHardcodedMessage(String p2, Object[] p3)
    {
        this.showToast(String.format(p2, p3));
        return;
    }

    private static int parseInt(String p1, int p2)
    {
        try {
            p2 = Integer.parseInt(p1);
        } catch (NumberFormatException v0) {
        }
        return p2;
    }

    private void promptInstallUpdate()
    {
        new android.app.AlertDialog$Builder(this.getActivity()).setMessage(2131689865).setTitle(2131689864).setPositiveButton(2131689867, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$20(this)).setNegativeButton(2131689866, com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$21.$instance).create().show();
        return;
    }

    private void reboot()
    {
        if (this.mTelephonyManager.getCallState() == 0) {
            this.mDevicePolicyManagerGateway.reboot(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$57(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$58(this));
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$57 v1_1 = new Object[0];
            this.showToast(2131690098, v1_1);
        }
        return;
    }

    private void relaunchInLockTaskMode()
    {
        android.app.ActivityManager v0_1 = ((android.app.ActivityManager) this.getContext().getSystemService(android.app.ActivityManager));
        android.content.Intent v2_0 = new android.content.Intent(this.getActivity(), this.getActivity().getClass());
        v2_0.addFlags(268435456);
        if (!v0_1.isInLockTaskMode()) {
            v2_0.addFlags(134217728);
        }
        android.app.ActivityOptions v3 = android.app.ActivityOptions.makeBasic();
        v3.setLockTaskEnabled(1);
        try {
            this.startActivity(v2_0, v3.toBundle());
            this.getActivity().finish();
        } catch (SecurityException v1) {
            this.showToast("You must first allow-list the TestDPC package for LockTask");
        }
        return;
    }

    private void reloadAffiliatedApis()
    {
        if (this.mAffiliatedUserPreference.isEnabled()) {
            int v0_1;
            if (!this.mDevicePolicyManager.isAffiliatedUser()) {
                v0_1 = 2131689977;
            } else {
                v0_1 = 2131690404;
            }
            this.mAffiliatedUserPreference.setSummary(v0_1);
        }
        this.mInstallExistingPackagePreference.refreshEnabledState();
        this.mManageLockTaskListPreference.refreshEnabledState();
        this.mSetLockTaskFeaturesPreference.refreshEnabledState();
        this.mLogoutUserPreference.refreshEnabledState();
        this.mDisableStatusBarPreference.refreshEnabledState();
        this.mReenableStatusBarPreference.refreshEnabledState();
        this.mDisableKeyguardPreference.refreshEnabledState();
        this.mReenableKeyguardPreference.refreshEnabledState();
        return;
    }

    private void reloadAutoBrightnessUi()
    {
        int v1 = 1;
        if (this.mAutoBrightnessPreference.isEnabled()) {
            if (com.afwsamples.testdpc.policy.PolicyManagementFragment.parseInt(android.provider.Settings$System.getString(this.getActivity().getContentResolver(), "screen_brightness_mode"), 0) != 1) {
                v1 = 0;
            }
            this.mAutoBrightnessPreference.setChecked(v1);
        }
        return;
    }

    private void reloadCameraDisableOnParentUi()
    {
        this.mDisableCameraOnParentSwitchPreference.setChecked(this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName).getCameraDisabled(this.mAdminComponentName));
        return;
    }

    private void reloadCameraDisableUi()
    {
        this.mDisableCameraSwitchPreference.setChecked(this.mDevicePolicyManager.getCameraDisabled(this.mAdminComponentName));
        return;
    }

    private void reloadCommonCriteriaModeUi()
    {
        if (this.mCommonCriteriaModePreference.isEnabled()) {
            this.mCommonCriteriaModePreference.setChecked(this.mDevicePolicyManager.isCommonCriteriaModeEnabled(this.mAdminComponentName));
        }
        return;
    }

    private void reloadEnableBackupServiceUi()
    {
        if (this.mEnableBackupServicePreference.isEnabled()) {
            this.mEnableBackupServicePreference.setChecked(this.mDevicePolicyManager.isBackupServiceEnabled(this.mAdminComponentName));
        }
        return;
    }

    private void reloadEnableLogoutUi()
    {
        if (this.mEnableLogoutPreference.isEnabled()) {
            this.mEnableLogoutPreference.setChecked(this.mDevicePolicyManager.isLogoutEnabled());
        }
        return;
    }

    private void reloadEnableNetworkLoggingUi()
    {
        if (this.mEnableNetworkLoggingPreference.isEnabled()) {
            this.mEnableNetworkLoggingPreference.setChecked(this.isNetworkLoggingEnabled());
            this.mRequestNetworkLogsPreference.refreshEnabledState();
        }
        return;
    }

    private void reloadEnableSecurityLoggingUi()
    {
        if (this.mEnableSecurityLoggingPreference.isEnabled()) {
            this.mEnableSecurityLoggingPreference.setChecked(this.mDevicePolicyManager.isSecurityLoggingEnabled(this.mAdminComponentName));
            this.mRequestSecurityLogsPreference.refreshEnabledState();
            this.mRequestPreRebootSecurityLogsPreference.refreshEnabledState();
        }
        return;
    }

    private void reloadEnableUsbDataSignalingUi()
    {
        if (this.mEnableUsbDataSignalingPreference.isEnabled()) {
            this.mEnableUsbDataSignalingPreference.setChecked(this.mDevicePolicyManager.isUsbDataSignalingEnabled());
        }
        return;
    }

    private void reloadLocationEnabledUi()
    {
        this.mSetLocationEnabledPreference.setChecked(((android.location.LocationManager) this.getActivity().getSystemService(android.location.LocationManager)).isLocationEnabled());
        return;
    }

    private void reloadLocationModeUi()
    {
        int v1 = 0;
        if (com.afwsamples.testdpc.policy.PolicyManagementFragment.parseInt(android.provider.Settings$System.getString(this.getActivity().getContentResolver(), "location_mode"), 0) != 0) {
            v1 = 1;
        }
        this.mSetLocationModePreference.setChecked(v1);
        return;
    }

    private void reloadLockdownAdminConfiguredNetworksUi()
    {
        this.mLockdownAdminConfiguredNetworksPreference.setChecked(this.mDevicePolicyManager.hasLockdownAdminConfiguredNetworks(this.mAdminComponentName));
        return;
    }

    private void reloadMuteAudioUi()
    {
        if (this.mMuteAudioSwitchPreference.isEnabled()) {
            this.mMuteAudioSwitchPreference.setChecked(this.mDevicePolicyManager.isMasterVolumeMuted(this.mAdminComponentName));
        }
        return;
    }

    private void reloadPersonalAppsSuspendedUi()
    {
        if (this.mSuspendPersonalApps.isEnabled()) {
            int v1_1;
            if (this.mDevicePolicyManager.getPersonalAppsSuspendedReasons(this.mAdminComponentName) == 0) {
                v1_1 = 0;
            } else {
                v1_1 = 1;
            }
            this.mSuspendPersonalApps.setChecked(v1_1);
        }
        return;
    }

    private void reloadScreenCaptureDisableOnParentUi()
    {
        this.mDisableScreenCaptureOnParentSwitchPreference.setChecked(this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName).getScreenCaptureDisabled(this.mAdminComponentName));
        return;
    }

    private void reloadScreenCaptureDisableUi()
    {
        this.mDisableScreenCaptureSwitchPreference.setChecked(this.mDevicePolicyManager.getScreenCaptureDisabled(this.mAdminComponentName));
        return;
    }

    private void reloadSetAutoTimeRequiredUi()
    {
        this.mSetAutoTimeRequiredPreference.setChecked(this.mDevicePolicyManager.getAutoTimeRequired());
        return;
    }

    private void reloadSetAutoTimeUi()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 30) && (this.isOrganizationOwnedDevice())) {
            this.mSetAutoTimePreference.setChecked(this.mDevicePolicyManager.getAutoTimeEnabled(this.mAdminComponentName));
        }
        return;
    }

    private void reloadSetAutoTimeZoneUi()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 30) && (this.isOrganizationOwnedDevice())) {
            this.mSetAutoTimeZonePreference.setChecked(this.mDevicePolicyManager.getAutoTimeZoneEnabled(this.mAdminComponentName));
        }
        return;
    }

    private void removeAccount(android.accounts.Account p5)
    {
        this.mAccountManager.removeAccount(p5, this.getActivity(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$66(this, p5), 0);
        return;
    }

    private void removeUser(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.removeUser(p4, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$36(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$37(this));
        return;
    }

    private void requestBugReport()
    {
        this.mDevicePolicyManagerGateway.requestBugreport(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$33(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$34(this));
        return;
    }

    private void requestToManageCredentials(String p10)
    {
        android.security.AppUriAuthenticationPolicy$Builder v0_1 = new android.security.AppUriAuthenticationPolicy$Builder();
        String[] v2 = p10.split("\n");
        int v1 = 0;
        while (v1 < v2.length) {
            String[] v3 = v2[v1].split("#");
            if (v3.length == 3) {
                v0_1.addAppAndUriMapping(v3[0], new android.net.Uri$Builder().authority(v3[1]).build(), v3[2]);
                v1++;
            } else {
                String v4_6 = this.getString(2131689869);
                android.net.Uri v5_7 = new Object[1];
                v5_7[0] = v2[v1];
                this.showToast(String.format(v4_6, v5_7));
            }
            return;
        }
        this.startActivityForResult(android.security.KeyChain.createManageCredentialsIntent(v0_1.build()), 7694);
        return;
    }

    private void setAutoTimeEnabled(boolean p3)
    {
        this.mDevicePolicyManager.setAutoTimeEnabled(this.mAdminComponentName, p3);
        return;
    }

    private void setAutoTimeZoneEnabled(boolean p3)
    {
        this.mDevicePolicyManager.setAutoTimeZoneEnabled(this.mAdminComponentName, p3);
        return;
    }

    private void setBackupServiceEnabled(boolean p3)
    {
        this.mDevicePolicyManager.setBackupServiceEnabled(this.mAdminComponentName, p3);
        return;
    }

    private void setCameraDisabled(boolean p3)
    {
        this.mDevicePolicyManager.setCameraDisabled(this.mAdminComponentName, p3);
        return;
    }

    private void setCameraDisabledOnParent(boolean p4)
    {
        this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName).setCameraDisabled(this.mAdminComponentName, p4);
        return;
    }

    private void setCommonCriteriaModeEnabled(boolean p3)
    {
        this.mDevicePolicyManager.setCommonCriteriaModeEnabled(this.mAdminComponentName, p3);
        return;
    }

    private void setDisableAccountManagement(String p4, boolean p5)
    {
        if (android.text.TextUtils.isEmpty(p4)) {
            Object[] v1_2 = new Object[0];
            this.showToast(2131689821, v1_2);
        } else {
            int v0_0;
            this.mDevicePolicyManager.setAccountManagementDisabled(this.mAdminComponentName, p4, p5);
            if (!p5) {
                v0_0 = 2131689513;
            } else {
                v0_0 = 2131689512;
            }
            Object[] v1_1 = new Object[1];
            v1_1[0] = p4;
            this.showToast(v0_0, v1_1);
        }
        return;
    }

    private void setKeyGuardDisabled(boolean p5)
    {
        this.mDevicePolicyManagerGateway.setKeyguardDisabled(p5, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$31(this, p5), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$32(this, p5));
        if (!this.mDevicePolicyManager.setKeyguardDisabled(this.mAdminComponentName, p5)) {
            if (!p5) {
                Object[] v1_0 = new Object[0];
                this.showToast(2131690327, v1_0);
            } else {
                Object[] v1_1 = new Object[0];
                this.showToast(2131690326, v1_1);
            }
        }
        return;
    }

    private void setNotificationAllowlistEditBox()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v2 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v1_1 = ((android.widget.EditText) v2.findViewById(2131296472));
            v1_1.setHint(this.getString(2131690214));
            java.util.List v0 = this.mDevicePolicyManager.getPermittedCrossProfileNotificationListeners(this.mAdminComponentName);
            if (v0 != null) {
                v1_1.setText(android.text.TextUtils.join(", ", v0));
            } else {
                v1_1.setText("null");
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131690214)).setView(v2).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$55(this, v1_1)).setNegativeButton(17039360, com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$56.$instance).show();
        }
        return;
    }

    private void setOrganizationId(String p6)
    {
        try {
            String v1_0 = this.mDevicePolicyManager;
            Object[] v3_1 = new Object[1];
            v3_1[0] = p6;
            com.afwsamples.testdpc.common.ReflectionUtil.invoke(v1_0, "setOrganizationId", v3_1);
        } catch (com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException v0) {
            android.util.Log.e("PolicyManagement", "Error invoking setOrganizationId", v0);
            this.showToast("Error setting organization ID");
        }
        this.loadEnrollmentSpecificId();
        return;
    }

    private void setPermittedInputMethodsOnParent()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl v1 = com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(this.getActivity());
            android.view.View v3 = this.getActivity().getLayoutInflater().inflate(2131427413, 0);
            ((android.widget.Button) v3.findViewById(2131296309)).setOnClickListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$53(this, v1));
            ((android.widget.Button) v3.findViewById(2131296676)).setOnClickListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$54(this, v1));
            new android.app.AlertDialog$Builder(this.getActivity()).setView(v3).show();
        }
        return;
    }

    private void setPermittedNotificationListeners(java.util.List p5)
    {
        int v1;
        boolean vtmp1 = this.mDevicePolicyManager.setPermittedCrossProfileNotificationListeners(this.mAdminComponentName, p5);
        if (p5 != null) {
            v1 = 2131690218;
        } else {
            v1 = 2131689545;
        }
        if (!vtmp1) {
            v1 = 2131690217;
        }
        Object[] v2_1 = new Object[0];
        this.showToast(v1, v2_1);
        return;
    }

    private void setPreferenceChangeListeners(String[] p5)
    {
        int v2 = p5.length;
        int v1 = 0;
        while (v1 < v2) {
            this.findPreference(p5[v1]).setOnPreferenceChangeListener(this);
            v1++;
        }
        return;
    }

    private void setRequiredPasswordComplexity(int p2)
    {
        this.setRequiredPasswordComplexity(this.mDevicePolicyManager, p2);
        return;
    }

    private void setRequiredPasswordComplexity(android.app.admin.DevicePolicyManager p1, int p2)
    {
        p1.setRequiredPasswordComplexity(p2);
        this.loadPasswordCompliant();
        this.loadPasswordComplexity();
        this.loadRequiredPasswordComplexity();
        return;
    }

    private void setRequiredPasswordComplexityOnParent(int p3)
    {
        this.setRequiredPasswordComplexity(this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName), p3);
        return;
    }

    private void setScreenCaptureDisabled(boolean p3)
    {
        this.mDevicePolicyManager.setScreenCaptureDisabled(this.mAdminComponentName, p3);
        return;
    }

    private void setScreenCaptureDisabledOnParent(boolean p4)
    {
        this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName).setScreenCaptureDisabled(this.mAdminComponentName, p4);
        return;
    }

    private void setSecurityLoggingEnabled(boolean p3)
    {
        this.mDevicePolicyManager.setSecurityLoggingEnabled(this.mAdminComponentName, p3);
        return;
    }

    private void setStatusBarDisabled(boolean p3)
    {
        if ((!this.mDevicePolicyManager.setStatusBarDisabled(this.mAdminComponentName, p3)) && (p3)) {
            this.showToast("Unable to disable status bar when lock password is set.");
        }
        return;
    }

    private void setUsbDataSignalingEnabled(boolean p2)
    {
        this.mDevicePolicyManagerGateway.setUsbDataSignalingEnabled(p2);
        return;
    }

    private void showBlockUninstallationByPackageNamePrompt()
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            android.view.View v3 = android.view.LayoutInflater.from(v0).inflate(2131427446, 0);
            android.widget.EditText v2_1 = ((android.widget.EditText) v3.findViewById(2131296472));
            v2_1.setHint(this.getString(2131689851));
            new android.app.AlertDialog$Builder(v0).setTitle(2131689592).setView(v3).setPositiveButton(2131689588, new com.afwsamples.testdpc.policy.PolicyManagementFragment$17(this, v2_1)).setNeutralButton(2131690328, new com.afwsamples.testdpc.policy.PolicyManagementFragment$16(this, v2_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showBlockUninstallationPrompt()
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            java.util.List v2 = this.mPackageManager.getInstalledApplications(0);
            java.util.ArrayList v6_1 = new java.util.ArrayList();
            java.util.Collections.sort(v2, new android.content.pm.ApplicationInfo$DisplayNameComparator(this.mPackageManager));
            android.app.AlertDialog$Builder v7_2 = v2.iterator();
            while (v7_2.hasNext()) {
                android.content.pm.ApplicationInfo v1_1 = ((android.content.pm.ApplicationInfo) v7_2.next());
                if ((v1_1.flags & 1) == 0) {
                    android.content.pm.ResolveInfo v5_1 = new android.content.pm.ResolveInfo();
                    v5_1.resolvePackageName = v1_1.packageName;
                    v6_1.add(v5_1);
                }
            }
            com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter v3_1 = new com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter(this.getActivity(), 2131296534, v6_1, this.mAdminComponentName);
            android.widget.ListView v4_1 = new android.widget.ListView(this.getActivity());
            v4_1.setAdapter(v3_1);
            v4_1.setOnItemClickListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$25(this, v3_1));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689592).setView(v4_1).setPositiveButton(2131689631, 0).show();
        }
        return;
    }

    private void showCaCertificateList()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            if ((this.mShowCaCertificateListTask != null) && (!this.mShowCaCertificateListTask.isCancelled())) {
                this.mShowCaCertificateListTask.cancel(1);
            }
            this.mShowCaCertificateListTask = new com.afwsamples.testdpc.policy.PolicyManagementFragment$ShowCaCertificateListTask(this, 0);
            int v1_3 = new Void[0];
            this.mShowCaCertificateListTask.execute(v1_3);
        }
        return;
    }

    private void showCheckLockTaskPermittedPrompt()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296472));
            v0_1.setHint(this.getString(2131689851));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689615)).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$8(this, v0_1)).setNegativeButton(17039360, new com.afwsamples.testdpc.policy.PolicyManagementFragment$7(this)).show();
        }
        return;
    }

    private void showChooseUserPrompt(int p5, com.afwsamples.testdpc.policy.PolicyManagementFragment$UserCallback p6)
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            java.util.List v0 = this.mDevicePolicyManager.getSecondaryUsers(this.mAdminComponentName);
            if (!v0.isEmpty()) {
                new android.app.AlertDialog$Builder(this.getActivity()).setTitle(p5).setAdapter(new com.afwsamples.testdpc.common.UserArrayAdapter(this.getActivity(), 2131296722, v0), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$42(p6, v0)).show();
            } else {
                com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$42 v3_5 = new Object[0];
                this.showToast(2131689988, v3_5);
            }
        }
        return;
    }

    private void showClearAppDataPrompt()
    {
        java.util.List v1_1 = ((java.util.List) this.getAllInstalledApplicationsSorted().stream().map(com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$50.$instance).collect(java.util.stream.Collectors.toList()));
        if (!v1_1.isEmpty()) {
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689624)).setAdapter(new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131296534, v1_1, 1), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$51(this, v1_1)).show();
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$51 v3_7 = new Object[0];
            this.showToast(2131689621, v3_7);
        }
        return;
    }

    private void showConfigurePolicyAndManageCredentialsPrompt()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            String v1 = "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias";
            android.widget.LinearLayout v3_1 = ((android.widget.LinearLayout) this.getActivity().getLayoutInflater().inflate(2131427446, 0));
            android.widget.EditText v2_1 = ((android.widget.EditText) v3_1.findViewById(2131296472));
            v2_1.setSingleLine(0);
            v2_1.setHint("com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias");
            v2_1.setText(androidx.preference.PreferenceManager.getDefaultSharedPreferences(this.getActivity()).getString("appUriPolicy", "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131690120)).setView(v3_1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$18(this, v2_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showCreateAndManageUserPrompt()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v6 = this.getActivity().getLayoutInflater().inflate(2131427370, 0);
            android.widget.EditText v2_1 = ((android.widget.EditText) v6.findViewById(2131296722));
            v2_1.setHint(2131689803);
            android.widget.CheckBox v3_1 = ((android.widget.CheckBox) v6.findViewById(2131296625));
            android.widget.CheckBox v4_1 = ((android.widget.CheckBox) v6.findViewById(2131296494));
            android.widget.CheckBox v5_1 = ((android.widget.CheckBox) v6.findViewById(2131296480));
            if (com.afwsamples.testdpc.common.Util.SDK_INT < 28) {
                v4_1.setEnabled(0);
                v5_1.setEnabled(0);
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689640).setView(v6).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$14(this, v2_1, v3_1, v4_1, v5_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showDisableAccountTypeList()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            String[] v0 = this.mDevicePolicyManager.getAccountTypesWithManagementDisabled();
            java.util.Arrays.sort(v0, String.CASE_INSENSITIVE_ORDER);
            if ((v0 != null) && (v0.length != 0)) {
                new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689900).setAdapter(new android.widget.ArrayAdapter(this.getActivity(), 17367043, 16908308, v0), 0).setPositiveButton(17039370, 0).show();
            } else {
                int v2_6 = new Object[0];
                this.showToast(2131689980, v2_6);
            }
        }
        return;
    }

    private void showEapTlsWifiConfigCreationDialog()
    {
        com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment.newInstance(0).show(this.getFragmentManager(), com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment.getName());
        return;
    }

    private void showEnableSystemAppByPackageNamePrompt()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.widget.LinearLayout v1_1 = ((android.widget.LinearLayout) this.getActivity().getLayoutInflater().inflate(2131427446, 0));
            android.widget.EditText v0_1 = ((android.widget.EditText) v1_1.findViewById(2131296472));
            v0_1.setHint(this.getString(2131690022));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689792)).setView(v1_1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$43(this, v0_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showEnableSystemAppsPrompt()
    {
        java.util.List v1 = this.mDevicePolicyManagerGateway.getDisabledSystemApps();
        if (!v1.isEmpty()) {
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689792)).setAdapter(new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131296534, v1, 1), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$45(this, v1)).show();
        } else {
            com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$45 v3_6 = new Object[0];
            this.showToast(2131689981, v3_6);
        }
        return;
    }

    private void showFragment(android.app.Fragment p4)
    {
        this.getFragmentManager().beginTransaction().addToBackStack(com.afwsamples.testdpc.policy.PolicyManagementFragment.getName()).replace(2131296376, p4).commit();
        return;
    }

    private void showFragment(android.app.Fragment p4, String p5)
    {
        this.getFragmentManager().beginTransaction().addToBackStack(com.afwsamples.testdpc.policy.PolicyManagementFragment.getName()).replace(2131296376, p4, p5).commit();
        return;
    }

    private void showHideAppsOnParentPrompt(boolean p12)
    {
        int v6;
        int v4;
        int v7;
        int v5;
        if (!p12) {
            v7 = 2131689839;
            v4 = 2131689840;
            v5 = 2131689838;
            v6 = 2131689841;
        } else {
            v7 = 2131690331;
            v4 = 2131690332;
            v5 = 2131690330;
            v6 = 2131690333;
        }
        android.view.View v8 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
        android.widget.EditText v2_1 = ((android.widget.EditText) v8.findViewById(2131296472));
        v2_1.setHint(this.getString(2131689851));
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(v7)).setView(v8).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$47(this, v2_1, p12, v4, v5, v6)).setNegativeButton(17039360, com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$48.$instance).show();
        return;
    }

    private void showHideAppsPrompt(boolean p12)
    {
        java.util.ArrayList v2_1 = new java.util.ArrayList();
        if (!p12) {
            android.app.AlertDialog$Builder v0_8 = this.getAllLauncherIntentResolversSorted().iterator();
            while (v0_8.hasNext()) {
                android.content.pm.ResolveInfo v9_1 = ((android.content.pm.ResolveInfo) v0_8.next());
                if ((!v2_1.contains(v9_1.activityInfo.packageName)) && (!this.mDevicePolicyManager.isApplicationHidden(this.mAdminComponentName, v9_1.activityInfo.packageName))) {
                    v2_1.add(v9_1.activityInfo.packageName);
                }
            }
        } else {
            android.app.AlertDialog$Builder v0_1 = this.getAllInstalledApplicationsSorted().iterator();
            while (v0_1.hasNext()) {
                android.content.pm.ApplicationInfo v7_1 = ((android.content.pm.ApplicationInfo) v0_1.next());
                if (this.mDevicePolicyManager.isApplicationHidden(this.mAdminComponentName, v7_1.packageName)) {
                    v2_1.add(v7_1.packageName);
                }
            }
        }
        if (!v2_1.isEmpty()) {
            int v5;
            int v8;
            int v4;
            com.afwsamples.testdpc.common.AppInfoArrayAdapter v6_1 = new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131296534, v2_1, 1);
            if (!p12) {
                v8 = 2131689842;
                v4 = 2131689840;
                v5 = 2131689838;
            } else {
                v8 = 2131690334;
                v4 = 2131690332;
                v5 = 2131690330;
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(v8)).setAdapter(v6_1, new com.afwsamples.testdpc.policy.PolicyManagementFragment$27(this, v2_1, p12, v4, v5)).show();
        } else {
            android.app.AlertDialog$Builder v0_11;
            if (!p12) {
                v0_11 = 2131689837;
            } else {
                v0_11 = 2131690329;
            }
            com.afwsamples.testdpc.policy.PolicyManagementFragment v1_13 = new Object[0];
            this.showToast(v0_11, v1_13);
        }
        return;
    }

    private void showInstallExistingPackagePrompt()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.widget.LinearLayout v1_1 = ((android.widget.LinearLayout) this.getActivity().getLayoutInflater().inflate(2131427446, 0));
            android.widget.EditText v0_1 = ((android.widget.EditText) v1_1.findViewById(2131296472));
            v0_1.setHint(this.getString(2131690022));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689861)).setView(v1_1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$46(this, v0_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showLockNowPrompt()
    {
        android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427391, 0);
        android.widget.CheckBox v3_1 = ((android.widget.CheckBox) v0.findViewById(2131296492));
        android.widget.CheckBox v1_1 = ((android.widget.CheckBox) v0.findViewById(2131296431));
        v3_1.setOnCheckedChangeListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$24(v1_1));
        v1_1.setOnCheckedChangeListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$25(v3_1));
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689904).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$26(this, v1_1, v3_1)).setNegativeButton(17039360, 0).show();
        return;
    }

    private void showManageLockTaskListPrompt(int p10, com.afwsamples.testdpc.policy.PolicyManagementFragment$ManageLockTaskListCallback p11)
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            java.util.List v5 = this.mPackageManager.queryIntentActivities(com.afwsamples.testdpc.common.Util.getLauncherIntent(this.getActivity()), 0);
            android.content.Intent v2_1 = new android.content.Intent("android.intent.action.MAIN");
            v2_1.addCategory("android.intent.category.HOME");
            v5.add(this.mPackageManager.resolveActivity(v2_1, 0));
            if (!v5.isEmpty()) {
                java.util.Collections.sort(v5, new android.content.pm.ResolveInfo$DisplayNameComparator(this.mPackageManager));
                com.afwsamples.testdpc.policy.locktask.LockTaskAppInfoArrayAdapter v0_1 = new com.afwsamples.testdpc.policy.locktask.LockTaskAppInfoArrayAdapter(this.getActivity(), 2131296534, v5);
                android.widget.ListView v4_1 = new android.widget.ListView(this.getActivity());
                v4_1.setAdapter(v0_1);
                v4_1.setOnItemClickListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$4(this, v0_1));
                new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(p10)).setView(v4_1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$6(this, v0_1, p11)).setNegativeButton(17039360, new com.afwsamples.testdpc.policy.PolicyManagementFragment$5(this)).show();
            } else {
                int v7_7 = new Object[0];
                this.showToast(2131689984, v7_7);
            }
        }
        return;
    }

    private void showPendingSystemUpdate()
    {
        android.app.admin.SystemUpdateInfo v3 = this.mDevicePolicyManager.getPendingSystemUpdate(this.mAdminComponentName);
        if (v3 != null) {
            String v2;
            String v0 = java.text.DateFormat.getDateTimeInstance().format(new java.util.Date(v3.getReceivedTime()));
            int v1 = v3.getSecurityPatchState();
            if (v1 != 1) {
                if (v1 != 2) {
                    v2 = this.getString(2131690350);
                } else {
                    v2 = this.getString(2131690349);
                }
            } else {
                v2 = this.getString(2131690348);
            }
            int v6_7 = new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690351);
            int v8_1 = new Object[2];
            v8_1[0] = v0;
            v8_1[1] = v2;
            v6_7.setMessage(this.getString(2131690347, v8_1)).setPositiveButton(17039370, 0).show();
        } else {
            this.showToast(this.getString(2131690346));
        }
        return;
    }

    private void showPromptForCertificatePassword(android.content.Intent p6, int p7)
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = this.getActivity().getLayoutInflater().inflate(2131427366, 0);
            android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296525));
            if (p7 > 1) {
                v1.findViewById(2131296470).setVisibility(0);
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689614)).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$20(this, v0_1, p6, p7)).setNegativeButton(17039360, new com.afwsamples.testdpc.policy.PolicyManagementFragment$19(this)).show();
        }
        return;
    }

    private void showPromptForGeneratedKeyAlias(String p18)
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v14 = this.getActivity().getLayoutInflater().inflate(2131427388, 0);
            android.widget.EditText v3_1 = ((android.widget.EditText) v14.findViewById(2131296306));
            if (!android.text.TextUtils.isEmpty(p18)) {
                v3_1.setText(p18);
                v3_1.selectAll();
            }
            android.app.AlertDialog$Builder v1_7;
            android.widget.CheckBox v4_1 = ((android.widget.CheckBox) v14.findViewById(2131296307));
            if (com.afwsamples.testdpc.common.Util.SDK_INT >= 28) {
                v1_7 = 0;
            } else {
                v1_7 = 1;
            }
            android.app.AlertDialog$Builder v1_19;
            v4_1.setChecked(v1_7);
            android.widget.CheckBox v13_1 = ((android.widget.CheckBox) v14.findViewById(2131296446));
            android.widget.CheckBox v5_1 = ((android.widget.CheckBox) v14.findViewById(2131296469));
            android.widget.CheckBox v7_1 = ((android.widget.CheckBox) v14.findViewById(2131296465));
            android.widget.CheckBox v8_1 = ((android.widget.CheckBox) v14.findViewById(2131296468));
            android.widget.CheckBox v9_1 = ((android.widget.CheckBox) v14.findViewById(2131296466));
            android.widget.CheckBox v10_1 = ((android.widget.CheckBox) v14.findViewById(2131296467));
            android.widget.CheckBox v12_1 = ((android.widget.CheckBox) v14.findViewById(2131296721));
            android.widget.CheckBox v11_1 = ((android.widget.CheckBox) v14.findViewById(2131296720));
            if (com.afwsamples.testdpc.common.Util.SDK_INT < 30) {
                v1_19 = 0;
            } else {
                v1_19 = 1;
            }
            v11_1.setEnabled(v1_19);
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689610)).setView(v14).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$23(this, v3_1, v4_1, v5_1, ((android.widget.EditText) v14.findViewById(2131296391)), v7_1, v8_1, v9_1, v10_1, v11_1, v12_1, v13_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showPromptForKeyCertificateAlias(java.security.PrivateKey p10, java.security.cert.Certificate p11, String p12)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment$21 v1_0 = 1;
        if ((this.getActivity() != null) && ((!this.getActivity().isFinishing()) && ((p10 != null) && (p11 != null)))) {
            android.view.View v6 = this.getActivity().getLayoutInflater().inflate(2131427365, 0);
            android.widget.EditText v2_1 = ((android.widget.EditText) v6.findViewById(2131296306));
            if (!android.text.TextUtils.isEmpty(p12)) {
                v2_1.setText(p12);
                v2_1.selectAll();
            }
            android.app.AlertDialog$Builder v0_6;
            android.widget.CheckBox v3_1 = ((android.widget.CheckBox) v6.findViewById(2131296307));
            if (com.afwsamples.testdpc.common.Util.SDK_INT < 28) {
                v0_6 = 0;
            } else {
                v0_6 = 1;
            }
            v3_1.setEnabled(v0_6);
            if (com.afwsamples.testdpc.common.Util.SDK_INT >= 28) {
                v1_0 = 0;
            }
            v3_1.setChecked(v1_0);
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131689610)).setView(v6).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$22(this, v2_1, v3_1, p10, p11)).setNegativeButton(17039360, new com.afwsamples.testdpc.policy.PolicyManagementFragment$21(this)).show();
        }
        return;
    }

    private void showRemoveDeviceOwnerPrompt()
    {
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690110).setMessage(2131690109).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$35(this)).setNegativeButton(17039360, 0).show();
        return;
    }

    private void showRemoveUserPrompt()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 28) {
            this.showRemoveUserPromptLegacy();
        } else {
            this.showChooseUserPrompt(2131690117, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$38(this));
        }
        return;
    }

    private void showRemoveUserPromptLegacy()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427446, 0);
            android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296472));
            v0_1.setHint(2131689802);
            v0_1.setRawInputType(4098);
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690117).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$15(this, v0_1)).show();
        }
        return;
    }

    private void showResetPasswordPrompt()
    {
        android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427433, 0);
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690144).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$9(this, ((android.widget.EditText) v0.findViewById(2131296524)), ((android.widget.CheckBox) v0.findViewById(2131296569)), ((android.widget.CheckBox) v0.findViewById(2131296414)))).setNegativeButton(17039360, 0).show();
        return;
    }

    private void showSetDisableAccountManagementPrompt()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427446, 0);
            android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296472));
            v0_1.setHint(2131689516);
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690199).setView(v1).setPositiveButton(2131689702, new com.afwsamples.testdpc.policy.PolicyManagementFragment$13(this, v0_1)).setNeutralButton(2131689781, new com.afwsamples.testdpc.policy.PolicyManagementFragment$12(this, v0_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetGlobalHttpProxyDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427432, 0);
            android.widget.EditText v2_1 = ((android.widget.EditText) v0.findViewById(2131296560));
            android.widget.EditText v3_1 = ((android.widget.EditText) v0.findViewById(2131296561));
            String v1 = System.getProperty("http.proxyHost");
            if (!android.text.TextUtils.isEmpty(v1)) {
                v2_1.setText(v1);
                v3_1.setText(System.getProperty("http.proxyPort"));
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690202).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$44(this, v2_1, v3_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetMeteredDataPrompt()
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            java.util.List v2 = this.mPackageManager.getInstalledApplications(0);
            java.util.ArrayList v6_1 = new java.util.ArrayList();
            java.util.Collections.sort(v2, new android.content.pm.ApplicationInfo$DisplayNameComparator(this.mPackageManager));
            android.app.AlertDialog$Builder v7_2 = v2.iterator();
            while (v7_2.hasNext()) {
                android.content.pm.ApplicationInfo v1_1 = ((android.content.pm.ApplicationInfo) v7_2.next());
                android.content.pm.ResolveInfo v5_1 = new android.content.pm.ResolveInfo();
                v5_1.resolvePackageName = v1_1.packageName;
                v6_1.add(v5_1);
            }
            com.afwsamples.testdpc.policy.MeteredDataRestrictionInfoAdapter v4_1 = new com.afwsamples.testdpc.policy.MeteredDataRestrictionInfoAdapter(this.getActivity(), v6_1, this.getMeteredDataRestrictedPkgs());
            android.widget.ListView v3_1 = new android.widget.ListView(v0);
            v3_1.setAdapter(v4_1);
            v3_1.setOnItemClickListener(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$49(v4_1));
            new android.app.AlertDialog$Builder(v0).setTitle(2131689943).setView(v3_1).setPositiveButton(2131690352, v4_1).setNegativeButton(2131689631, 0).show();
        }
        return;
    }

    private void showSetOrganizationIdDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v1_1 = ((android.widget.EditText) v0.findViewById(2131296472));
            v1_1.setText("");
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690221).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$64(this, v1_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetPermissionPolicyDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v2 = this.getActivity().getLayoutInflater().inflate(2131427441, 0);
            android.widget.RadioGroup v0_1 = ((android.widget.RadioGroup) v2.findViewById(2131296614));
            switch (this.mDevicePolicyManager.getPermissionPolicy(this.mAdminComponentName)) {
                case 0:
                    ((android.widget.RadioButton) v0_1.findViewById(2131296559)).toggle();
                    break;
                case 1:
                    ((android.widget.RadioButton) v0_1.findViewById(2131296271)).toggle();
                    break;
                case 2:
                    ((android.widget.RadioButton) v0_1.findViewById(2131296402)).toggle();
                    break;
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131690198)).setView(v2).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$11(this, v0_1)).show();
        }
        return;
    }

    private void showSetProfileNameDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v1_1 = ((android.widget.EditText) v0.findViewById(2131296472));
            v1_1.setText("");
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690224).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$63(this, v1_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetScreenBrightnessDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296472));
            String v2 = android.provider.Settings$System.getString(this.getActivity().getContentResolver(), "screen_brightness");
            v0_1.setHint(2131690228);
            if (!android.text.TextUtils.isEmpty(v2)) {
                v0_1.setText(v2);
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690227).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$59(this, v0_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetScreenOffTimeoutDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v3_1 = ((android.widget.EditText) v0.findViewById(2131296472));
            String v1 = android.provider.Settings$System.getString(this.getActivity().getContentResolver(), "screen_off_timeout");
            int v2 = Integer.parseInt(v1);
            v3_1.setHint(2131690230);
            if (!android.text.TextUtils.isEmpty(v1)) {
                v3_1.setText(Integer.toString((v2 / 1000)));
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690229).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$60(this, v3_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetTimeDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v2_1 = ((android.widget.EditText) v1.findViewById(2131296472));
            v2_1.setText(Long.toString(System.currentTimeMillis()));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690233).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$61(this, v2_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetTimeZoneDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v1 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v2_1 = ((android.widget.EditText) v1.findViewById(2131296472));
            v2_1.setText(java.util.Calendar.getInstance().getTimeZone().getID());
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690235).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$62(this, v2_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    private void showSetupManagement()
    {
        this.getActivity().startActivity(new android.content.Intent(this.getActivity(), com.afwsamples.testdpc.SetupManagementActivity));
        return;
    }

    private void showStartUserInBackgroundPrompt()
    {
        this.showChooseUserPrompt(2131690266, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$40(this));
        return;
    }

    private void showStopUserPrompt()
    {
        this.showChooseUserPrompt(2131690272, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$41(this));
        return;
    }

    private void showSuspendAppsPrompt(boolean p12)
    {
        java.util.ArrayList v2_1 = new java.util.ArrayList();
        if (!p12) {
            android.app.AlertDialog$Builder v0_8 = this.getAllLauncherIntentResolversSorted().iterator();
            while (v0_8.hasNext()) {
                android.content.pm.ResolveInfo v9_1 = ((android.content.pm.ResolveInfo) v0_8.next());
                if ((!v2_1.contains(v9_1.activityInfo.packageName)) && (!this.isPackageSuspended(v9_1.activityInfo.packageName))) {
                    v2_1.add(v9_1.activityInfo.packageName);
                }
            }
        } else {
            android.app.AlertDialog$Builder v0_1 = this.getAllInstalledApplicationsSorted().iterator();
            while (v0_1.hasNext()) {
                android.content.pm.ApplicationInfo v7_1 = ((android.content.pm.ApplicationInfo) v0_1.next());
                if (this.isPackageSuspended(v7_1.packageName)) {
                    v2_1.add(v7_1.packageName);
                }
            }
        }
        if (!v2_1.isEmpty()) {
            int v4;
            int v5;
            int v8;
            com.afwsamples.testdpc.common.AppInfoArrayAdapter v6_1 = new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131296534, v2_1, 1);
            if (!p12) {
                v8 = 2131690282;
                v4 = 2131690281;
                v5 = 2131690280;
            } else {
                v8 = 2131690344;
                v4 = 2131690343;
                v5 = 2131690342;
            }
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(v8)).setAdapter(v6_1, new com.afwsamples.testdpc.policy.PolicyManagementFragment$28(this, v2_1, p12, v4, v5)).show();
        } else {
            android.app.AlertDialog$Builder v0_11;
            if (!p12) {
                v0_11 = 2131690279;
            } else {
                v0_11 = 2131690341;
            }
            com.afwsamples.testdpc.policy.PolicyManagementFragment v1_14 = new Object[0];
            this.showToast(v0_11, v1_14);
        }
        return;
    }

    private void showSwitchUserPrompt()
    {
        this.showChooseUserPrompt(2131690289, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$39(this));
        return;
    }

    private varargs void showToast(int p2, Object[] p3)
    {
        this.showToast(this.getString(p2, p3));
        return;
    }

    private void showToast(String p2)
    {
        this.showToast(p2, 0);
        return;
    }

    private void showToast(String p5, int p6)
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            android.util.Log.d("PolicyManagement", new StringBuilder().append("Showing toast: ").append(p5).toString());
            android.widget.Toast.makeText(v0, p5, p6).show();
        } else {
            android.util.Log.w("PolicyManagement", new StringBuilder().append("Not toasting \'").append(p5).append("\' as activity is finishing or finished").toString());
        }
        return;
    }

    private void showUninstallPackagePrompt()
    {
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        android.app.AlertDialog$Builder v3_6 = this.getAllLauncherIntentResolversSorted().iterator();
        while (v3_6.hasNext()) {
            android.content.pm.ResolveInfo v2_1 = ((android.content.pm.ResolveInfo) v3_6.next());
            if (!v1_1.contains(v2_1.activityInfo.packageName)) {
                v1_1.add(v2_1.activityInfo.packageName);
            }
        }
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.getString(2131690335)).setAdapter(new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131296534, v1_1, 1), new com.afwsamples.testdpc.policy.PolicyManagementFragment$26(this, v1_1)).show();
        return;
    }

    private void showWifiConfigCreationDialog()
    {
        com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog.newInstance().show(this.getFragmentManager(), "wifi_config_creation");
        return;
    }

    private void showWifiMacAddress()
    {
        String v1;
        String v0 = this.mDevicePolicyManager.getWifiMacAddress(this.mAdminComponentName);
        if (v0 == null) {
            v1 = this.getString(2131690257);
        } else {
            v1 = v0;
        }
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690258).setMessage(v1).setPositiveButton(17039370, 0).show();
        return;
    }

    private void showWipeDataPrompt()
    {
        android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427517, 0);
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690400).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.PolicyManagementFragment$10(this, ((android.widget.CheckBox) v0.findViewById(2131296438)), ((android.widget.CheckBox) v0.findViewById(2131296571)))).setNegativeButton(17039360, 0).show();
        return;
    }

    private void startKioskMode(String[] p6)
    {
        android.content.ComponentName v0_1 = new android.content.ComponentName(this.getActivity(), com.afwsamples.testdpc.policy.locktask.KioskModeActivity);
        this.mPackageManager.setComponentEnabledSetting(v0_1, 1, 1);
        this.mDevicePolicyManager.addPersistentPreferredActivity(this.mAdminComponentName, com.afwsamples.testdpc.common.Util.getHomeIntentFilter(), v0_1);
        android.content.Intent v1 = com.afwsamples.testdpc.common.Util.getHomeIntent();
        v1.putExtra("com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST", p6);
        this.startActivity(v1);
        this.getActivity().finish();
        return;
    }

    private void testKeyCanBeUsedForSigning()
    {
        android.security.KeyChain.choosePrivateKeyAlias(this.getActivity(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$3(this), 0, 0, 0, 0);
        return;
    }

    private void updateStayOnWhilePluggedInPreference()
    {
        if (this.mStayOnWhilePluggedInSwitchPreference.isEnabled()) {
            int v0;
            if ((android.provider.Settings$Global.getInt(this.getActivity().getContentResolver(), "stay_on_while_plugged_in", 0) & 7) == 0) {
                v0 = 0;
            } else {
                v0 = 1;
            }
            androidx.preference.SwitchPreference v2_1;
            if (v0 == 0) {
                v2_1 = com.afwsamples.testdpc.policy.PolicyManagementFragment.DONT_STAY_ON;
            } else {
                v2_1 = com.afwsamples.testdpc.policy.PolicyManagementFragment.BATTERY_PLUGGED_ANY;
            }
            this.mDevicePolicyManager.setGlobalSetting(this.mAdminComponentName, "stay_on_while_plugged_in", v2_1);
            this.mStayOnWhilePluggedInSwitchPreference.setChecked(v0);
        }
        return;
    }

    private int validateAffiliatedUserAfterP()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT < 28) || (this.mDevicePolicyManager.isAffiliatedUser())) {
            int v0_3 = 0;
        } else {
            v0_3 = 2131690128;
        }
        return v0_3;
    }

    private int validateDeviceOwnerBeforeO()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 26) || (this.mDevicePolicyManager.isDeviceOwnerApp(this.mPackageName))) {
            int v0_3 = 0;
        } else {
            v0_3 = 2131690135;
        }
        return v0_3;
    }

    private int validateDeviceOwnerBeforeP()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 28) || (this.mDevicePolicyManager.isDeviceOwnerApp(this.mPackageName))) {
            int v0_3 = 0;
        } else {
            v0_3 = 2131690135;
        }
        return v0_3;
    }

    private int validateDeviceOwnerBeforeQ()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 29) || (this.mDevicePolicyManager.isDeviceOwnerApp(this.mPackageName))) {
            int v0_3 = 0;
        } else {
            v0_3 = 2131690135;
        }
        return v0_3;
    }

    private int validateDeviceOwnerOrDelegationNetworkLoggingBeforeS()
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 31) || ((!this.isDeviceOwner()) && (!this.hasNetworkLoggingDelegation()))) {
            int v0_1 = 0;
        } else {
            v0_1 = 2131690136;
        }
        return v0_1;
    }

    final bridge synthetic int bridge$lambda$0$PolicyManagementFragment()
    {
        return this.validateAffiliatedUserAfterP();
    }

    final bridge synthetic int bridge$lambda$1$PolicyManagementFragment()
    {
        return this.validateDeviceOwnerBeforeP();
    }

    final bridge synthetic int bridge$lambda$2$PolicyManagementFragment()
    {
        return this.validateDeviceOwnerBeforeQ();
    }

    final bridge synthetic int bridge$lambda$3$PolicyManagementFragment()
    {
        return this.validateDeviceOwnerOrDelegationNetworkLoggingBeforeS();
    }

    final bridge synthetic int bridge$lambda$4$PolicyManagementFragment()
    {
        return this.validateDeviceOwnerBeforeO();
    }

    public void dump(String p7, java.io.PrintWriter p8, String[] p9)
    {
        Object[] v1_5 = new Object[2];
        v1_5[0] = p7;
        v1_5[1] = this.mAdminComponentName;
        p8.printf("%smAdminComponentName: %s\n", v1_5);
        Object[] v1_0 = new Object[2];
        v1_0[0] = p7;
        v1_0[1] = this.mImageUri;
        p8.printf("%smImageUri: %s\n", v1_0);
        Object[] v1_1 = new Object[2];
        v1_1[0] = p7;
        v1_1[1] = this.mVideoUri;
        p8.printf("%smmVideoUri: %s\n", v1_1);
        Object[] v1_2 = new Object[2];
        v1_2[0] = p7;
        v1_2[1] = this.mVideoUri;
        p8.printf("%smmVideoUri: %s\n", v1_2);
        Object[] v1_3 = new Object[2];
        v1_3[0] = p7;
        v1_3[1] = Boolean.valueOf(this.isManagedProfileOwner());
        p8.printf("%sisManagedProfileOwner(): %s\n", v1_3);
        Object[] v1_4 = new Object[2];
        v1_4[0] = p7;
        v1_4[1] = Boolean.valueOf(com.afwsamples.testdpc.common.Util.isDeviceOwner(this.getActivity()));
        p8.printf("%sisDeviceOwner(): %s\n", v1_4);
        Object[] v1_6 = new Object[2];
        v1_6[0] = p7;
        v1_6[1] = Boolean.valueOf(this.mUserManager.isSystemUser());
        p8.printf("%sisSystemUser(): %s\n", v1_6);
        Object[] v1_7 = new Object[2];
        v1_7[0] = p7;
        v1_7[1] = Boolean.valueOf(com.afwsamples.testdpc.common.Util.isPrimaryUser(this.getActivity()));
        p8.printf("%sisPrimaryUser(): %s\n", v1_7);
        Object[] v1_8 = new Object[2];
        v1_8[0] = p7;
        v1_8[1] = Boolean.valueOf(com.afwsamples.testdpc.common.Util.isRunningOnTvDevice(this.getActivity()));
        p8.printf("%sisRunningOnTvDevice(): %s\n", v1_8);
        Object[] v1_9 = new Object[2];
        v1_9[0] = p7;
        v1_9[1] = Boolean.valueOf(com.afwsamples.testdpc.common.Util.isRunningOnAutomotiveDevice(this.getActivity()));
        p8.printf("%sisRunningOnAutomotiveDevice(): %s\n", v1_9);
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    final synthetic void lambda$chooseAccount$171$PolicyManagementFragment(java.util.List p2, android.content.DialogInterface p3, int p4)
    {
        this.removeAccount(((android.accounts.Account) p2.get(p4)));
        return;
    }

    final synthetic void lambda$clearApplicationUserData$158$PolicyManagementFragment(String p4, String p5, boolean p6)
    {
        int v0;
        if (!p6) {
            v0 = 2131689622;
        } else {
            v0 = 2131689623;
        }
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.showToast(v0, v1_1);
        return;
    }

    final synthetic void lambda$factoryResetOrgOwnedDevice$173$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("wipeData");
        return;
    }

    final synthetic void lambda$factoryResetOrgOwnedDevice$174$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("wipeData", p2);
        return;
    }

    final synthetic void lambda$lockNow$108$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("lockNow");
        return;
    }

    final synthetic void lambda$lockNow$109$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("lockNow", p2);
        return;
    }

    final synthetic void lambda$null$102$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("setLockTaskPackages()");
        return;
    }

    final synthetic void lambda$null$103$PolicyManagementFragment(Exception p4)
    {
        Object[] v2_1 = new Object[0];
        this.onErrorShowToast("setLockTaskPackages()", p4, 2131689915, v2_1);
        return;
    }

    final synthetic void lambda$null$112$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("lockNow");
        return;
    }

    final synthetic void lambda$null$113$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("lockNow", p2);
        return;
    }

    final synthetic void lambda$null$125$PolicyManagementFragment(Void p3)
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            Object[] v1_0 = new Object[0];
            this.showToast(2131689700, v1_0);
            this.getActivity().finish();
        }
        return;
    }

    final synthetic void lambda$null$126$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("clearDeviceOwnerApp", p2);
        return;
    }

    final synthetic void lambda$null$133$PolicyManagementFragment(Void p4)
    {
        Object[] v2_1 = new Object[0];
        this.onSuccessShowToast("switchUser", 2131690369, v2_1);
        return;
    }

    final synthetic void lambda$null$134$PolicyManagementFragment(Exception p4)
    {
        Object[] v2_1 = new Object[0];
        this.onErrorShowToast("switchUser", p4, 2131689829, v2_1);
        return;
    }

    final synthetic void lambda$null$136$PolicyManagementFragment(Integer p4)
    {
        Object[] v2_1 = new Object[0];
        this.onSuccessShowToast("startUserInBackground", 2131690366, v2_1);
        return;
    }

    final synthetic void lambda$null$137$PolicyManagementFragment(Exception p4)
    {
        Object[] v2_1 = new Object[0];
        this.onErrorShowToast("startUserInBackground", p4, 2131689827, v2_1);
        return;
    }

    final synthetic void lambda$null$139$PolicyManagementFragment(Integer p4)
    {
        Object[] v2_1 = new Object[0];
        this.onSuccessShowToast("stopUser", 2131690367, v2_1);
        return;
    }

    final synthetic void lambda$null$140$PolicyManagementFragment(Exception p4)
    {
        Object[] v2_1 = new Object[0];
        this.onErrorShowToast("stopUser", p4, 2131689828, v2_1);
        return;
    }

    final synthetic void lambda$null$143$PolicyManagementFragment(String p5, Void p6)
    {
        Object[] v2_1 = new Object[1];
        v2_1[0] = p5;
        this.onSuccessShowToast("enableSystemApp", 2131689790, v2_1);
        return;
    }

    final synthetic void lambda$null$144$PolicyManagementFragment(String p5, Exception p6)
    {
        Object[] v2_1 = new Object[1];
        v2_1[0] = p5;
        this.onErrorShowToast("enableSystemApp", p6, 2131690021, v2_1);
        return;
    }

    final synthetic void lambda$null$147$PolicyManagementFragment(String p5, Void p6)
    {
        Object[] v2_1 = new Object[1];
        v2_1[0] = p5;
        this.onSuccessShowToast("enableSystemApp", 2131689790, v2_1);
        return;
    }

    final synthetic int lambda$onCreatePreferences$100$PolicyManagementFragment()
    {
        if ((!this.mUserManager.hasUserRestriction("no_install_unknown_sources")) && (!this.mUserManager.hasUserRestriction("no_install_unknown_sources_globally"))) {
            int v0_1 = 0;
        } else {
            v0_1 = 2131690359;
        }
        return v0_1;
    }

    final synthetic int lambda$onCreatePreferences$101$PolicyManagementFragment()
    {
        int v0_3;
        if (com.afwsamples.testdpc.common.Util.getBindDeviceAdminTargetUsers(this.getActivity()).size() != 1) {
            v0_3 = 2131690129;
        } else {
            v0_3 = 0;
        }
        return v0_3;
    }

    final synthetic int lambda$onCreatePreferences$98$PolicyManagementFragment()
    {
        int v0_1;
        if (!this.isSecurityLoggingEnabled()) {
            v0_1 = 2131690142;
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    final synthetic int lambda$onCreatePreferences$99$PolicyManagementFragment()
    {
        int v0_1;
        if (!this.isNetworkLoggingEnabled()) {
            v0_1 = 2131690138;
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    final synthetic void lambda$onPreferenceChange$115$PolicyManagementFragment(Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isPreferentialNetworkServiceEnabled());
        this.onSuccessShowToastWithHardcodedMessage("setPreferentialNetworkServiceEnabled(%b)", v1_1);
        return;
    }

    final synthetic void lambda$onPreferenceChange$116$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("setPreferentialNetworkServiceEnabled", p2);
        return;
    }

    final synthetic void lambda$onPreferenceChange$117$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("setOrganizationName");
        return;
    }

    final synthetic void lambda$onPreferenceChange$118$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("setOrganizationName", p2);
        return;
    }

    final synthetic void lambda$onPreferenceClick$104$PolicyManagementFragment(String[] p4)
    {
        this.mDevicePolicyManagerGateway.setLockTaskPackages(p4, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$83(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$84(this));
        return;
    }

    final synthetic void lambda$promptInstallUpdate$105$PolicyManagementFragment(android.content.DialogInterface p1, int p2)
    {
        this.installUpdate();
        return;
    }

    final synthetic void lambda$reboot$163$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("reboot");
        return;
    }

    final synthetic void lambda$reboot$164$PolicyManagementFragment(Exception p2)
    {
        this.onErrorLog("reboot", p2);
        return;
    }

    final synthetic void lambda$removeAccount$172$PolicyManagementFragment(android.accounts.Account p10, android.accounts.AccountManagerFuture p11)
    {
        try {
            if (!((android.os.Bundle) p11.getResult()).getBoolean("booleanResult")) {
                String v4_1 = new Object[1];
                v4_1[0] = p10;
                this.showToast(2131689820, v4_1);
                return;
            } else {
                String v4_3 = new Object[1];
                v4_3[0] = p10;
                this.showToast(2131690276, v4_3);
                return;
            }
        } catch (android.accounts.AuthenticatorException v0) {
        } catch (android.accounts.AuthenticatorException v0) {
        } catch (android.accounts.AuthenticatorException v0) {
        }
        android.util.Log.e("PolicyManagement", new StringBuilder().append("Failed to remove account: ").append(p10).toString(), v0);
        Object[] v3_3 = new Object[1];
        v3_3[0] = p10;
        this.showToast(2131689820, v3_3);
        return;
    }

    final synthetic void lambda$removeUser$130$PolicyManagementFragment(Void p4)
    {
        Object[] v2_1 = new Object[0];
        this.onSuccessShowToast("removeUser()", 2131690358, v2_1);
        return;
    }

    final synthetic void lambda$removeUser$131$PolicyManagementFragment(Exception p4)
    {
        Object[] v2_1 = new Object[0];
        this.onErrorShowToast("removeUser()", p4, 2131689824, v2_1);
        return;
    }

    final synthetic void lambda$requestBugReport$121$PolicyManagementFragment(Void p2)
    {
        this.onSuccessLog("requestBugreport");
        return;
    }

    final synthetic void lambda$requestBugReport$122$PolicyManagementFragment(Exception p4)
    {
        this.onErrorOrFailureShowToast("requestBugreport", p4, 2131689598, 2131689594);
        return;
    }

    final synthetic void lambda$setKeyGuardDisabled$119$PolicyManagementFragment(boolean p5, Void p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onSuccessLog("setKeyGuardDisabled(%b)", v1_1);
        return;
    }

    final synthetic void lambda$setKeyGuardDisabled$120$PolicyManagementFragment(boolean p3, Exception p4)
    {
        int v0;
        if (!p3) {
            v0 = 2131690327;
        } else {
            v0 = 2131690326;
        }
        Object[] v1_1 = new Object[0];
        this.showToast(v0, v1_1);
        return;
    }

    final synthetic void lambda$setNotificationAllowlistEditBox$161$PolicyManagementFragment(android.widget.EditText p5, android.content.DialogInterface p6, int p7)
    {
        String v1 = p5.getText().toString();
        if (!v1.trim().equals("null")) {
            this.setPermittedNotificationListeners(java.util.Arrays.asList(v1.trim().split("\\s*,\\s*")));
        } else {
            this.setPermittedNotificationListeners(0);
        }
        p6.dismiss();
        return;
    }

    final synthetic void lambda$setPermittedInputMethodsOnParent$159$PolicyManagementFragment(com.afwsamples.testdpc.DevicePolicyManagerGateway p4, android.view.View p5)
    {
        int v1_1;
        if (!p4.setPermittedInputMethods(0)) {
            v1_1 = 2131689532;
        } else {
            v1_1 = 2131689544;
        }
        Object[] v2_1 = new Object[0];
        this.showToast(v1_1, v2_1);
        return;
    }

    final synthetic void lambda$setPermittedInputMethodsOnParent$160$PolicyManagementFragment(com.afwsamples.testdpc.DevicePolicyManagerGateway p4, android.view.View p5)
    {
        int v1_2;
        if (!p4.setPermittedInputMethods(new java.util.ArrayList())) {
            v1_2 = 2131689532;
        } else {
            v1_2 = 2131690290;
        }
        Object[] v2_1 = new Object[0];
        this.showToast(v1_2, v2_1);
        return;
    }

    final synthetic void lambda$showClearAppDataPrompt$157$PolicyManagementFragment(java.util.List p2, android.content.DialogInterface p3, int p4)
    {
        this.clearApplicationUserData(((String) p2.get(p4)));
        return;
    }

    final synthetic void lambda$showEnableSystemAppByPackageNamePrompt$145$PolicyManagementFragment(android.widget.EditText p5, android.content.DialogInterface p6, int p7)
    {
        String v0 = p5.getText().toString();
        this.mDevicePolicyManagerGateway.enableSystemApp(v0, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$71(this, v0), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$72(this, v0));
        return;
    }

    final synthetic void lambda$showEnableSystemAppsPrompt$149$PolicyManagementFragment(java.util.List p5, android.content.DialogInterface p6, int p7)
    {
        String v0_1 = ((String) p5.get(p7));
        this.mDevicePolicyManagerGateway.enableSystemApp(v0_1, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$69(this, v0_1), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$70(v0_1));
        return;
    }

    final synthetic void lambda$showHideAppsOnParentPrompt$151$PolicyManagementFragment(android.widget.EditText p8, boolean p9, int p10, int p11, int p12, android.content.DialogInterface p13, int p14)
    {
        String v1 = p8.getText().toString();
        try {
            String v2_0;
            android.app.admin.DevicePolicyManager vtmp3 = this.mDevicePolicyManager.getParentProfileInstance(this.mAdminComponentName);
        } catch (IllegalArgumentException v0) {
            String v2_8 = new Object[1];
            v2_8[0] = v1;
            this.showToast(this.getString(p12, v2_8), 1);
            p13.dismiss();
            return;
        }
        if (p9) {
            v2_0 = 0;
        } else {
            v2_0 = 1;
        }
        if (!vtmp3.setApplicationHidden(this.mAdminComponentName, v1, v2_0)) {
            String v2_3 = new Object[1];
            v2_3[0] = v1;
            this.showToast(this.getString(p11, v2_3), 1);
            p13.dismiss();
            return;
        } else {
            String v2_6 = new Object[1];
            v2_6[0] = v1;
            this.showToast(p10, v2_6);
            p13.dismiss();
            return;
        }
    }

    final synthetic void lambda$showInstallExistingPackagePrompt$150$PolicyManagementFragment(android.widget.EditText p6, android.content.DialogInterface p7, int p8)
    {
        int v2_1;
        String v0 = p6.getText().toString();
        if (!this.mDevicePolicyManager.installExistingPackage(this.mAdminComponentName, v0)) {
            v2_1 = 2131690021;
        } else {
            v2_1 = 2131689860;
        }
        Object[] v3_1 = new Object[1];
        v3_1[0] = v0;
        this.showToast(v2_1, v3_1);
        p7.dismiss();
        return;
    }

    final synthetic void lambda$showLockNowPrompt$114$PolicyManagementFragment(android.widget.CheckBox p5, android.widget.CheckBox p6, android.content.DialogInterface p7, int p8)
    {
        int v0;
        if (!p5.isChecked()) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        com.afwsamples.testdpc.DevicePolicyManagerGateway v1;
        if (!p6.isChecked()) {
            v1 = this.mDevicePolicyManagerGateway;
        } else {
            v1 = com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(this.getActivity());
        }
        v1.lockNow(v0, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$81(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$82(this));
        return;
    }

    final synthetic void lambda$showRemoveDeviceOwnerPrompt$127$PolicyManagementFragment(android.content.DialogInterface p4, int p5)
    {
        this.mDevicePolicyManagerGateway.clearDeviceOwnerApp(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$79(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$80(this));
        return;
    }

    final synthetic void lambda$showRemoveUserPrompt$132$PolicyManagementFragment(android.os.UserHandle p1)
    {
        this.removeUser(p1);
        return;
    }

    final synthetic void lambda$showSetGlobalHttpProxyDialog$146$PolicyManagementFragment(android.widget.EditText p7, android.widget.EditText p8, android.content.DialogInterface p9, int p10)
    {
        String v0 = p7.getText().toString();
        if (!v0.isEmpty()) {
            String v2 = p8.getText().toString();
            if (!v2.isEmpty()) {
                int v1 = Integer.parseInt(v2);
                if (v1 <= 65535) {
                    this.mDevicePolicyManager.setRecommendedGlobalProxy(this.mAdminComponentName, android.net.ProxyInfo.buildDirectProxy(v0, v1));
                } else {
                    android.content.ComponentName v4_2 = new Object[0];
                    this.showToast(2131690078, v4_2);
                }
            } else {
                android.content.ComponentName v4_3 = new Object[0];
                this.showToast(2131689983, v4_3);
            }
        } else {
            android.content.ComponentName v4_4 = new Object[0];
            this.showToast(2131689982, v4_4);
        }
        return;
    }

    final synthetic void lambda$showSetOrganizationIdDialog$170$PolicyManagementFragment(android.widget.EditText p4, android.content.DialogInterface p5, int p6)
    {
        String v0 = p4.getText().toString();
        if (!v0.isEmpty()) {
            this.setOrganizationId(v0);
        } else {
            Object[] v2_0 = new Object[0];
            this.showToast(2131690014, v2_0);
        }
        return;
    }

    final synthetic void lambda$showSetProfileNameDialog$169$PolicyManagementFragment(android.widget.EditText p4, android.content.DialogInterface p5, int p6)
    {
        String v0 = p4.getText().toString();
        if (!v0.isEmpty()) {
            this.mDevicePolicyManager.setProfileName(this.mAdminComponentName, v0);
        } else {
            android.content.ComponentName v2_1 = new Object[0];
            this.showToast(2131689985, v2_1);
        }
        return;
    }

    final synthetic void lambda$showSetScreenBrightnessDialog$165$PolicyManagementFragment(android.widget.EditText p6, android.content.DialogInterface p7, int p8)
    {
        String v0 = p6.getText().toString();
        if (!v0.isEmpty()) {
            int v1 = Integer.parseInt(v0);
            if ((v1 <= 255) && (v1 >= 0)) {
                this.mDevicePolicyManager.setSystemSetting(this.mAdminComponentName, "screen_brightness", v0);
            } else {
                android.content.ComponentName v3_2 = new Object[0];
                this.showToast(2131689871, v3_2);
            }
        } else {
            android.content.ComponentName v3_3 = new Object[0];
            this.showToast(2131689986, v3_3);
        }
        return;
    }

    final synthetic void lambda$showSetScreenOffTimeoutDialog$166$PolicyManagementFragment(android.widget.EditText p7, android.content.DialogInterface p8, int p9)
    {
        String v0 = p7.getText().toString();
        if (!v0.isEmpty()) {
            int v1 = Integer.parseInt(v0);
            if (v1 >= 0) {
                this.mDevicePolicyManager.setSystemSetting(this.mAdminComponentName, "screen_off_timeout", Integer.toString((v1 * 1000)));
            } else {
                android.content.ComponentName v3_2 = new Object[0];
                this.showToast(2131689872, v3_2);
            }
        } else {
            android.content.ComponentName v3_3 = new Object[0];
            this.showToast(2131689987, v3_3);
        }
        return;
    }

    final synthetic void lambda$showSetTimeDialog$167$PolicyManagementFragment(android.widget.EditText p7, android.content.DialogInterface p8, int p9)
    {
        String v1 = p7.getText().toString();
        if (!v1.isEmpty()) {
            try {
                Object[] v5_1 = this.mAdminComponentName;
                this.mDevicePolicyManager.setTime(v5_1, Long.parseLong(v1));
            } catch (NumberFormatException v0) {
                Object[] v5_2 = new Object[v5_1];
                this.showToast(2131689874, v5_2);
            }
        } else {
            Object[] v5_3 = new Object[0];
            this.showToast(2131689989, v5_3);
        }
        return;
    }

    final synthetic void lambda$showSetTimeZoneDialog$168$PolicyManagementFragment(android.widget.EditText p5, android.content.DialogInterface p6, int p7)
    {
        String v1 = p5.getText().toString();
        if (!v1.isEmpty()) {
            if (java.util.Arrays.asList(java.util.TimeZone.getAvailableIDs()).contains(v1)) {
                this.mDevicePolicyManager.setTimeZone(this.mAdminComponentName, v1);
            } else {
                android.content.ComponentName v3_2 = new Object[0];
                this.showToast(2131689876, v3_2);
            }
        } else {
            android.content.ComponentName v3_3 = new Object[0];
            this.showToast(2131689990, v3_3);
        }
        return;
    }

    final synthetic void lambda$showStartUserInBackgroundPrompt$138$PolicyManagementFragment(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.startUserInBackground(p4, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$75(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$76(this));
        return;
    }

    final synthetic void lambda$showStopUserPrompt$141$PolicyManagementFragment(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.startUserInBackground(p4, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$73(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$74(this));
        return;
    }

    final synthetic void lambda$showSwitchUserPrompt$135$PolicyManagementFragment(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.switchUser(p4, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$77(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$78(this));
        return;
    }

    public void onActivityResult(int p3, int p4, android.content.Intent p5)
    {
        super.onActivityResult(p3, p4, p5);
        if (p4 == -1) {
            switch (p3) {
                case 7689:
                    this.importKeyCertificateFromIntent(p5, "");
                    break;
                case 7690:
                    this.importCaCertificateFromIntent(p5);
                    break;
                case 7691:
                    this.showFragment(com.afwsamples.testdpc.common.MediaDisplayFragment.newInstance(1, this.mImageUri));
                    break;
                case 7692:
                    this.showFragment(com.afwsamples.testdpc.common.MediaDisplayFragment.newInstance(2, this.mVideoUri));
                    break;
                case 7693:
                    this.installApkPackageFromIntent(p5);
                    break;
            }
        }
        return;
    }

    public void onCreate(android.os.Bundle p8)
    {
        android.app.Activity v6 = this.getActivity();
        if ((!this.isDelegatedApp()) && (!this.isCredentialManagerApp())) {
            this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(v6);
        } else {
            this.mAdminComponentName = 0;
        }
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) v6.getSystemService(android.app.admin.DevicePolicyManager));
        this.mUserManager = ((android.os.UserManager) v6.getSystemService(android.os.UserManager));
        this.mPackageManager = v6.getPackageManager();
        this.mDevicePolicyManagerGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(this.mDevicePolicyManager, this.mUserManager, this.mPackageManager, ((android.location.LocationManager) v6.getSystemService(android.location.LocationManager)), this.mAdminComponentName);
        this.mIsProfileOwner = this.mDevicePolicyManagerGateway.isProfileOwnerApp();
        this.mTelephonyManager = ((android.telephony.TelephonyManager) v6.getSystemService(android.telephony.TelephonyManager));
        this.mAccountManager = android.accounts.AccountManager.get(v6);
        this.mPackageName = v6.getPackageName();
        this.mImageUri = this.getStorageUri("image.jpg");
        this.mVideoUri = this.getStorageUri("video.mp4");
        super.onCreate(p8);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p7, String p8)
    {
        this.addPreferencesFromResource(2131886083);
        androidx.preference.EditTextPreference v2_1 = ((androidx.preference.EditTextPreference) this.findPreference("override_key_selection"));
        v2_1.setOnPreferenceChangeListener(this);
        v2_1.setSummary(v2_1.getText());
        this.mManageLockTaskListPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("manage_lock_task"));
        this.mManageLockTaskListPreference.setOnPreferenceClickListener(this);
        this.mManageLockTaskListPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$0(this));
        this.findPreference("check_lock_task_permitted").setOnPreferenceClickListener(this);
        this.mSetLockTaskFeaturesPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("set_lock_task_features"));
        this.mSetLockTaskFeaturesPreference.setOnPreferenceClickListener(this);
        this.mSetLockTaskFeaturesPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$1(this));
        this.findPreference("start_lock_task").setOnPreferenceClickListener(this);
        this.findPreference("relaunch_in_lock_task").setOnPreferenceClickListener(this);
        this.findPreference("stop_lock_task").setOnPreferenceClickListener(this);
        this.findPreference("create_managed_profile").setOnPreferenceClickListener(this);
        this.findPreference("create_and_manage_user").setOnPreferenceClickListener(this);
        this.findPreference("remove_user").setOnPreferenceClickListener(this);
        this.findPreference("switch_user").setOnPreferenceClickListener(this);
        this.findPreference("start_user_in_background").setOnPreferenceClickListener(this);
        this.findPreference("stop_user").setOnPreferenceClickListener(this);
        this.mEnableLogoutPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("enable_logout"));
        this.mEnableLogoutPreference.setOnPreferenceChangeListener(this);
        this.findPreference("set_user_session_message").setOnPreferenceClickListener(this);
        this.mLogoutUserPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("logout_user"));
        this.mLogoutUserPreference.setOnPreferenceClickListener(this);
        this.mLogoutUserPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$2(this));
        this.findPreference("set_affiliation_ids").setOnPreferenceClickListener(this);
        this.mAffiliatedUserPreference = this.findPreference("affiliated_user");
        this.mEphemeralUserPreference = this.findPreference("ephemeral_user");
        this.mDisableCameraSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("disable_camera"));
        this.mDisableCameraSwitchPreference.setOnPreferenceChangeListener(this);
        this.mDisableCameraOnParentSwitchPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("disable_camera_on_parent"));
        this.mDisableCameraOnParentSwitchPreference.setOnPreferenceChangeListener(this);
        this.findPreference("capture_image").setOnPreferenceClickListener(this);
        this.findPreference("capture_video").setOnPreferenceClickListener(this);
        this.mDisableScreenCaptureSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("disable_screen_capture"));
        this.mDisableScreenCaptureSwitchPreference.setOnPreferenceChangeListener(this);
        this.mDisableScreenCaptureOnParentSwitchPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("disable_screen_capture_on_parent"));
        this.mDisableScreenCaptureOnParentSwitchPreference.setOnPreferenceChangeListener(this);
        this.mMuteAudioSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("mute_audio"));
        this.mMuteAudioSwitchPreference.setOnPreferenceChangeListener(this);
        if ((this.mIsProfileOwner) && (com.afwsamples.testdpc.common.Util.SDK_INT >= 31)) {
            this.mPreferentialNetworkServiceSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("set_get_preferential_network_service_status"));
            this.mPreferentialNetworkServiceSwitchPreference.setOnPreferenceChangeListener(this);
            this.mPreferentialNetworkServiceSwitchPreference.setChecked(this.mDevicePolicyManagerGateway.isPreferentialNetworkServiceEnabled());
        }
        this.findPreference("lock_screen_policy").setOnPreferenceClickListener(this);
        this.findPreference("password_constraints").setOnPreferenceClickListener(this);
        this.findPreference("reset_password").setOnPreferenceClickListener(this);
        this.findPreference("lock_now").setOnPreferenceClickListener(this);
        this.findPreference("system_update_policy").setOnPreferenceClickListener(this);
        this.findPreference("system_update_pending").setOnPreferenceClickListener(this);
        this.findPreference("set_always_on_vpn").setOnPreferenceClickListener(this);
        this.findPreference("set_global_http_proxy").setOnPreferenceClickListener(this);
        this.findPreference("clear_global_http_proxy").setOnPreferenceClickListener(this);
        this.findPreference("set_private_dns_mode").setOnPreferenceClickListener(this);
        this.findPreference("network_stats").setOnPreferenceClickListener(this);
        this.findPreference("manage_cert_installer").setOnPreferenceClickListener(this);
        this.mDisableStatusBarPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("disable_status_bar"));
        this.mDisableStatusBarPreference.setOnPreferenceClickListener(this);
        this.mDisableStatusBarPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$3(this));
        this.mDisableStatusBarPreference.addCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$4(this));
        this.mReenableStatusBarPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("reenable_status_bar"));
        this.mReenableStatusBarPreference.setOnPreferenceClickListener(this);
        this.mReenableStatusBarPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$5(this));
        this.mReenableStatusBarPreference.addCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$6(this));
        this.mDisableKeyguardPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("disable_keyguard"));
        this.mDisableKeyguardPreference.setOnPreferenceClickListener(this);
        this.mDisableKeyguardPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$7(this));
        this.mDisableKeyguardPreference.addCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$8(this));
        this.mReenableKeyguardPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("reenable_keyguard"));
        this.mReenableKeyguardPreference.setOnPreferenceClickListener(this);
        this.mReenableKeyguardPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$9(this));
        this.mReenableKeyguardPreference.addCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$10(this));
        this.findPreference("start_kiosk_mode").setOnPreferenceClickListener(this);
        this.mStayOnWhilePluggedInSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("stay_on_while_plugged_in"));
        this.mStayOnWhilePluggedInSwitchPreference.setOnPreferenceChangeListener(this);
        this.findPreference("wipe_data").setOnPreferenceClickListener(this);
        this.findPreference("remove_device_owner").setOnPreferenceClickListener(this);
        this.mEnableBackupServicePreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("enable_backup_service"));
        this.mEnableBackupServicePreference.setOnPreferenceChangeListener(this);
        this.mEnableBackupServicePreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$11(this));
        this.mCommonCriteriaModePreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("common_criteria_mode"));
        this.mCommonCriteriaModePreference.setOnPreferenceChangeListener(this);
        this.mEnableUsbDataSignalingPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("enable_usb_data_signaling"));
        this.mEnableUsbDataSignalingPreference.setOnPreferenceChangeListener(this);
        this.findPreference("request_bugreport").setOnPreferenceClickListener(this);
        this.mEnableSecurityLoggingPreference = ((androidx.preference.SwitchPreference) this.findPreference("enable_security_logging"));
        this.mEnableSecurityLoggingPreference.setOnPreferenceChangeListener(this);
        this.mRequestSecurityLogsPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("request_security_logs"));
        this.mRequestSecurityLogsPreference.setOnPreferenceClickListener(this);
        com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$12 v3_1 = new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$12(this);
        this.mRequestSecurityLogsPreference.setCustomConstraint(v3_1);
        this.mRequestPreRebootSecurityLogsPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("request_pre_reboot_security_logs"));
        this.mRequestPreRebootSecurityLogsPreference.setOnPreferenceClickListener(this);
        this.mRequestPreRebootSecurityLogsPreference.setCustomConstraint(v3_1);
        this.mEnableNetworkLoggingPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("enable_network_logging"));
        this.mEnableNetworkLoggingPreference.setOnPreferenceChangeListener(this);
        this.mEnableNetworkLoggingPreference.addCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$13(this));
        this.mRequestNetworkLogsPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("request_network_logs"));
        this.mRequestNetworkLogsPreference.setOnPreferenceClickListener(this);
        this.mRequestNetworkLogsPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$14(this));
        this.findPreference("set_accessibility_services").setOnPreferenceClickListener(this);
        this.findPreference("set_input_methods").setOnPreferenceClickListener(this);
        this.findPreference("set_input_methods_on_parent").setOnPreferenceClickListener(this);
        this.findPreference("set_notification_listeners").setOnPreferenceClickListener(this);
        this.findPreference("set_notification_listeners_text").setOnPreferenceClickListener(this);
        this.findPreference("set_disable_account_management").setOnPreferenceClickListener(this);
        this.findPreference("get_disable_account_management").setOnPreferenceClickListener(this);
        this.findPreference("add_account").setOnPreferenceClickListener(this);
        this.findPreference("remove_account").setOnPreferenceClickListener(this);
        this.findPreference("block_uninstallation_by_pkg").setOnPreferenceClickListener(this);
        this.findPreference("block_uninstallation_list").setOnPreferenceClickListener(this);
        this.findPreference("app_feedback_notifications").setOnPreferenceChangeListener(this);
        this.mEnableAppFeedbackNotificationsPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("app_feedback_notifications"));
        this.findPreference("enable_system_apps").setOnPreferenceClickListener(this);
        this.findPreference("enable_system_apps_by_package_name").setOnPreferenceClickListener(this);
        this.findPreference("enable_system_apps_by_intent").setOnPreferenceClickListener(this);
        this.mInstallExistingPackagePreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("install_existing_packages"));
        this.mInstallExistingPackagePreference.setOnPreferenceClickListener(this);
        this.mInstallExistingPackagePreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$15(this));
        this.findPreference("install_apk_package").setOnPreferenceClickListener(this);
        this.findPreference("uninstall_package").setOnPreferenceClickListener(this);
        this.findPreference("hide_apps").setOnPreferenceClickListener(this);
        this.mHideAppsParentPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("hide_apps_parent"));
        this.mHideAppsParentPreference.setOnPreferenceClickListener(this);
        this.findPreference("unhide_apps").setOnPreferenceClickListener(this);
        this.mUnhideAppsParentPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("unhide_apps_parent"));
        this.mUnhideAppsParentPreference.setOnPreferenceClickListener(this);
        this.findPreference("suspend_apps").setOnPreferenceClickListener(this);
        this.findPreference("unsuspend_apps").setOnPreferenceClickListener(this);
        this.findPreference("clear_app_data").setOnPreferenceClickListener(this);
        this.findPreference("keep_uninstalled_packages").setOnPreferenceClickListener(this);
        this.findPreference("managed_configurations").setOnPreferenceClickListener(this);
        this.findPreference("disable_metered_data").setOnPreferenceClickListener(this);
        this.findPreference("generic_delegation").setOnPreferenceClickListener(this);
        this.findPreference("app_restrictions_managing_package").setOnPreferenceClickListener(this);
        this.findPreference("request_manage_credentials").setOnPreferenceClickListener(this);
        this.findPreference("install_key_certificate").setOnPreferenceClickListener(this);
        this.findPreference("generate_key_and_certificate").setOnPreferenceClickListener(this);
        this.findPreference("remove_key_certificate").setOnPreferenceClickListener(this);
        this.findPreference("test_key_usability").setOnPreferenceClickListener(this);
        this.findPreference("install_ca_certificate").setOnPreferenceClickListener(this);
        this.findPreference("get_ca_certificates").setOnPreferenceClickListener(this);
        this.findPreference("remove_all_ca_certificates").setOnPreferenceClickListener(this);
        this.findPreference("managed_profile_policies").setOnPreferenceClickListener(this);
        this.findPreference("set_permission_policy").setOnPreferenceClickListener(this);
        this.findPreference("manage_app_permissions").setOnPreferenceClickListener(this);
        this.findPreference("create_wifi_configuration").setOnPreferenceClickListener(this);
        this.findPreference("create_eap_tls_wifi_configuration").setOnPreferenceClickListener(this);
        this.mLockdownAdminConfiguredNetworksPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("enable_wifi_config_lockdown"));
        this.mLockdownAdminConfiguredNetworksPreference.setOnPreferenceChangeListener(this);
        this.findPreference("modify_wifi_configuration").setOnPreferenceClickListener(this);
        this.findPreference("modify_owned_wifi_configuration").setOnPreferenceClickListener(this);
        this.findPreference("remove_not_owned_wifi_configurations").setOnPreferenceClickListener(this);
        this.findPreference("transfer_ownership_to_component").setOnPreferenceClickListener(this);
        this.findPreference("show_wifi_mac_address").setOnPreferenceClickListener(this);
        this.mInstallNonMarketAppsPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("install_nonmarket_apps"));
        this.mInstallNonMarketAppsPreference.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$16(this));
        this.mInstallNonMarketAppsPreference.setOnPreferenceChangeListener(this);
        this.findPreference("set_user_restrictions").setOnPreferenceClickListener(this);
        this.mUserRestrictionsParentPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("set_user_restrictions_parent"));
        this.mUserRestrictionsParentPreference.setOnPreferenceClickListener(this);
        this.findPreference("reboot").setOnPreferenceClickListener(this);
        this.findPreference("set_short_support_message").setOnPreferenceClickListener(this);
        this.findPreference("set_long_support_message").setOnPreferenceClickListener(this);
        this.findPreference("set_new_password").setOnPreferenceClickListener(this);
        this.findPreference("set_profile_parent_new_password").setOnPreferenceClickListener(this);
        this.findPreference("set_profile_parent_new_password_device_requirement").setOnPreferenceClickListener(this);
        this.findPreference("cross_profile_apps").setOnPreferenceClickListener(this);
        this.findPreference("cross_profile_apps_allowlist").setOnPreferenceClickListener(this);
        this.findPreference("set_screen_brightness").setOnPreferenceClickListener(this);
        this.mAutoBrightnessPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("auto_brightness"));
        this.mAutoBrightnessPreference.setOnPreferenceChangeListener(this);
        this.findPreference("set_screen_off_timeout").setOnPreferenceClickListener(this);
        this.findPreference("set_time").setOnPreferenceClickListener(this);
        this.findPreference("set_time_zone").setOnPreferenceClickListener(this);
        this.findPreference("set_profile_name").setOnPreferenceClickListener(this);
        this.findPreference("manage_override_apn").setOnPreferenceClickListener(this);
        this.findPreference("managed_system_updates").setOnPreferenceClickListener(this);
        this.findPreference("cross_profile_calendar").setOnPreferenceClickListener(this);
        this.findPreference("factory_reset_org_owned_device").setOnPreferenceClickListener(this);
        this.findPreference("set_factory_reset_protection_policy").setOnPreferenceClickListener(this);
        this.findPreference("set_organization_id").setOnPreferenceClickListener(this);
        com.afwsamples.testdpc.common.preference.DpcPreference v0_1 = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("bind_device_admin_policies"));
        v0_1.setCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$17(this));
        v0_1.setOnPreferenceClickListener(this);
        this.mSetAutoTimeRequiredPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("set_auto_time_required"));
        this.mSetAutoTimeRequiredPreference.addCustomConstraint(new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$18(this));
        this.mSetAutoTimeRequiredPreference.setOnPreferenceChangeListener(this);
        this.mSetAutoTimePreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("set_auto_time"));
        this.mSetAutoTimePreference.setOnPreferenceChangeListener(this);
        this.mSetAutoTimeZonePreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("set_auto_time_zone"));
        this.mSetAutoTimeZonePreference.setOnPreferenceChangeListener(this);
        this.mSetDeviceOrganizationNamePreference = ((androidx.preference.EditTextPreference) this.findPreference("set_device_organization_name"));
        this.mSetDeviceOrganizationNamePreference.setOnPreferenceChangeListener(this);
        this.mSetLocationEnabledPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("set_location_enabled"));
        this.mSetLocationEnabledPreference.setOnPreferenceChangeListener(this);
        this.mSetLocationModePreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("set_location_mode"));
        this.mSetLocationModePreference.setOnPreferenceChangeListener(this);
        this.mSuspendPersonalApps = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("suspend_personal_apps"));
        this.mSuspendPersonalApps.setOnPreferenceChangeListener(this);
        this.mProfileMaxTimeOff = ((com.afwsamples.testdpc.common.preference.DpcEditTextPreference) this.findPreference("profile_max_time_off"));
        this.mProfileMaxTimeOff.setOnPreferenceChangeListener(this);
        this.maybeUpdateProfileMaxTimeOff();
        this.onCreateSetNewPasswordWithComplexityPreference();
        this.onCreateSetRequiredPasswordComplexityPreference();
        this.onCreateSetRequiredPasswordComplexityOnParentPreference();
        this.constrainSpecialCasePreferences();
        this.maybeDisableLockTaskPreferences();
        this.loadAppFeedbackNotifications();
        this.loadAppStatus();
        this.loadSecurityPatch();
        this.loadEnrollmentSpecificId();
        this.loadIsEphemeralUserUi();
        this.reloadCameraDisableUi();
        this.reloadScreenCaptureDisableUi();
        this.reloadMuteAudioUi();
        this.reloadEnableBackupServiceUi();
        this.reloadCommonCriteriaModeUi();
        this.reloadEnableUsbDataSignalingUi();
        this.reloadEnableSecurityLoggingUi();
        this.reloadEnableNetworkLoggingUi();
        this.reloadSetAutoTimeRequiredUi();
        this.reloadSetAutoTimeUi();
        this.reloadSetAutoTimeZoneUi();
        this.reloadEnableLogoutUi();
        this.reloadAutoBrightnessUi();
        this.reloadPersonalAppsSuspendedUi();
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p18, Object p19)
    {
        String v4 = p18.getKey();
        int v10_0 = -1;
        switch (v4.hashCode()) {
            case -1841325265:
                if (!v4.equals("common_criteria_mode")) {
                } else {
                    v10_0 = 4;
                }
                break;
            case -1829820353:
                if (!v4.equals("set_required_password_complexity")) {
                } else {
                    v10_0 = 22;
                }
                break;
            case -1642581132:
                if (!v4.equals("enable_backup_service")) {
                } else {
                    v10_0 = 3;
                }
                break;
            case -1344698432:
                if (!v4.equals("set_auto_time")) {
                } else {
                    v10_0 = 16;
                }
                break;
            case -1311918388:
                if (!v4.equals("install_nonmarket_apps")) {
                } else {
                    v10_0 = 14;
                }
                break;
            case -1235509682:
                if (!v4.equals("suspend_personal_apps")) {
                } else {
                    v10_0 = 27;
                }
                break;
            case -1025322094:
                if (!v4.equals("enable_network_logging")) {
                } else {
                    v10_0 = 7;
                }
                break;
            case -844677988:
                if (!v4.equals("enable_security_logging")) {
                } else {
                    v10_0 = 6;
                }
                break;
            case -713343563:
                if (!v4.equals("disable_screen_capture_on_parent")) {
                } else {
                    v10_0 = 9;
                }
                break;
            case -602604049:
                if (!v4.equals("set_new_password_with_complexity")) {
                } else {
                    v10_0 = 21;
                }
                break;
            case -214228822:
                if (!v4.equals("disable_screen_capture")) {
                } else {
                    v10_0 = 8;
                }
                break;
            case -201749186:
                if (!v4.equals("set_auto_time_required")) {
                } else {
                    v10_0 = 15;
                }
                break;
            case -82236213:
                if (!v4.equals("set_auto_time_zone")) {
                } else {
                    v10_0 = 17;
                }
                break;
            case 151262635:
                if (!v4.equals("set_device_organization_name")) {
                } else {
                    v10_0 = 18;
                }
                break;
            case 239266573:
                if (!v4.equals("set_get_preferential_network_service_status")) {
                } else {
                    v10_0 = 11;
                }
                break;
            case 359790670:
                if (!v4.equals("profile_max_time_off")) {
                } else {
                    v10_0 = 28;
                }
                break;
            case 368913684:
                if (!v4.equals("stay_on_while_plugged_in")) {
                } else {
                    v10_0 = 12;
                }
                break;
            case 392597729:
                if (!v4.equals("auto_brightness")) {
                } else {
                    v10_0 = 20;
                }
                break;
            case 913138876:
                if (!v4.equals("enable_wifi_config_lockdown")) {
                } else {
                    v10_0 = 13;
                }
                break;
            case 1060751932:
                if (!v4.equals("enable_usb_data_signaling")) {
                } else {
                    v10_0 = 5;
                }
                break;
            case 1065960390:
                if (!v4.equals("enable_logout")) {
                } else {
                    v10_0 = 19;
                }
                break;
            case 1251084380:
                if (!v4.equals("disable_camera")) {
                } else {
                    v10_0 = 1;
                }
                break;
            case 1311674122:
                if (!v4.equals("set_required_password_complexity_on_parent")) {
                } else {
                    v10_0 = 23;
                }
                break;
            case 1410454924:
                if (!v4.equals("app_feedback_notifications")) {
                } else {
                    v10_0 = 24;
                }
                break;
            case 1484527312:
                if (!v4.equals("set_location_mode")) {
                } else {
                    v10_0 = 26;
                }
                break;
            case 1570877159:
                if (!v4.equals("disable_camera_on_parent")) {
                } else {
                    v10_0 = 2;
                }
                break;
            case 1595120176:
                if (!v4.equals("mute_audio")) {
                } else {
                    v10_0 = 10;
                }
                break;
            case 1733427956:
                if (!v4.equals("set_location_enabled")) {
                } else {
                    v10_0 = 25;
                }
                break;
            case 1990080633:
                if (!v4.equals("override_key_selection")) {
                } else {
                    v10_0 = 0;
                }
                break;
        }
        int v10_2;
        switch (v10_0) {
            case 0:
                p18.setSummary(((String) p19));
                v10_2 = 1;
                break;
            case 1:
                this.setCameraDisabled(((Boolean) p19).booleanValue());
                this.reloadCameraDisableUi();
                v10_2 = 1;
                break;
            case 2:
                this.setCameraDisabledOnParent(((Boolean) p19).booleanValue());
                this.reloadCameraDisableOnParentUi();
                v10_2 = 1;
                break;
            case 3:
                this.setBackupServiceEnabled(((Boolean) p19).booleanValue());
                this.reloadEnableBackupServiceUi();
                v10_2 = 1;
                break;
            case 4:
                this.setCommonCriteriaModeEnabled(((Boolean) p19).booleanValue());
                this.reloadCommonCriteriaModeUi();
                v10_2 = 1;
                break;
            case 5:
                this.setUsbDataSignalingEnabled(((Boolean) p19).booleanValue());
                this.reloadEnableUsbDataSignalingUi();
                v10_2 = 1;
                break;
            case 6:
                this.setSecurityLoggingEnabled(((Boolean) p19).booleanValue());
                this.reloadEnableSecurityLoggingUi();
                v10_2 = 1;
                break;
            case 7:
                this.mDevicePolicyManagerGateway.setNetworkLogging(((Boolean) p19).booleanValue());
                this.reloadEnableNetworkLoggingUi();
                v10_2 = 1;
                break;
            case 8:
                this.setScreenCaptureDisabled(((Boolean) p19).booleanValue());
                this.reloadScreenCaptureDisableUi();
                v10_2 = 1;
                break;
            case 9:
                this.setScreenCaptureDisabledOnParent(((Boolean) p19).booleanValue());
                this.reloadScreenCaptureDisableOnParentUi();
                v10_2 = 1;
                break;
            case 10:
                this.mDevicePolicyManager.setMasterVolumeMuted(this.mAdminComponentName, ((Boolean) p19).booleanValue());
                this.reloadMuteAudioUi();
                v10_2 = 1;
                break;
            case 11:
                this.mDevicePolicyManagerGateway.setPreferentialNetworkServiceEnabled(((Boolean) p19).booleanValue(), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$27(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$28(this));
                v10_2 = 1;
                break;
            case 12:
                int v10_38;
                if (!p19.equals(Boolean.valueOf(1))) {
                    v10_38 = com.afwsamples.testdpc.policy.PolicyManagementFragment.DONT_STAY_ON;
                } else {
                    v10_38 = com.afwsamples.testdpc.policy.PolicyManagementFragment.BATTERY_PLUGGED_ANY;
                }
                this.mDevicePolicyManager.setGlobalSetting(this.mAdminComponentName, "stay_on_while_plugged_in", v10_38);
                this.updateStayOnWhilePluggedInPreference();
                v10_2 = 1;
                break;
            case 13:
                this.mDevicePolicyManager.setConfiguredNetworksLockdownState(this.mAdminComponentName, p19.equals(Boolean.valueOf(1)));
                this.reloadLockdownAdminConfiguredNetworksUi();
                v10_2 = 1;
                break;
            case 14:
                int v10_33;
                if (!p19.equals(Boolean.valueOf(1))) {
                    v10_33 = "0";
                } else {
                    v10_33 = "1";
                }
                this.mDevicePolicyManager.setSecureSetting(this.mAdminComponentName, "install_non_market_apps", v10_33);
                this.updateInstallNonMarketAppsPreference();
                v10_2 = 1;
                break;
            case 15:
                this.mDevicePolicyManager.setAutoTimeRequired(this.mAdminComponentName, p19.equals(Boolean.valueOf(1)));
                this.reloadSetAutoTimeRequiredUi();
                v10_2 = 1;
                break;
            case 16:
                this.setAutoTimeEnabled(p19.equals(Boolean.valueOf(1)));
                this.reloadSetAutoTimeUi();
                v10_2 = 1;
                break;
            case 17:
                this.setAutoTimeZoneEnabled(p19.equals(Boolean.valueOf(1)));
                this.reloadSetAutoTimeZoneUi();
                v10_2 = 1;
                break;
            case 18:
                this.mDevicePolicyManagerGateway.setOrganizationName(((String) p19), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$29(this), new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$30(this));
                this.mSetDeviceOrganizationNamePreference.setSummary(((String) p19));
                v10_2 = 1;
                break;
            case 19:
                this.mDevicePolicyManager.setLogoutEnabled(this.mAdminComponentName, ((Boolean) p19).booleanValue());
                this.reloadEnableLogoutUi();
                v10_2 = 1;
                break;
            case 20:
                int v10_18;
                if (!p19.equals(Boolean.valueOf(1))) {
                    v10_18 = "0";
                } else {
                    v10_18 = "1";
                }
                this.mDevicePolicyManager.setSystemSetting(this.mAdminComponentName, "screen_brightness_mode", v10_18);
                this.reloadAutoBrightnessUi();
                v10_2 = 1;
                break;
            case 21:
                android.content.Intent v3_1 = new android.content.Intent("android.app.action.SET_NEW_PASSWORD");
                v3_1.putExtra("android.app.extra.PASSWORD_COMPLEXITY", Integer.parseInt(((String) p19)));
                this.startActivity(v3_1);
                v10_2 = 1;
                break;
            case 22:
                this.setRequiredPasswordComplexity(Integer.parseInt(((String) p19)));
                v10_2 = 1;
                break;
            case 23:
                this.setRequiredPasswordComplexityOnParent(Integer.parseInt(((String) p19)));
                v10_2 = 1;
                break;
            case 24:
                android.content.SharedPreferences$Editor v2 = androidx.preference.PreferenceManager.getDefaultSharedPreferences(this.getContext()).edit();
                v2.putBoolean(this.getString(2131689572), p19.equals(Boolean.valueOf(1)));
                v2.commit();
                v10_2 = 1;
                break;
            case 25:
                this.mDevicePolicyManager.setLocationEnabled(this.mAdminComponentName, p19.equals(Boolean.valueOf(1)));
                this.reloadLocationEnabledUi().reloadLocationModeUi();
                v10_2 = 1;
                break;
            case 26:
                int v5;
                if (!p19.equals(Boolean.valueOf(1))) {
                    v5 = 0;
                } else {
                    v5 = 3;
                }
                int v10_7 = this.mDevicePolicyManager;
                android.content.ComponentName v11_26 = this.mAdminComponentName;
                Object[] v14_1 = new Object[1];
                v14_1[0] = Integer.valueOf(v5);
                v10_7.setSecureSetting(v11_26, "location_mode", String.format("%d", v14_1));
                this.reloadLocationEnabledUi().reloadLocationModeUi();
                v10_2 = 1;
                break;
            case 27:
                this.mDevicePolicyManager.setPersonalAppsSuspended(this.mAdminComponentName, ((Boolean) p19).booleanValue());
                this.reloadPersonalAppsSuspendedUi();
                v10_2 = 1;
                break;
            case 28:
                this.mDevicePolicyManager.setManagedProfileMaximumTimeOff(this.mAdminComponentName, java.util.concurrent.TimeUnit.SECONDS.toMillis(Long.parseLong(((String) p19))));
                this.maybeUpdateProfileMaxTimeOff();
                v10_2 = 1;
                break;
            default:
                v10_2 = 0;
        }
        return v10_2;
    }

    public boolean onPreferenceClick(androidx.preference.Preference p9)
    {
        int v2_0 = 0;
        String v0 = p9.getKey();
        com.afwsamples.testdpc.policy.PolicyManagementFragment$GetNotificationListenersTask v4_0 = -1;
        switch (v0.hashCode()) {
            case -2131053786:
                if (!v0.equals("remove_not_owned_wifi_configurations")) {
                } else {
                    v4_0 = 84;
                }
                break;
            case -2109562422:
                if (!v0.equals("set_organization_id")) {
                } else {
                    v4_0 = 108;
                }
                break;
            case -2095929195:
                if (!v0.equals("suspend_apps")) {
                } else {
                    v4_0 = 44;
                }
                break;
            case -2059905666:
                if (!v0.equals("create_eap_tls_wifi_configuration")) {
                } else {
                    v4_0 = 81;
                }
                break;
            case -2046840208:
                if (!v0.equals("factory_reset_org_owned_device")) {
                } else {
                    v4_0 = 106;
                }
                break;
            case -2038272516:
                if (!v0.equals("remove_key_certificate")) {
                } else {
                    v4_0 = 56;
                }
                break;
            case -2000042206:
                if (!v0.equals("capture_image")) {
                } else {
                    v4_0 = 78;
                }
                break;
            case -1988152766:
                if (!v0.equals("capture_video")) {
                } else {
                    v4_0 = 79;
                }
                break;
            case -1948749033:
                if (!v0.equals("set_new_password")) {
                } else {
                    v4_0 = 91;
                }
                break;
            case -1909422965:
                if (!v0.equals("set_user_restrictions_parent")) {
                } else {
                    v4_0 = 87;
                }
                break;
            case -1881973891:
                if (!v0.equals("install_existing_packages")) {
                } else {
                    v4_0 = 37;
                }
                break;
            case -1772382361:
                if (!v0.equals("set_screen_brightness")) {
                } else {
                    v4_0 = 97;
                }
                break;
            case -1769706809:
                if (!v0.equals("bind_device_admin_policies")) {
                } else {
                    v4_0 = 94;
                }
                break;
            case -1742947451:
                if (!v0.equals("generate_key_and_certificate")) {
                } else {
                    v4_0 = 57;
                }
                break;
            case -1680482408:
                if (!v0.equals("disable_metered_data")) {
                } else {
                    v4_0 = 49;
                }
                break;
            case -1628024456:
                if (!v0.equals("relaunch_in_lock_task")) {
                } else {
                    v4_0 = 6;
                }
                break;
            case -1547247018:
                if (!v0.equals("set_factory_reset_protection_policy")) {
                } else {
                    v4_0 = 107;
                }
                break;
            case -1546839264:
                if (!v0.equals("set_input_methods")) {
                } else {
                    v4_0 = 15;
                }
                break;
            case -1542782251:
                if (!v0.equals("get_disable_account_management")) {
                } else {
                    v4_0 = 20;
                }
                break;
            case -1483556994:
                if (!v0.equals("set_user_restrictions")) {
                } else {
                    v4_0 = 86;
                }
                break;
            case -1460327157:
                if (!v0.equals("modify_owned_wifi_configuration")) {
                } else {
                    v4_0 = 83;
                }
                break;
            case -1452100097:
                if (!v0.equals("test_key_usability")) {
                } else {
                    v4_0 = 58;
                }
                break;
            case -1449576943:
                if (!v0.equals("start_user_in_background")) {
                } else {
                    v4_0 = 27;
                }
                break;
            case -1406988727:
                if (!v0.equals("set_disable_account_management")) {
                } else {
                    v4_0 = 19;
                }
                break;
            case -1386026310:
                if (!v0.equals("create_and_manage_user")) {
                } else {
                    v4_0 = 24;
                }
                break;
            case -1373376073:
                if (!v0.equals("set_short_support_message")) {
                } else {
                    v4_0 = 89;
                }
                break;
            case -1371405315:
                if (!v0.equals("disable_status_bar")) {
                } else {
                    v4_0 = 73;
                }
                break;
            case -1340619981:
                if (!v0.equals("cross_profile_calendar")) {
                } else {
                    v4_0 = 104;
                }
                break;
            case -1279759233:
                if (!v0.equals("install_apk_package")) {
                } else {
                    v4_0 = 38;
                }
                break;
            case -1225981463:
                if (!v0.equals("uninstall_package")) {
                } else {
                    v4_0 = 39;
                }
                break;
            case -1127801685:
                if (!v0.equals("set_input_methods_on_parent")) {
                } else {
                    v4_0 = 16;
                }
                break;
            case -1117537733:
                if (!v0.equals("set_screen_off_timeout")) {
                } else {
                    v4_0 = 98;
                }
                break;
            case -1090342370:
                if (!v0.equals("block_uninstallation_by_pkg")) {
                } else {
                    v4_0 = 32;
                }
                break;
            case -972754147:
                if (!v0.equals("set_profile_parent_new_password_device_requirement")) {
                } else {
                    v4_0 = 93;
                }
                break;
            case -948954809:
                if (!v0.equals("manage_cert_installer")) {
                } else {
                    v4_0 = 72;
                }
                break;
            case -934938715:
                if (!v0.equals("reboot")) {
                } else {
                    v4_0 = 88;
                }
                break;
            case -925666568:
                if (!v0.equals("request_bugreport")) {
                } else {
                    v4_0 = 10;
                }
                break;
            case -893941313:
                if (!v0.equals("manage_lock_task")) {
                } else {
                    v4_0 = 0;
                }
                break;
            case -750206872:
                if (!v0.equals("set_notification_listeners")) {
                } else {
                    v4_0 = 17;
                }
                break;
            case -732465443:
                if (!v0.equals("managed_configurations")) {
                } else {
                    v4_0 = 48;
                }
                break;
            case -660766639:
                if (!v0.equals("lock_screen_policy")) {
                } else {
                    v4_0 = 63;
                }
                break;
            case -633360750:
                if (!v0.equals("password_constraints")) {
                } else {
                    v4_0 = 64;
                }
                break;
            case -629281960:
                if (!v0.equals("system_update_policy")) {
                } else {
                    v4_0 = 65;
                }
                break;
            case -622209307:
                if (!v0.equals("keep_uninstalled_packages")) {
                } else {
                    v4_0 = 47;
                }
                break;
            case -604264626:
                if (!v0.equals("network_stats")) {
                } else {
                    v4_0 = 71;
                }
                break;
            case -525117557:
                if (!v0.equals("reset_password")) {
                } else {
                    v4_0 = 3;
                }
                break;
            case -501805478:
                if (!v0.equals("install_ca_certificate")) {
                } else {
                    v4_0 = 59;
                }
                break;
            case -478190222:
                if (!v0.equals("remove_account")) {
                } else {
                    v4_0 = 22;
                }
                break;
            case -427991142:
                if (!v0.equals("hide_apps_parent")) {
                } else {
                    v4_0 = 41;
                }
                break;
            case -402824924:
                if (!v0.equals("remove_all_ca_certificates")) {
                } else {
                    v4_0 = 61;
                }
                break;
            case -333010914:
                if (!v0.equals("set_profile_name")) {
                } else {
                    v4_0 = 105;
                }
                break;
            case -323029855:
                if (!v0.equals("clear_global_http_proxy")) {
                } else {
                    v4_0 = 69;
                }
                break;
            case -293511514:
                if (!v0.equals("remove_user")) {
                } else {
                    v4_0 = 25;
                }
                break;
            case -143299130:
                if (!v0.equals("enable_system_apps")) {
                } else {
                    v4_0 = 34;
                }
                break;
            case -126519354:
                if (!v0.equals("manage_override_apn")) {
                } else {
                    v4_0 = 102;
                }
                break;
            case -46400271:
                if (!v0.equals("modify_wifi_configuration")) {
                } else {
                    v4_0 = 82;
                }
                break;
            case -41074856:
                if (!v0.equals("block_uninstallation_list")) {
                } else {
                    v4_0 = 33;
                }
                break;
            case 13477722:
                if (!v0.equals("managed_system_updates")) {
                } else {
                    v4_0 = 103;
                }
                break;
            case 141981839:
                if (!v0.equals("add_account")) {
                } else {
                    v4_0 = 21;
                }
                break;
            case 160022326:
                if (!v0.equals("start_kiosk_mode")) {
                } else {
                    v4_0 = 77;
                }
                break;
            case 216185787:
                if (!v0.equals("check_lock_task_permitted")) {
                } else {
                    v4_0 = 1;
                }
                break;
            case 299866191:
                if (!v0.equals("reenable_keyguard")) {
                } else {
                    v4_0 = 76;
                }
                break;
            case 336434515:
                if (!v0.equals("enable_system_apps_by_package_name")) {
                } else {
                    v4_0 = 35;
                }
                break;
            case 359364381:
                if (!v0.equals("disable_keyguard")) {
                } else {
                    v4_0 = 75;
                }
                break;
            case 381144743:
                if (!v0.equals("set_user_session_message")) {
                } else {
                    v4_0 = 30;
                }
                break;
            case 488534493:
                if (!v0.equals("transfer_ownership_to_component")) {
                } else {
                    v4_0 = 99;
                }
                break;
            case 533270688:
                if (!v0.equals("set_lock_task_features")) {
                } else {
                    v4_0 = 2;
                }
                break;
            case 576760016:
                if (!v0.equals("request_network_logs")) {
                } else {
                    v4_0 = 11;
                }
                break;
            case 606154142:
                if (!v0.equals("request_security_logs")) {
                } else {
                    v4_0 = 12;
                }
                break;
            case 644439820:
                if (!v0.equals("set_affiliation_ids")) {
                } else {
                    v4_0 = 31;
                }
                break;
            case 674139411:
                if (!v0.equals("install_key_certificate")) {
                } else {
                    v4_0 = 55;
                }
                break;
            case 824722277:
                if (!v0.equals("remove_device_owner")) {
                } else {
                    v4_0 = 9;
                }
                break;
            case 853122895:
                if (!v0.equals("hide_apps")) {
                } else {
                    v4_0 = 40;
                }
                break;
            case 886472668:
                if (!v0.equals("show_wifi_mac_address")) {
                } else {
                    v4_0 = 85;
                }
                break;
            case 896601030:
                if (!v0.equals("managed_profile_policies")) {
                } else {
                    v4_0 = 62;
                }
                break;
            case 921562326:
                if (!v0.equals("unhide_apps")) {
                } else {
                    v4_0 = 42;
                }
                break;
            case 968661422:
                if (!v0.equals("unsuspend_apps")) {
                } else {
                    v4_0 = 45;
                }
                break;
            case 981136860:
                if (!v0.equals("set_profile_parent_new_password")) {
                } else {
                    v4_0 = 92;
                }
                break;
            case 1011080081:
                if (!v0.equals("set_long_support_message")) {
                } else {
                    v4_0 = 90;
                }
                break;
            case 1071398032:
                if (!v0.equals("generic_delegation")) {
                } else {
                    v4_0 = 50;
                }
                break;
            case 1133970130:
                if (!v0.equals("request_manage_credentials")) {
                } else {
                    v4_0 = 54;
                }
                break;
            case 1273234855:
                if (!v0.equals("set_always_on_vpn")) {
                } else {
                    v4_0 = 67;
                }
                break;
            case 1325819457:
                if (!v0.equals("set_time_zone")) {
                } else {
                    v4_0 = 101;
                }
                break;
            case 1341542475:
                if (!v0.equals("enable_system_apps_by_intent")) {
                } else {
                    v4_0 = 36;
                }
                break;
            case 1394097828:
                if (!v0.equals("set_notification_listeners_text")) {
                } else {
                    v4_0 = 18;
                }
                break;
            case 1415560330:
                if (!v0.equals("set_time")) {
                } else {
                    v4_0 = 100;
                }
                break;
            case 1432855055:
                if (!v0.equals("cross_profile_apps_allowlist")) {
                } else {
                    v4_0 = 96;
                }
                break;
            case 1469748997:
                if (!v0.equals("set_permission_policy")) {
                } else {
                    v4_0 = 52;
                }
                break;
            case 1540392050:
                if (!v0.equals("set_private_dns_mode")) {
                } else {
                    v4_0 = 70;
                }
                break;
            case 1571294370:
                if (!v0.equals("wipe_data")) {
                } else {
                    v4_0 = 8;
                }
                break;
            case 1577768167:
                if (!v0.equals("cross_profile_apps")) {
                } else {
                    v4_0 = 95;
                }
                break;
            case 1580376239:
                if (!v0.equals("reenable_status_bar")) {
                } else {
                    v4_0 = 74;
                }
                break;
            case 1630162408:
                if (!v0.equals("stop_user")) {
                } else {
                    v4_0 = 28;
                }
                break;
            case 1682507825:
                if (!v0.equals("system_update_pending")) {
                } else {
                    v4_0 = 66;
                }
                break;
            case 1700757366:
                if (!v0.equals("set_global_http_proxy")) {
                } else {
                    v4_0 = 68;
                }
                break;
            case 1713839155:
                if (!v0.equals("unhide_apps_parent")) {
                } else {
                    v4_0 = 43;
                }
                break;
            case 1729852768:
                if (!v0.equals("logout_user")) {
                } else {
                    v4_0 = 29;
                }
                break;
            case 1733719907:
                if (!v0.equals("app_restrictions_managing_package")) {
                } else {
                    v4_0 = 51;
                }
                break;
            case 1780706476:
                if (!v0.equals("set_accessibility_services")) {
                } else {
                    v4_0 = 14;
                }
                break;
            case 1782896764:
                if (!v0.equals("start_lock_task")) {
                } else {
                    v4_0 = 5;
                }
                break;
            case 1909658050:
                if (!v0.equals("lock_now")) {
                } else {
                    v4_0 = 4;
                }
                break;
            case 1944589340:
                if (!v0.equals("stop_lock_task")) {
                } else {
                    v4_0 = 7;
                }
                break;
            case 1952997376:
                if (!v0.equals("request_pre_reboot_security_logs")) {
                } else {
                    v4_0 = 13;
                }
                break;
            case 1964644719:
                if (!v0.equals("create_wifi_configuration")) {
                } else {
                    v4_0 = 80;
                }
                break;
            case 1976839308:
                if (!v0.equals("manage_app_permissions")) {
                } else {
                    v4_0 = 53;
                }
                break;
            case 2019995590:
                if (!v0.equals("create_managed_profile")) {
                } else {
                    v4_0 = 23;
                }
                break;
            case 2118209812:
                if (!v0.equals("get_ca_certificates")) {
                } else {
                    v4_0 = 60;
                }
                break;
            case 2129415670:
                if (!v0.equals("switch_user")) {
                } else {
                    v4_0 = 26;
                }
                break;
            case 2138545338:
                if (!v0.equals("clear_app_data")) {
                } else {
                    v4_0 = 46;
                }
                break;
        }
        switch (v4_0) {
            case 0:
                this.showManageLockTaskListPrompt(2131689914, new com.afwsamples.testdpc.policy.PolicyManagementFragment$$Lambda$19(this));
                v2_0 = 1;
                break;
            case 1:
                this.showCheckLockTaskPermittedPrompt();
                v2_0 = 1;
                break;
            case 2:
                this.showFragment(new com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment());
                v2_0 = 1;
                break;
            case 3:
                if (com.afwsamples.testdpc.common.Util.SDK_INT < 26) {
                    this.showResetPasswordPrompt();
                } else {
                    this.showFragment(new com.afwsamples.testdpc.policy.resetpassword.ResetPasswordWithTokenFragment());
                    v2_0 = 1;
                }
                break;
            case 4:
                this.lockNow();
                v2_0 = 1;
                break;
            case 5:
                this.getActivity().startLockTask();
                v2_0 = 1;
                break;
            case 6:
                this.relaunchInLockTaskMode();
                v2_0 = 1;
                break;
            case 7:
                try {
                    this.getActivity().stopLockTask();
                } catch (int v2) {
                }
                v2_0 = 1;
                break;
            case 8:
                this.showWipeDataPrompt();
                v2_0 = 1;
                break;
            case 9:
                this.showRemoveDeviceOwnerPrompt();
                v2_0 = 1;
                break;
            case 10:
                this.requestBugReport();
                v2_0 = 1;
                break;
            case 11:
                this.showFragment(new com.afwsamples.testdpc.policy.NetworkLogsFragment());
                v2_0 = 1;
                break;
            case 12:
                this.showFragment(com.afwsamples.testdpc.policy.SecurityLogsFragment.newInstance(0));
                v2_0 = 1;
                break;
            case 13:
                this.showFragment(com.afwsamples.testdpc.policy.SecurityLogsFragment.newInstance(1));
                v2_0 = 1;
                break;
            case 14:
                if ((this.mGetAccessibilityServicesTask != null) && (!this.mGetAccessibilityServicesTask.isCancelled())) {
                    this.mGetAccessibilityServicesTask.cancel(1);
                }
                this.mGetAccessibilityServicesTask = new com.afwsamples.testdpc.policy.PolicyManagementFragment$GetAccessibilityServicesTask(this);
                int v2_82 = new Void[0];
                this.mGetAccessibilityServicesTask.execute(v2_82);
                v2_0 = 1;
                break;
            case 15:
                if ((this.mGetInputMethodsTask != null) && (!this.mGetInputMethodsTask.isCancelled())) {
                    this.mGetInputMethodsTask.cancel(1);
                }
                this.mGetInputMethodsTask = new com.afwsamples.testdpc.policy.PolicyManagementFragment$GetInputMethodsTask(this);
                int v2_81 = new Void[0];
                this.mGetInputMethodsTask.execute(v2_81);
                v2_0 = 1;
                break;
            case 16:
                this.setPermittedInputMethodsOnParent();
                v2_0 = 1;
                break;
            case 17:
                if ((this.mGetNotificationListenersTask != null) && (!this.mGetNotificationListenersTask.isCancelled())) {
                    this.mGetNotificationListenersTask.cancel(1);
                }
                this.mGetNotificationListenersTask = new com.afwsamples.testdpc.policy.PolicyManagementFragment$GetNotificationListenersTask(this);
                int v2_80 = new Void[0];
                this.mGetNotificationListenersTask.execute(v2_80);
                v2_0 = 1;
                break;
            case 18:
                this.setNotificationAllowlistEditBox();
                v2_0 = 1;
                break;
            case 19:
                this.showSetDisableAccountManagementPrompt();
                v2_0 = 1;
                break;
            case 20:
                this.showDisableAccountTypeList();
                v2_0 = 1;
                break;
            case 21:
                this.getActivity().startActivity(new android.content.Intent(this.getActivity(), com.afwsamples.testdpc.AddAccountActivity));
                v2_0 = 1;
                break;
            case 22:
                this.chooseAccount();
                v2_0 = 1;
                break;
            case 23:
                this.showSetupManagement();
                v2_0 = 1;
                break;
            case 24:
                this.showCreateAndManageUserPrompt();
                v2_0 = 1;
                break;
            case 25:
                this.showRemoveUserPrompt();
                v2_0 = 1;
                break;
            case 26:
                this.showSwitchUserPrompt();
                v2_0 = 1;
                break;
            case 27:
                this.showStartUserInBackgroundPrompt();
                v2_0 = 1;
                break;
            case 28:
                this.showStopUserPrompt();
                v2_0 = 1;
                break;
            case 29:
                this.logoutUser();
                v2_0 = 1;
                break;
            case 30:
                this.showFragment(new com.afwsamples.testdpc.policy.SetUserSessionMessageFragment());
                v2_0 = 1;
                break;
            case 31:
                this.showFragment(new com.afwsamples.testdpc.policy.ManageAffiliationIdsFragment());
                v2_0 = 1;
                break;
            case 32:
                this.showBlockUninstallationByPackageNamePrompt();
                v2_0 = 1;
                break;
            case 33:
                this.showBlockUninstallationPrompt();
                v2_0 = 1;
                break;
            case 34:
                this.showEnableSystemAppsPrompt();
                v2_0 = 1;
                break;
            case 35:
                this.showEnableSystemAppByPackageNamePrompt();
                v2_0 = 1;
                break;
            case 36:
                this.showFragment(new com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment());
                v2_0 = 1;
                break;
            case 37:
                this.showInstallExistingPackagePrompt();
                v2_0 = 1;
                break;
            case 38:
                com.afwsamples.testdpc.common.Util.showFileViewer(this, 7693);
                v2_0 = 1;
                break;
            case 39:
                this.showUninstallPackagePrompt();
                v2_0 = 1;
                break;
            case 40:
                this.showHideAppsPrompt(0);
                v2_0 = 1;
                break;
            case 41:
                this.showHideAppsOnParentPrompt(0);
                v2_0 = 1;
                break;
            case 42:
                this.showHideAppsPrompt(1);
                v2_0 = 1;
                break;
            case 43:
                this.showHideAppsOnParentPrompt(1);
                v2_0 = 1;
                break;
            case 44:
                this.showSuspendAppsPrompt(0);
                v2_0 = 1;
                break;
            case 45:
                this.showSuspendAppsPrompt(1);
                v2_0 = 1;
                break;
            case 46:
                this.showClearAppDataPrompt();
                v2_0 = 1;
                break;
            case 47:
                this.showFragment(new com.afwsamples.testdpc.policy.ManageKeepUninstalledPackagesFragment());
                v2_0 = 1;
                break;
            case 48:
                this.showFragment(new com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment());
                v2_0 = 1;
                break;
            case 49:
                this.showSetMeteredDataPrompt();
                v2_0 = 1;
                break;
            case 50:
                this.showFragment(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment());
                v2_0 = 1;
                break;
            case 51:
                this.showFragment(new com.afwsamples.testdpc.profilepolicy.apprestrictions.AppRestrictionsManagingPackageFragment());
                v2_0 = 1;
                break;
            case 52:
                this.showSetPermissionPolicyDialog();
                v2_0 = 1;
                break;
            case 53:
                this.showFragment(new com.afwsamples.testdpc.profilepolicy.permission.ManageAppPermissionsFragment());
                v2_0 = 1;
                break;
            case 54:
                this.showConfigurePolicyAndManageCredentialsPrompt();
                v2_0 = 1;
                break;
            case 55:
                com.afwsamples.testdpc.common.Util.showFileViewer(this, 7689);
                v2_0 = 1;
                break;
            case 56:
                this.choosePrivateKeyForRemoval();
                v2_0 = 1;
                break;
            case 57:
                this.showPromptForGeneratedKeyAlias("generated-key-testdpc-1");
                v2_0 = 1;
                break;
            case 58:
                this.testKeyCanBeUsedForSigning();
                v2_0 = 1;
                break;
            case 59:
                com.afwsamples.testdpc.common.Util.showFileViewer(this, 7690);
                v2_0 = 1;
                break;
            case 60:
                this.showCaCertificateList();
                v2_0 = 1;
                break;
            case 61:
                this.mDevicePolicyManager.uninstallAllUserCaCerts(this.mAdminComponentName);
                int v2_58 = new Object[0];
                this.showToast(2131689537, v2_58);
                v2_0 = 1;
                break;
            case 62:
                this.showFragment(new com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment(), "ProfilePolicyManagementFragment");
                v2_0 = 1;
                break;
            case 63:
                this.showFragment(new com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$Container());
                v2_0 = 1;
                break;
            case 64:
                this.showFragment(new com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$Container());
                v2_0 = 1;
                break;
            case 65:
                this.showFragment(new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment());
                v2_0 = 1;
                break;
            case 66:
                this.showPendingSystemUpdate();
                v2_0 = 1;
                break;
            case 67:
                this.showFragment(new com.afwsamples.testdpc.policy.networking.AlwaysOnVpnFragment());
                v2_0 = 1;
                break;
            case 68:
                this.showSetGlobalHttpProxyDialog();
                v2_0 = 1;
                break;
            case 69:
                this.mDevicePolicyManager.setRecommendedGlobalProxy(this.mAdminComponentName, 0);
                v2_0 = 1;
                break;
            case 70:
                this.showFragment(new com.afwsamples.testdpc.policy.networking.PrivateDnsModeFragment());
                v2_0 = 1;
                break;
            case 71:
                this.showFragment(new com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment());
                v2_0 = 1;
                break;
            case 72:
                this.showFragment(new com.afwsamples.testdpc.policy.certificate.DelegatedCertInstallerFragment());
                v2_0 = 1;
                break;
            case 73:
                this.setStatusBarDisabled(1);
                v2_0 = 1;
                break;
            case 74:
                this.setStatusBarDisabled(0);
                v2_0 = 1;
                break;
            case 75:
                this.setKeyGuardDisabled(1);
                v2_0 = 1;
                break;
            case 76:
                this.setKeyGuardDisabled(0);
                v2_0 = 1;
                break;
            case 77:
                this.showManageLockTaskListPrompt(2131689898, new com.afwsamples.testdpc.policy.PolicyManagementFragment$1(this));
                v2_0 = 1;
                break;
            case 78:
                this.dispatchCaptureIntent("android.media.action.IMAGE_CAPTURE", 7691, this.mImageUri);
                v2_0 = 1;
                break;
            case 79:
                this.dispatchCaptureIntent("android.media.action.VIDEO_CAPTURE", 7692, this.mVideoUri);
                v2_0 = 1;
                break;
            case 80:
                this.showWifiConfigCreationDialog();
                v2_0 = 1;
                break;
            case 81:
                this.showEapTlsWifiConfigCreationDialog();
                v2_0 = 1;
                break;
            case 82:
                this.showFragment(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.createFragment(0));
                v2_0 = 1;
                break;
            case 83:
                this.showFragment(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.createFragment(1));
                v2_0 = 1;
                break;
            case 84:
                if (!((android.net.wifi.WifiManager) this.getContext().getSystemService(android.net.wifi.WifiManager)).removeNonCallerConfiguredNetworks()) {
                    this.showToast("No network is removed");
                } else {
                    this.showToast("One or more networks are removed");
                }
                v2_0 = 1;
                break;
            case 85:
                this.showWifiMacAddress();
                v2_0 = 1;
                break;
            case 86:
                this.showFragment(new com.afwsamples.testdpc.policy.UserRestrictionsDisplayFragment());
                v2_0 = 1;
                break;
            case 87:
                this.showFragment(new com.afwsamples.testdpc.policy.UserRestrictionsParentDisplayFragment());
                v2_0 = 1;
                break;
            case 88:
                this.reboot();
                v2_0 = 1;
                break;
            case 89:
                this.showFragment(com.afwsamples.testdpc.policy.SetSupportMessageFragment.newInstance(0));
                v2_0 = 1;
                break;
            case 90:
                this.showFragment(com.afwsamples.testdpc.policy.SetSupportMessageFragment.newInstance(1));
                v2_0 = 1;
                break;
            case 91:
                android.util.Log.d("PolicyManagement", "starting android.app.action.SET_NEW_PASSWORD");
                this.startActivity(new android.content.Intent("android.app.action.SET_NEW_PASSWORD"));
                v2_0 = 1;
                break;
            case 92:
                this.startActivity(new android.content.Intent("android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"));
                v2_0 = 1;
                break;
            case 93:
                this.startActivity(new android.content.Intent("android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD").putExtra("android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY", 1));
                v2_0 = 1;
                break;
            case 94:
                this.showFragment(new com.afwsamples.testdpc.comp.BindDeviceAdminFragment());
                v2_0 = 1;
                break;
            case 95:
                this.showFragment(new com.afwsamples.testdpc.CrossProfileAppsFragment());
                v2_0 = 1;
                break;
            case 96:
                this.showFragment(new com.afwsamples.testdpc.CrossProfileAppsAllowlistFragment());
                v2_0 = 1;
                break;
            case 97:
                this.showSetScreenBrightnessDialog();
                v2_0 = 1;
                break;
            case 98:
                this.showSetScreenOffTimeoutDialog();
                v2_0 = 1;
                break;
            case 99:
                this.showFragment(new com.afwsamples.testdpc.transferownership.PickTransferComponentFragment());
                v2_0 = 1;
                break;
            case 100:
                if (com.afwsamples.testdpc.common.Util.SDK_INT < 30) {
                    this.mDevicePolicyManager.setGlobalSetting(this.mAdminComponentName, "auto_time", "0");
                } else {
                    this.setAutoTimeEnabled(0);
                }
                this.showSetTimeDialog();
                v2_0 = 1;
                break;
            case 101:
                if (com.afwsamples.testdpc.common.Util.SDK_INT < 30) {
                    this.mDevicePolicyManager.setGlobalSetting(this.mAdminComponentName, "auto_time_zone", "0");
                } else {
                    this.setAutoTimeZoneEnabled(0);
                }
                this.showSetTimeZoneDialog();
                v2_0 = 1;
                break;
            case 102:
                this.showFragment(new com.afwsamples.testdpc.policy.OverrideApnFragment());
                v2_0 = 1;
                break;
            case 103:
                this.promptInstallUpdate();
                v2_0 = 1;
                break;
            case 104:
                this.showFragment(new com.afwsamples.testdpc.policy.CrossProfileCalendarFragment());
                v2_0 = 1;
                break;
            case 105:
                this.showSetProfileNameDialog();
                v2_0 = 1;
                break;
            case 106:
                this.factoryResetOrgOwnedDevice();
                v2_0 = 1;
                break;
            case 107:
                this.showFragment(new com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment());
                v2_0 = 1;
                break;
            case 108:
                this.showSetOrganizationIdDialog();
                v2_0 = 1;
                break;
        }
        return v2_0;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131690076);
        this.updateStayOnWhilePluggedInPreference();
        this.updateInstallNonMarketAppsPreference();
        this.loadPasswordCompliant();
        this.loadPasswordComplexity();
        this.loadRequiredPasswordComplexity();
        this.loadSeparateChallenge();
        this.reloadAffiliatedApis();
        return;
    }

    public void updateInstallNonMarketAppsPreference()
    {
        int v1 = 0;
        if (android.provider.Settings$Secure.getInt(this.getActivity().getContentResolver(), "install_non_market_apps", 0) != 0) {
            v1 = 1;
        }
        this.mInstallNonMarketAppsPreference.setChecked(v1);
        return;
    }
}
