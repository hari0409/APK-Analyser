package com.afwsamples.testdpc.comp;
 class DeviceOwnerService$DeviceOwnerServiceImpl extends com.afwsamples.testdpc.comp.IDeviceOwnerService$Stub {
    private final android.content.Context mContext;
    private final android.os.UserManager mUserManager;

    private DeviceOwnerService$DeviceOwnerServiceImpl(android.content.Context p2)
    {
        this.mContext = p2;
        this.mUserManager = ((android.os.UserManager) p2.getSystemService("user"));
        return;
    }

    synthetic DeviceOwnerService$DeviceOwnerServiceImpl(android.content.Context p1, com.afwsamples.testdpc.comp.DeviceOwnerService$1 p2)
    {
        this(p1);
        return;
    }

    public void notifyUserIsUnlocked(android.os.UserHandle p10)
    {
        long v0 = this.mUserManager.getSerialNumberForUser(p10);
        String v2_2 = this.mContext;
        String v4_2 = this.mContext;
        Object[] v6_1 = new Object[1];
        v6_1[0] = Long.valueOf(v0);
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(v2_2, 2131690075, v4_2.getString(2131690074, v6_1), 0);
        android.util.Log.d("DeviceOwnerService", new StringBuilder().append("notifyUserIsUnlocked() called for user with serial ").append(v0).toString());
        return;
    }
}
