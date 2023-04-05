package com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider;
public class ManageCrossProfileWidgetProviderUtil {
    private static com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil sInstance;
    private android.appwidget.AppWidgetManager mAppWidgetManager;
    private android.content.Context mContext;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;

    private ManageCrossProfileWidgetProviderUtil(android.content.Context p3)
    {
        this.mContext = p3.getApplicationContext();
        this.mAppWidgetManager = android.appwidget.AppWidgetManager.getInstance(this.mContext);
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.mContext.getSystemService("device_policy"));
        return;
    }

    public static declared_synchronized com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil getInstance(android.content.Context p2)
    {
        try {
            if (com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil.sInstance == null) {
                com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil.sInstance = new com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil(p2);
            }
        } catch (com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil v0_3) {
            throw v0_3;
        }
        return com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil.sInstance;
    }

    public java.util.List getDisabledCrossProfileWidgetProvidersList()
    {
        java.util.HashSet v4_1 = new java.util.HashSet(this.mDevicePolicyManager.getCrossProfileWidgetProviders(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.mContext)));
        java.util.HashSet v3_1 = new java.util.HashSet();
        java.util.ArrayList v5_2 = this.mAppWidgetManager.getInstalledProviders().iterator();
        while (v5_2.hasNext()) {
            String v2 = ((android.appwidget.AppWidgetProviderInfo) v5_2.next()).provider.getPackageName();
            if (!v4_1.contains(v2)) {
                v3_1.add(v2);
            }
        }
        return new java.util.ArrayList(v3_1);
    }
}
