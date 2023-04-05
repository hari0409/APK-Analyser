package com.afwsamples.testdpc;
public final class DevicePolicyManagerGatewayImpl implements com.afwsamples.testdpc.DevicePolicyManagerGateway {
    private static final String TAG;
    private final android.content.ComponentName mAdminComponentName;
    private final android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private final android.location.LocationManager mLocationManager;
    private final android.content.pm.PackageManager mPackageManager;
    private final android.os.UserManager mUserManager;

    static DevicePolicyManagerGatewayImpl()
    {
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG = com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.getSimpleName();
        return;
    }

    public DevicePolicyManagerGatewayImpl(android.app.admin.DevicePolicyManager p4, android.os.UserManager p5, android.content.pm.PackageManager p6, android.location.LocationManager p7, android.content.ComponentName p8)
    {
        this.mDevicePolicyManager = p4;
        this.mUserManager = p5;
        this.mPackageManager = p6;
        this.mLocationManager = p7;
        this.mAdminComponentName = p8;
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("constructor: admin=").append(this.mAdminComponentName).append(", dpm=").append(p4).toString());
        return;
    }

    public DevicePolicyManagerGatewayImpl(android.content.Context p7)
    {
        this(((android.app.admin.DevicePolicyManager) p7.getSystemService(android.app.admin.DevicePolicyManager)), ((android.os.UserManager) p7.getSystemService(android.os.UserManager)), p7.getPackageManager(), ((android.location.LocationManager) p7.getSystemService(android.location.LocationManager)), com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p7));
        return;
    }

    public static com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl forParentProfile(android.content.Context p6)
    {
        android.content.ComponentName v5 = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(p6);
        return new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(((android.app.admin.DevicePolicyManager) p6.getSystemService(android.app.admin.DevicePolicyManager)).getParentProfileInstance(v5), ((android.os.UserManager) p6.getSystemService(android.os.UserManager)), p6.getPackageManager(), ((android.location.LocationManager) p6.getSystemService(android.location.LocationManager)), v5);
    }

    static final synthetic boolean lambda$getUserRestrictions$7$DevicePolicyManagerGatewayImpl(android.os.Bundle p1, String p2)
    {
        return p1.getBoolean(p2);
    }

    static final synthetic void lambda$setNetworkLogging$10$DevicePolicyManagerGatewayImpl(String p1, Void p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onSuccessLog(p1, v0_1);
        return;
    }

    static final synthetic void lambda$setNetworkLogging$11$DevicePolicyManagerGatewayImpl(String p1, Exception p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onErrorLog(p2, p1, v0_1);
        return;
    }

    static final synthetic void lambda$setPermittedInputMethods$12$DevicePolicyManagerGatewayImpl(String p1, Void p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onSuccessLog(p1, v0_1);
        return;
    }

    static final synthetic void lambda$setPermittedInputMethods$13$DevicePolicyManagerGatewayImpl(String p1, Exception p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onErrorLog(p2, p1, v0_1);
        return;
    }

    static final synthetic void lambda$setUsbDataSignalingEnabled$14$DevicePolicyManagerGatewayImpl(String p1, Void p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onSuccessLog(p1, v0_1);
        return;
    }

    static final synthetic void lambda$setUsbDataSignalingEnabled$15$DevicePolicyManagerGatewayImpl(String p1, Exception p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onErrorLog(p2, p1, v0_1);
        return;
    }

    static final synthetic void lambda$setUserRestriction$8$DevicePolicyManagerGatewayImpl(String p1, Void p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onSuccessLog(p1, v0_1);
        return;
    }

    static final synthetic void lambda$setUserRestriction$9$DevicePolicyManagerGatewayImpl(String p1, Exception p2)
    {
        Object[] v0_1 = new Object[0];
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.onErrorLog(p2, p1, v0_1);
        return;
    }

    private static varargs void onErrorLog(Exception p1, String p2, Object[] p3)
    {
        com.afwsamples.testdpc.common.Util.onErrorLog(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, p1, p2, p3);
        return;
    }

    private static varargs void onSuccessLog(String p1, Object[] p2)
    {
        com.afwsamples.testdpc.common.Util.onSuccessLog(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, p1, p2);
        return;
    }

    public void clearDeviceOwnerApp(java.util.function.Consumer p4, java.util.function.Consumer p5)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "clearDeviceOwnerApp()");
        try {
            this.mDevicePolicyManager.clearDeviceOwnerApp(this.mAdminComponentName.getPackageName());
            p4.accept(0);
        } catch (Exception v0) {
            p5.accept(v0);
        }
        return;
    }

    public void clearProfileOwner(java.util.function.Consumer p4, java.util.function.Consumer p5)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "clearProfileOwner()");
        try {
            this.mDevicePolicyManager.clearProfileOwner(this.mAdminComponentName);
            p4.accept(0);
        } catch (Exception v0) {
            p5.accept(v0);
        }
        return;
    }

    public void createAndManageUser(String p9, int p10, java.util.function.Consumer p11, java.util.function.Consumer p12)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("createAndManageUser(").append(p9).append(", ").append(p10).append(")").toString());
        try {
            android.os.UserHandle v7 = this.mDevicePolicyManager.createAndManageUser(this.mAdminComponentName, p9, this.mAdminComponentName, 0, p10);
        } catch (Exception v6) {
            p12.accept(v6);
            return;
        }
        if (v7 == null) {
            Object[] v3_2 = new Object[2];
            v3_2[0] = p9;
            v3_2[1] = Integer.valueOf(p10);
            p12.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$InvalidResultException("null", "createAndManageUser(%s, %d)", v3_2));
            return;
        } else {
            p11.accept(v7);
            return;
        }
    }

    public void enableSystemApp(android.content.Intent p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("enableSystemApp(").append(p6).append(")").toString());
        try {
            int v1 = this.mDevicePolicyManager.enableSystemApp(this.mAdminComponentName, p6);
            android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("returning ").append(v1).append(" activities").toString());
            p7.accept(Integer.valueOf(v1));
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void enableSystemApp(String p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("enableSystemApp(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.enableSystemApp(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public android.content.ComponentName getAdmin()
    {
        return this.mAdminComponentName;
    }

    public java.util.Set getAffiliationIds()
    {
        java.util.Set v0 = this.mDevicePolicyManager.getAffiliationIds(this.mAdminComponentName);
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getAffiliationIds(): ").append(v0).toString());
        return v0;
    }

    public android.os.Bundle getApplicationRestrictions(String p3)
    {
        return this.mDevicePolicyManager.getApplicationRestrictions(this.mAdminComponentName, p3);
    }

    public CharSequence getDeviceOwnerLockScreenInfo()
    {
        return this.mDevicePolicyManager.getDeviceOwnerLockScreenInfo();
    }

    public android.app.admin.DevicePolicyManager getDevicePolicyManager()
    {
        return this.mDevicePolicyManager;
    }

    public java.util.List getDisabledSystemApps()
    {
        java.util.ArrayList v2_1 = new java.util.ArrayList();
        java.util.List v0 = this.mPackageManager.getInstalledApplications(8192);
        java.util.Collections.sort(v0, new android.content.pm.ApplicationInfo$DisplayNameComparator(this.mPackageManager));
        java.util.List v3 = this.mPackageManager.getInstalledApplications(0);
        java.util.HashSet v4_1 = new java.util.HashSet();
        String v5_1 = v3.iterator();
        while (v5_1.hasNext()) {
            v4_1.add(((android.content.pm.ApplicationInfo) v5_1.next()).packageName);
        }
        String v5_3 = v0.iterator();
        while (v5_3.hasNext()) {
            android.content.pm.ApplicationInfo v1_1 = ((android.content.pm.ApplicationInfo) v5_3.next());
            if ((!v4_1.contains(v1_1.packageName)) && ((v1_1.flags & 1) != 0)) {
                v2_1.add(v1_1.packageName);
            }
        }
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getDisabledSystemApps(): returning ").append(v2_1.size()).append(" apps").toString());
        return v2_1;
    }

    public int getKeyguardDisabledFeatures()
    {
        int v0 = this.mDevicePolicyManager.getKeyguardDisabledFeatures(this.mAdminComponentName);
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getKeyguardDisabledFeatures(): ").append(com.afwsamples.testdpc.common.Util.keyguardDisabledFeaturesToString(v0)).append(" (").append(v0).append(")").toString());
        return v0;
    }

    public int getLockTaskFeatures()
    {
        int v0 = this.mDevicePolicyManager.getLockTaskFeatures(this.mAdminComponentName);
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getLockTaskFeatures(): ").append(com.afwsamples.testdpc.common.Util.lockTaskFeaturesToString(v0)).append(" (").append(v0).append(")").toString());
        return v0;
    }

    public String[] getLockTaskPackages()
    {
        return this.mDevicePolicyManager.getLockTaskPackages(this.mAdminComponentName);
    }

    public CharSequence getOrganizationName()
    {
        return this.mDevicePolicyManager.getOrganizationName(this.mAdminComponentName);
    }

    public int getPasswordQuality()
    {
        int v0 = this.mDevicePolicyManager.getPasswordQuality(this.mAdminComponentName);
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getPasswordQuality(): ").append(v0).toString());
        return v0;
    }

    public int getPermissionGrantState(String p5, String p6)
    {
        int v0 = this.mDevicePolicyManager.getPermissionGrantState(this.mAdminComponentName, p5, p6);
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getPermissionGrantState(").append(p5).append(", ").append(p6).append("): ").append(com.afwsamples.testdpc.common.Util.grantStateToString(v0)).toString());
        return v0;
    }

    public int getPersonalAppsSuspendedReasons()
    {
        return this.mDevicePolicyManager.getPersonalAppsSuspendedReasons(this.mAdminComponentName);
    }

    public int getRequiredPasswordComplexity()
    {
        int v0 = this.mDevicePolicyManager.getRequiredPasswordComplexity();
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("getRequiredPasswordComplexity(): ").append(v0).toString());
        return v0;
    }

    public android.os.Bundle getSelfRestrictions()
    {
        return this.mUserManager.getApplicationRestrictions(this.mAdminComponentName.getPackageName());
    }

    public long getSerialNumber(android.os.UserHandle p3)
    {
        return this.mUserManager.getSerialNumberForUser(p3);
    }

    public java.util.List getUserControlDisabledPackages()
    {
        return this.mDevicePolicyManager.getUserControlDisabledPackages(this.mAdminComponentName);
    }

    public android.os.UserHandle getUserHandle(long p2)
    {
        return this.mUserManager.getUserForSerialNumber(p2);
    }

    public java.util.Set getUserRestrictions()
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "getUserRestrictions()");
        android.os.Bundle v0 = this.mDevicePolicyManager.getUserRestrictions(this.mAdminComponentName);
        return ((java.util.Set) v0.keySet().stream().filter(new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$0(v0)).collect(java.util.stream.Collectors.toSet()));
    }

    public boolean hasUserRestriction(String p4)
    {
        if (android.util.Log.isLoggable(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, 2)) {
            android.util.Log.v(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("hasUserRestriction(").append(p4).append(")").toString());
        }
        return this.mUserManager.hasUserRestriction(p4);
    }

    public boolean isAffiliatedUser()
    {
        boolean v0 = this.mDevicePolicyManager.isAffiliatedUser();
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("isAffiliatedUser(): ").append(v0).toString());
        return v0;
    }

    public boolean isApplicationHidden(String p3)
    {
        return this.mDevicePolicyManager.isApplicationHidden(this.mAdminComponentName, p3);
    }

    public boolean isDeviceOwnerApp()
    {
        boolean v0_2;
        if (this.mAdminComponentName != null) {
            v0_2 = this.mDevicePolicyManager.isDeviceOwnerApp(this.mAdminComponentName.getPackageName());
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public boolean isHeadlessSystemUserMode()
    {
        com.afwsamples.testdpc.common.Util.requireAndroidS();
        return android.os.UserManager.isHeadlessSystemUserMode();
    }

    public boolean isLocationEnabled()
    {
        return this.mLocationManager.isLocationEnabled();
    }

    public boolean isLockTaskPermitted(String p2)
    {
        return this.mDevicePolicyManager.isLockTaskPermitted(p2);
    }

    public boolean isOrganizationOwnedDeviceWithManagedProfile()
    {
        return this.mDevicePolicyManager.isOrganizationOwnedDeviceWithManagedProfile();
    }

    public boolean isPackageSuspended(String p3)
    {
        return this.mDevicePolicyManager.isPackageSuspended(this.mAdminComponentName, p3);
    }

    public boolean isPreferentialNetworkServiceEnabled()
    {
        com.afwsamples.testdpc.common.Util.requireAndroidS();
        return this.mDevicePolicyManager.isPreferentialNetworkServiceEnabled();
    }

    public boolean isProfileOwnerApp()
    {
        boolean v0_2;
        if (this.mAdminComponentName != null) {
            v0_2 = this.mDevicePolicyManager.isProfileOwnerApp(this.mAdminComponentName.getPackageName());
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public boolean isUserForeground()
    {
        com.afwsamples.testdpc.common.Util.requireAndroidS();
        return this.mUserManager.isUserForeground();
    }

    public java.util.List listForegroundAffiliatedUsers()
    {
        com.afwsamples.testdpc.common.Util.requireAndroidS();
        return this.mDevicePolicyManager.listForegroundAffiliatedUsers();
    }

    public void lockNow(int p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("lockNow(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.lockNow(p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void lockNow(java.util.function.Consumer p4, java.util.function.Consumer p5)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "lockNow()");
        try {
            this.mDevicePolicyManager.lockNow();
            p4.accept(0);
        } catch (Exception v0) {
            p5.accept(v0);
        }
        return;
    }

    public void reboot(java.util.function.Consumer p4, java.util.function.Consumer p5)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "reboot()");
        try {
            this.mDevicePolicyManager.reboot(this.mAdminComponentName);
            p4.accept(0);
        } catch (Exception v0) {
            p5.accept(v0);
        }
        return;
    }

    public void removeActiveAdmin(java.util.function.Consumer p4, java.util.function.Consumer p5)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "removeActiveAdmin()");
        try {
            this.mDevicePolicyManager.removeActiveAdmin(this.mAdminComponentName);
            p4.accept(0);
        } catch (Exception v0) {
            p5.accept(v0);
        }
        return;
    }

    public void removeUser(android.os.UserHandle p8, java.util.function.Consumer p9, java.util.function.Consumer p10)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("removeUser(").append(p8).append(")").toString());
        try {
            if (!this.mDevicePolicyManager.removeUser(this.mAdminComponentName, p8)) {
                Object[] v5_1 = new Object[1];
                v5_1[0] = p8;
                p10.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$InvalidResultException("false", "removeUser(%s)", v5_1));
            } else {
                p9.accept(0);
            }
        } catch (Exception v0) {
            p10.accept(v0);
        }
        return;
    }

    public void requestBugreport(java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "requestBugreport(");
        try {
            if (!this.mDevicePolicyManager.requestBugreport(this.mAdminComponentName)) {
                Object[] v4_1 = new Object[0];
                p7.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedOperationException("requestBugreport()", v4_1));
            } else {
                p6.accept(0);
            }
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setAffiliationIds(java.util.Set p4)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setAffiliationIds(").append(p4).append(")").toString());
        this.mDevicePolicyManager.setAffiliationIds(this.mAdminComponentName, p4);
        return;
    }

    public void setApplicationHidden(String p5, boolean p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setApplicationHidden(").append(p5).append(", ").append(p6).append(")").toString());
        try {
            this.mDevicePolicyManager.setApplicationHidden(this.mAdminComponentName, p5, p6);
            p7.accept(0);
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void setApplicationRestrictions(String p5, android.os.Bundle p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setApplicationRestrictions(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setApplicationRestrictions(this.mAdminComponentName, p5, p6);
            p7.accept(0);
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void setDeviceOwnerLockScreenInfo(CharSequence p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setDeviceOwnerLockScreenInfo(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setDeviceOwnerLockScreenInfo(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setKeyguardDisabled(boolean p8, java.util.function.Consumer p9, java.util.function.Consumer p10)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("KeyguardDisabled(").append(p8).append(")").toString());
        try {
            if (!this.mDevicePolicyManager.setKeyguardDisabled(this.mAdminComponentName, p8)) {
                Object[] v4_1 = new Object[1];
                v4_1[0] = Boolean.valueOf(p8);
                p10.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$InvalidResultException("false", "setKeyguardDisabled(%b)", v4_1));
            } else {
                p9.accept(0);
            }
        } catch (Exception v0) {
            p10.accept(v0);
        }
        return;
    }

    public void setKeyguardDisabledFeatures(int p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setKeyguardDisabledFeatures(").append(com.afwsamples.testdpc.common.Util.keyguardDisabledFeaturesToString(p6)).append(")").toString());
        try {
            this.mDevicePolicyManager.setKeyguardDisabledFeatures(this.mAdminComponentName, p6);
            p7.accept(0);
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void setLocationEnabled(boolean p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setLocationEnabled(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setLocationEnabled(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setLockTaskFeatures(int p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setLockTaskFeatures(").append(com.afwsamples.testdpc.common.Util.lockTaskFeaturesToString(p6)).append(")").toString());
        try {
            this.mDevicePolicyManager.setLockTaskFeatures(this.mAdminComponentName, p6);
            p7.accept(0);
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void setLockTaskPackages(String[] p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setLockTaskPackages(").append(java.util.Arrays.toString(p5)).append(")").toString());
        try {
            this.mDevicePolicyManager.setLockTaskPackages(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setNetworkLogging(boolean p6)
    {
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$4 v2_3 = new Object[1];
        v2_3[0] = Boolean.valueOf(p6);
        String v0 = String.format("setNetworkLogging(%b)", v2_3);
        this.setNetworkLogging(p6, new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$3(v0), new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$4(v0));
        return;
    }

    public void setNetworkLogging(boolean p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setNetworkLogging(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setNetworkLoggingEnabled(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setOrganizationName(CharSequence p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setOrganizationName(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setOrganizationName(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setPackagesSuspended(String[] p6, boolean p7, java.util.function.Consumer p8, java.util.function.Consumer p9)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setPackagesSuspended(").append(java.util.Arrays.toString(p6)).append(": ").append(p7).append(")").toString());
        try {
            p8.accept(this.mDevicePolicyManager.setPackagesSuspended(this.mAdminComponentName, p6, p7));
        } catch (Exception v0) {
            p9.accept(v0);
        }
        return;
    }

    public void setPasswordQuality(int p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setPasswordQuality(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setPasswordQuality(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setPermissionGrantState(String p8, String p9, int p10, java.util.function.Consumer p11, java.util.function.Consumer p12)
    {
        String v1 = com.afwsamples.testdpc.common.Util.grantStateToString(p10);
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setPermissionGrantState(").append(p8).append(", ").append(p9).append("): ").append(v1).toString());
        try {
            if (!this.mDevicePolicyManager.setPermissionGrantState(this.mAdminComponentName, p8, p9, p10)) {
                Object[] v5_3 = new Object[3];
                v5_3[0] = p8;
                v5_3[1] = p9;
                v5_3[2] = v1;
                p12.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedOperationException("setPermissionGrantState(%s, %s, %s)", v5_3));
            } else {
                p11.accept(0);
            }
        } catch (Exception v0) {
            p12.accept(v0);
        }
        return;
    }

    public boolean setPermittedInputMethods(java.util.List p5)
    {
        String v0;
        if (p5 == null) {
            v0 = "";
        } else {
            v0 = String.join(",", p5);
        }
        String v1 = new StringBuilder().append("setPermittedInputMethods(").append(v0).append(")").toString();
        return this.setPermittedInputMethods(p5, new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$5(v1), new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$6(v1));
    }

    public boolean setPermittedInputMethods(java.util.List p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        try {
            boolean v1 = this.mDevicePolicyManager.setPermittedInputMethods(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return v1;
    }

    public void setPersonalAppsSuspended(boolean p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setPersonalAppsSuspended(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setPersonalAppsSuspended(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setPreferentialNetworkServiceEnabled(boolean p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setPreferentialNetworkServiceEnabled(").append(p5).append(")").toString());
        com.afwsamples.testdpc.common.Util.requireAndroidS();
        try {
            this.mDevicePolicyManager.setPreferentialNetworkServiceEnabled(p5);
            p6.accept(0);
        } catch (Exception v0) {
            android.util.Log.wtf(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "Error calling setPreferentialNetworkServiceEnabled()", v0);
            p7.accept(v0);
        }
        return;
    }

    public void setRequiredPasswordComplexity(int p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setRequiredPasswordComplexity(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setRequiredPasswordComplexity(p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setUsbDataSignalingEnabled(boolean p6)
    {
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$8 v2_3 = new Object[1];
        v2_3[0] = Boolean.valueOf(p6);
        String v0 = String.format("setUsbDataSignalingEnabled(%b)", v2_3);
        this.setUsbDataSignalingEnabled(p6, new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$7(v0), new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$8(v0));
        return;
    }

    public void setUsbDataSignalingEnabled(boolean p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setUsbDataSignalingEnabled(").append(p5).append(")").toString());
        com.afwsamples.testdpc.common.Util.requireAndroidS();
        try {
            this.mDevicePolicyManager.setUsbDataSignalingEnabled(p5);
            p6.accept(0);
        } catch (Exception v0) {
            android.util.Log.wtf(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, "Error calling setUsbDataSignalingEnabled()", v0);
            p7.accept(v0);
        }
        return;
    }

    public void setUserControlDisabledPackages(java.util.List p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setUserControlDisabledPackages(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setUserControlDisabledPackages(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setUserIcon(android.graphics.Bitmap p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setUserIcon(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.setUserIcon(this.mAdminComponentName, p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }

    public void setUserRestriction(String p6, boolean p7)
    {
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$2 v2_3 = new Object[2];
        v2_3[0] = p6;
        v2_3[1] = Boolean.valueOf(p7);
        String v0 = String.format("setUserRestriction(%s, %b)", v2_3);
        this.setUserRestriction(p6, p7, new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$1(v0), new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl$$Lambda$2(v0));
        return;
    }

    public void setUserRestriction(String p5, boolean p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("setUserRestriction(").append(p5).append(", ").append(p6).append(")").toString());
        try {
            if (!p6) {
                this.mDevicePolicyManager.clearUserRestriction(this.mAdminComponentName, p5);
                p7.accept(0);
            } else {
                this.mDevicePolicyManager.addUserRestriction(this.mAdminComponentName, p5);
            }
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void startUserInBackground(android.os.UserHandle p7, java.util.function.Consumer p8, java.util.function.Consumer p9)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("startUserInBackground(").append(p7).append(")").toString());
        try {
            int v1 = this.mDevicePolicyManager.startUserInBackground(this.mAdminComponentName, p7);
        } catch (Exception v0) {
            p9.accept(v0);
            return;
        }
        if (v1 != 0) {
            Object[] v4_1 = new Object[1];
            v4_1[0] = p7;
            p9.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedUserOperationException(v1, "startUserInBackground(%s)", v4_1));
            return;
        } else {
            p8.accept(Integer.valueOf(v1));
            return;
        }
    }

    public void stopUser(android.os.UserHandle p7, java.util.function.Consumer p8, java.util.function.Consumer p9)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("stopUser(").append(p7).append(")").toString());
        try {
            int v1 = this.mDevicePolicyManager.stopUser(this.mAdminComponentName, p7);
        } catch (Exception v0) {
            p9.accept(v0);
            return;
        }
        if (v1 != 0) {
            Object[] v4_1 = new Object[1];
            v4_1[0] = p7;
            p9.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedUserOperationException(v1, "stopUser(%s)", v4_1));
            return;
        } else {
            p8.accept(Integer.valueOf(v1));
            return;
        }
    }

    public void switchUser(android.os.UserHandle p7, java.util.function.Consumer p8, java.util.function.Consumer p9)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("switchUser(").append(p7).append(")").toString());
        try {
            if (!this.mDevicePolicyManager.switchUser(this.mAdminComponentName, p7)) {
                Object[] v4_1 = new Object[1];
                v4_1[0] = p7;
                p9.accept(new com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedOperationException("switchUser(%s)", v4_1));
            } else {
                p8.accept(0);
            }
        } catch (Exception v0) {
            p9.accept(v0);
        }
        return;
    }

    public String toString()
    {
        return new StringBuilder().append("DevicePolicyManagerGatewayImpl[").append(this.mAdminComponentName).append("]").toString();
    }

    public void transferOwnership(android.content.ComponentName p5, android.os.PersistableBundle p6, java.util.function.Consumer p7, java.util.function.Consumer p8)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("transferOwnership(").append(p5).append(", ").append(p6).append(")").toString());
        try {
            this.mDevicePolicyManager.transferOwnership(this.mAdminComponentName, p5, p6);
            p7.accept(0);
        } catch (Exception v0) {
            p8.accept(v0);
        }
        return;
    }

    public void wipeData(int p5, java.util.function.Consumer p6, java.util.function.Consumer p7)
    {
        android.util.Log.d(com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.TAG, new StringBuilder().append("wipeData(").append(p5).append(")").toString());
        try {
            this.mDevicePolicyManager.wipeData(p5);
            p6.accept(0);
        } catch (Exception v0) {
            p7.accept(v0);
        }
        return;
    }
}
