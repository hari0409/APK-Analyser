package com.afwsamples.testdpc.policy;
public class UserRestriction {
    public static final com.afwsamples.testdpc.policy.UserRestriction[] ALL_USER_RESTRICTIONS;
    public static final String[] DEVICE_OWNER_ONLY_RESTRICTIONS;
    public static final String[] MANAGED_PROFILE_ONLY_RESTRICTIONS;
    public static String[] MNC_PLUS_RESTRICTIONS;
    public static String[] NON_MANAGED_PROFILE_RESTRICTIONS;
    public static String[] NYC_PLUS_RESTRICTIONS;
    public static String[] OC_PLUS_RESTRICTIONS;
    public static String[] PIC_PLUS_RESTRICTIONS;
    public static final String[] PRIMARY_USER_ONLY_RESTRICTIONS;
    public static final com.afwsamples.testdpc.policy.UserRestriction[] PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS;
    public static final String[] PROFILE_OWNER_ORG_OWNED_RESTRICTIONS;
    public static String[] QT_PLUS_RESTRICTIONS;
    public static String[] SC_PLUS_RESTRICTIONS;
    public String key;
    public int titleResId;

    static UserRestriction()
    {
        String[] v0_14 = new com.afwsamples.testdpc.policy.UserRestriction[54];
        v0_14[0] = new com.afwsamples.testdpc.policy.UserRestriction("allow_parent_profile_app_linking", 2131689547);
        v0_14[1] = new com.afwsamples.testdpc.policy.UserRestriction("no_add_managed_profile", 2131689712);
        v0_14[2] = new com.afwsamples.testdpc.policy.UserRestriction("no_add_user", 2131689713);
        v0_14[3] = new com.afwsamples.testdpc.policy.UserRestriction("no_adjust_volume", 2131689714);
        v0_14[4] = new com.afwsamples.testdpc.policy.UserRestriction("no_control_apps", 2131689717);
        v0_14[5] = new com.afwsamples.testdpc.policy.UserRestriction("no_bluetooth", 2131689719);
        v0_14[6] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_bluetooth", 2131689722);
        v0_14[7] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_cell_broadcasts", 2131689724);
        v0_14[8] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_credentials", 2131689725);
        v0_14[9] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_mobile_networks", 2131689728);
        v0_14[10] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_tethering", 2131689731);
        v0_14[11] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_vpn", 2131689732);
        v0_14[12] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_wifi", 2131689733);
        v0_14[13] = new com.afwsamples.testdpc.policy.UserRestriction("no_create_windows", 2131689736);
        v0_14[14] = new com.afwsamples.testdpc.policy.UserRestriction("no_system_error_dialogs", 2131689760);
        v0_14[15] = new com.afwsamples.testdpc.policy.UserRestriction("no_cross_profile_copy_paste", 2131689737);
        v0_14[16] = new com.afwsamples.testdpc.policy.UserRestriction("no_data_roaming", 2131689738);
        v0_14[17] = new com.afwsamples.testdpc.policy.UserRestriction("no_debugging_features", 2131689739);
        v0_14[18] = new com.afwsamples.testdpc.policy.UserRestriction("no_factory_reset", 2131689740);
        v0_14[19] = new com.afwsamples.testdpc.policy.UserRestriction("no_fun", 2131689741);
        v0_14[20] = new com.afwsamples.testdpc.policy.UserRestriction("no_install_apps", 2131689742);
        v0_14[21] = new com.afwsamples.testdpc.policy.UserRestriction("no_install_unknown_sources", 2131689743);
        v0_14[22] = new com.afwsamples.testdpc.policy.UserRestriction("no_install_unknown_sources_globally", 2131689744);
        v0_14[23] = new com.afwsamples.testdpc.policy.UserRestriction("no_modify_accounts", 2131689746);
        v0_14[24] = new com.afwsamples.testdpc.policy.UserRestriction("no_physical_media", 2131689747);
        v0_14[25] = new com.afwsamples.testdpc.policy.UserRestriction("no_network_reset", 2131689748);
        v0_14[26] = new com.afwsamples.testdpc.policy.UserRestriction("no_outgoing_beam", 2131689749);
        v0_14[27] = new com.afwsamples.testdpc.policy.UserRestriction("no_outgoing_calls", 2131689750);
        v0_14[28] = new com.afwsamples.testdpc.policy.UserRestriction("no_remove_managed_profile", 2131689752);
        v0_14[29] = new com.afwsamples.testdpc.policy.UserRestriction("no_remove_user", 2131689753);
        v0_14[30] = new com.afwsamples.testdpc.policy.UserRestriction("no_safe_boot", 2131689754);
        v0_14[31] = new com.afwsamples.testdpc.policy.UserRestriction("no_set_user_icon", 2131689755);
        v0_14[32] = new com.afwsamples.testdpc.policy.UserRestriction("no_set_wallpaper", 2131689756);
        v0_14[33] = new com.afwsamples.testdpc.policy.UserRestriction("no_share_location", 2131689758);
        v0_14[34] = new com.afwsamples.testdpc.policy.UserRestriction("no_sms", 2131689759);
        v0_14[35] = new com.afwsamples.testdpc.policy.UserRestriction("no_uninstall_apps", 2131689762);
        v0_14[36] = new com.afwsamples.testdpc.policy.UserRestriction("no_unmute_microphone", 2131689763);
        v0_14[37] = new com.afwsamples.testdpc.policy.UserRestriction("no_usb_file_transfer", 2131689764);
        v0_14[38] = new com.afwsamples.testdpc.policy.UserRestriction("ensure_verify_apps", 2131689796);
        v0_14[39] = new com.afwsamples.testdpc.policy.UserRestriction("no_autofill", 2131689718);
        v0_14[40] = new com.afwsamples.testdpc.policy.UserRestriction("no_bluetooth_sharing", 2131689720);
        v0_14[41] = new com.afwsamples.testdpc.policy.UserRestriction("no_unified_password", 2131689761);
        v0_14[42] = new com.afwsamples.testdpc.policy.UserRestriction("no_user_switch", 2131689765);
        v0_14[43] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_location", 2131689727);
        v0_14[44] = new com.afwsamples.testdpc.policy.UserRestriction("no_airplane_mode", 2131689715);
        v0_14[45] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_brightness", 2131689723);
        v0_14[46] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_date_time", 2131689726);
        v0_14[47] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_screen_timeout", 2131689730);
        v0_14[48] = new com.afwsamples.testdpc.policy.UserRestriction("no_ambient_display", 2131689716);
        v0_14[49] = new com.afwsamples.testdpc.policy.UserRestriction("no_sharing_into_profile", 2131689757);
        v0_14[50] = new com.afwsamples.testdpc.policy.UserRestriction("no_printing", 2131689751);
        v0_14[51] = new com.afwsamples.testdpc.policy.UserRestriction("disallow_config_private_dns", 2131689729);
        v0_14[52] = new com.afwsamples.testdpc.policy.UserRestriction("disallow_microphone_toggle", 2131689745);
        v0_14[53] = new com.afwsamples.testdpc.policy.UserRestriction("disallow_camera_toggle", 2131689721);
        com.afwsamples.testdpc.policy.UserRestriction.ALL_USER_RESTRICTIONS = v0_14;
        String[] v0_1 = new com.afwsamples.testdpc.policy.UserRestriction[22];
        v0_1[0] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_date_time", 2131689726);
        v0_1[1] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_tethering", 2131689731);
        v0_1[2] = new com.afwsamples.testdpc.policy.UserRestriction("no_data_roaming", 2131689738);
        v0_1[3] = new com.afwsamples.testdpc.policy.UserRestriction("no_debugging_features", 2131689739);
        v0_1[4] = new com.afwsamples.testdpc.policy.UserRestriction("no_bluetooth", 2131689719);
        v0_1[5] = new com.afwsamples.testdpc.policy.UserRestriction("no_bluetooth_sharing", 2131689720);
        v0_1[6] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_bluetooth", 2131689722);
        v0_1[7] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_cell_broadcasts", 2131689724);
        v0_1[8] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_location", 2131689727);
        v0_1[9] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_mobile_networks", 2131689728);
        v0_1[10] = new com.afwsamples.testdpc.policy.UserRestriction("disallow_config_private_dns", 2131689729);
        v0_1[11] = new com.afwsamples.testdpc.policy.UserRestriction("no_config_wifi", 2131689733);
        v0_1[12] = new com.afwsamples.testdpc.policy.UserRestriction("no_content_capture", 2131689734);
        v0_1[13] = new com.afwsamples.testdpc.policy.UserRestriction("no_content_suggestions", 2131689735);
        v0_1[14] = new com.afwsamples.testdpc.policy.UserRestriction("no_safe_boot", 2131689754);
        v0_1[15] = new com.afwsamples.testdpc.policy.UserRestriction("no_share_location", 2131689758);
        v0_1[16] = new com.afwsamples.testdpc.policy.UserRestriction("no_sms", 2131689759);
        v0_1[17] = new com.afwsamples.testdpc.policy.UserRestriction("no_usb_file_transfer", 2131689764);
        v0_1[18] = new com.afwsamples.testdpc.policy.UserRestriction("no_airplane_mode", 2131689715);
        v0_1[19] = new com.afwsamples.testdpc.policy.UserRestriction("no_physical_media", 2131689747);
        v0_1[20] = new com.afwsamples.testdpc.policy.UserRestriction("no_outgoing_calls", 2131689750);
        v0_1[21] = new com.afwsamples.testdpc.policy.UserRestriction("no_unmute_microphone", 2131689763);
        com.afwsamples.testdpc.policy.UserRestriction.PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS = v0_1;
        String[] v0_3 = new String[24];
        v0_3[0] = "no_add_managed_profile";
        v0_3[1] = "no_add_user";
        v0_3[2] = "no_adjust_volume";
        v0_3[3] = "no_bluetooth";
        v0_3[4] = "no_config_bluetooth";
        v0_3[5] = "no_config_cell_broadcasts";
        v0_3[6] = "no_config_mobile_networks";
        v0_3[7] = "no_config_tethering";
        v0_3[8] = "no_config_wifi";
        v0_3[9] = "no_create_windows";
        v0_3[10] = "no_system_error_dialogs";
        v0_3[11] = "no_data_roaming";
        v0_3[12] = "no_factory_reset";
        v0_3[13] = "no_fun";
        v0_3[14] = "no_physical_media";
        v0_3[15] = "no_network_reset";
        v0_3[16] = "no_outgoing_calls";
        v0_3[17] = "no_remove_managed_profile";
        v0_3[18] = "no_safe_boot";
        v0_3[19] = "no_sms";
        v0_3[20] = "no_unmute_microphone";
        v0_3[21] = "no_usb_file_transfer";
        v0_3[22] = "no_airplane_mode";
        v0_3[23] = "disallow_config_private_dns";
        com.afwsamples.testdpc.policy.UserRestriction.PRIMARY_USER_ONLY_RESTRICTIONS = v0_3;
        String[] v0_5 = new String[3];
        v0_5[0] = "no_user_switch";
        v0_5[1] = "disallow_microphone_toggle";
        v0_5[2] = "disallow_camera_toggle";
        com.afwsamples.testdpc.policy.UserRestriction.DEVICE_OWNER_ONLY_RESTRICTIONS = v0_5;
        String[] v0_6 = new String[4];
        v0_6[0] = "no_config_date_time";
        v0_6[1] = "no_config_tethering";
        v0_6[2] = "no_data_roaming";
        v0_6[3] = "no_debugging_features";
        com.afwsamples.testdpc.policy.UserRestriction.PROFILE_OWNER_ORG_OWNED_RESTRICTIONS = v0_6;
        String[] v0_7 = new String[4];
        v0_7[0] = "allow_parent_profile_app_linking";
        v0_7[1] = "no_cross_profile_copy_paste";
        v0_7[2] = "no_unified_password";
        v0_7[3] = "no_sharing_into_profile";
        com.afwsamples.testdpc.policy.UserRestriction.MANAGED_PROFILE_ONLY_RESTRICTIONS = v0_7;
        String[] v0_9 = new String[7];
        v0_9[0] = "no_remove_user";
        v0_9[1] = "no_set_wallpaper";
        v0_9[2] = "no_config_date_time";
        v0_9[3] = "no_airplane_mode";
        v0_9[4] = "no_config_screen_timeout";
        v0_9[5] = "no_config_brightness";
        v0_9[6] = "no_ambient_display";
        com.afwsamples.testdpc.policy.UserRestriction.NON_MANAGED_PROFILE_RESTRICTIONS = v0_9;
        String[] v0_10 = new String[2];
        v0_10[0] = "allow_parent_profile_app_linking";
        v0_10[1] = "no_safe_boot";
        com.afwsamples.testdpc.policy.UserRestriction.MNC_PLUS_RESTRICTIONS = v0_10;
        String[] v0_11 = new String[3];
        v0_11[0] = "no_data_roaming";
        v0_11[1] = "no_set_user_icon";
        v0_11[2] = "no_set_wallpaper";
        com.afwsamples.testdpc.policy.UserRestriction.NYC_PLUS_RESTRICTIONS = v0_11;
        String[] v0_13 = new String[5];
        v0_13[0] = "no_add_managed_profile";
        v0_13[1] = "no_bluetooth";
        v0_13[2] = "no_remove_managed_profile";
        v0_13[3] = "no_autofill";
        v0_13[4] = "no_bluetooth_sharing";
        com.afwsamples.testdpc.policy.UserRestriction.OC_PLUS_RESTRICTIONS = v0_13;
        String[] v0_16 = new String[11];
        v0_16[0] = "no_unified_password";
        v0_16[1] = "no_system_error_dialogs";
        v0_16[2] = "no_user_switch";
        v0_16[3] = "no_config_location";
        v0_16[4] = "no_airplane_mode";
        v0_16[5] = "no_config_date_time";
        v0_16[6] = "no_config_brightness";
        v0_16[7] = "no_config_screen_timeout";
        v0_16[8] = "no_ambient_display";
        v0_16[9] = "no_sharing_into_profile";
        v0_16[10] = "no_printing";
        com.afwsamples.testdpc.policy.UserRestriction.PIC_PLUS_RESTRICTIONS = v0_16;
        String[] v0_17 = new String[2];
        v0_17[0] = "no_install_unknown_sources_globally";
        v0_17[1] = "disallow_config_private_dns";
        com.afwsamples.testdpc.policy.UserRestriction.QT_PLUS_RESTRICTIONS = v0_17;
        String[] v0_18 = new String[2];
        v0_18[0] = "disallow_microphone_toggle";
        v0_18[1] = "disallow_camera_toggle";
        com.afwsamples.testdpc.policy.UserRestriction.SC_PLUS_RESTRICTIONS = v0_18;
        return;
    }

    public UserRestriction(String p1, int p2)
    {
        this.key = p1;
        this.titleResId = p2;
        return;
    }
}
