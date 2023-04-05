package com.afwsamples.testdpc.common;
public class LaunchIntentUtil {
    private static final String EXTRA_ACCOUNT = "account";
    public static final String EXTRA_ACCOUNT_NAME = "account_name";
    public static final String EXTRA_AFFILIATION_ID = "affiliation_id";
    private static final String EXTRA_IS_SETUP_WIZARD = "is_setup_wizard";

    private LaunchIntentUtil()
    {
        return;
    }

    public static android.accounts.Account getAddedAccount(android.content.Intent p1)
    {
        int v0_0;
        if (p1 == null) {
            v0_0 = 0;
        } else {
            v0_0 = ((android.accounts.Account) p1.getParcelableExtra("account"));
        }
        return v0_0;
    }

    public static String getAddedAccountName(android.os.PersistableBundle p2)
    {
        String v0 = 0;
        if (p2 != null) {
            v0 = p2.getString("account_name", 0);
        }
        return v0;
    }

    public static boolean isCosuLaunch(android.os.PersistableBundle p1)
    {
        if ((p1 == null) || (p1.get("cosu-demo-config-location") == null)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public static boolean isSynchronousAuthLaunch(android.content.Intent p2)
    {
        if ((p2 == null) || ((p2.getExtras() == null) || (p2.getExtras().get("is_setup_wizard") == null))) {
            int v0_0 = 0;
        } else {
            v0_0 = 1;
        }
        return v0_0;
    }

    public static boolean isSynchronousAuthLaunch(android.os.PersistableBundle p1)
    {
        if ((p1 == null) || (p1.get("is_setup_wizard") == null)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public static void prepareDeviceAdminExtras(android.content.Intent p4, android.os.PersistableBundle p5)
    {
        if (com.afwsamples.testdpc.common.LaunchIntentUtil.isSynchronousAuthLaunch(p4)) {
            p5.putString("is_setup_wizard", Boolean.toString(p4.getBooleanExtra("is_setup_wizard", 0)));
            android.accounts.Account v0 = com.afwsamples.testdpc.common.LaunchIntentUtil.getAddedAccount(p4);
            if (v0 != null) {
                p5.putString("account_name", v0.name);
            }
        }
        return;
    }
}
