package com.afwsamples.testdpc.comp;
public class BindDeviceAdminServiceHelper {
    private static final String TAG = "BindDeviceAdminService";
    private final android.content.Context mContext;
    private final android.app.admin.DevicePolicyManager mDpm;
    private final android.content.Intent mServiceIntent;
    private final com.afwsamples.testdpc.comp.ServiceInterfaceConverter mServiceInterfaceConverter;
    private final android.os.UserHandle mTargetUserHandle;

    public BindDeviceAdminServiceHelper(android.content.Context p2, Class p3, com.afwsamples.testdpc.comp.ServiceInterfaceConverter p4, android.os.UserHandle p5)
    {
        this.mContext = p2;
        this.mDpm = ((android.app.admin.DevicePolicyManager) p2.getSystemService("device_policy"));
        this.mServiceInterfaceConverter = p4;
        this.mServiceIntent = new android.content.Intent(p2, p3);
        this.mTargetUserHandle = p5;
        return;
    }

    static synthetic com.afwsamples.testdpc.comp.ServiceInterfaceConverter access$000(com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper p1)
    {
        return p1.mServiceInterfaceConverter;
    }

    static synthetic android.content.Context access$100(com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper p1)
    {
        return p1.mContext;
    }

    public boolean crossUserCall(com.afwsamples.testdpc.comp.OnServiceConnectedListener p8)
    {
        try {
            int v0_0 = this.mDpm.bindDeviceAdminServiceAsUser(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.mContext), this.mServiceIntent, new com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper$1(this, p8), 1, this.mTargetUserHandle);
        } catch (IllegalArgumentException v6) {
            android.util.Log.e("BindDeviceAdminService", new StringBuilder().append("Cannot bind to user ").append(this.mTargetUserHandle).toString(), v6);
            v0_0 = 0;
        } catch (IllegalArgumentException v6) {
        }
        return v0_0;
    }
}
