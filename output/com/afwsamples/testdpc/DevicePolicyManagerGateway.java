package com.afwsamples.testdpc;
public interface DevicePolicyManagerGateway {

    public abstract void clearDeviceOwnerApp();

    public abstract void clearProfileOwner();

    public abstract void createAndManageUser();

    public abstract void enableSystemApp();

    public abstract void enableSystemApp();

    public abstract android.content.ComponentName getAdmin();

    public abstract java.util.Set getAffiliationIds();

    public abstract android.os.Bundle getApplicationRestrictions();

    public abstract CharSequence getDeviceOwnerLockScreenInfo();

    public abstract android.app.admin.DevicePolicyManager getDevicePolicyManager();

    public abstract java.util.List getDisabledSystemApps();

    public abstract int getKeyguardDisabledFeatures();

    public abstract int getLockTaskFeatures();

    public abstract String[] getLockTaskPackages();

    public abstract CharSequence getOrganizationName();

    public abstract int getPasswordQuality();

    public abstract int getPermissionGrantState();

    public abstract int getPersonalAppsSuspendedReasons();

    public abstract int getRequiredPasswordComplexity();

    public abstract android.os.Bundle getSelfRestrictions();

    public abstract long getSerialNumber();

    public abstract java.util.List getUserControlDisabledPackages();

    public abstract android.os.UserHandle getUserHandle();

    public abstract java.util.Set getUserRestrictions();

    public abstract boolean hasUserRestriction();

    public abstract boolean isAffiliatedUser();

    public abstract boolean isApplicationHidden();

    public abstract boolean isDeviceOwnerApp();

    public abstract boolean isHeadlessSystemUserMode();

    public abstract boolean isLocationEnabled();

    public abstract boolean isLockTaskPermitted();

    public abstract boolean isOrganizationOwnedDeviceWithManagedProfile();

    public abstract boolean isPackageSuspended();

    public abstract boolean isPreferentialNetworkServiceEnabled();

    public abstract boolean isProfileOwnerApp();

    public abstract boolean isUserForeground();

    public abstract java.util.List listForegroundAffiliatedUsers();

    public abstract void lockNow();

    public abstract void lockNow();

    public abstract void reboot();

    public abstract void removeActiveAdmin();

    public abstract void removeUser();

    public abstract void requestBugreport();

    public abstract void setAffiliationIds();

    public abstract void setApplicationHidden();

    public abstract void setApplicationRestrictions();

    public abstract void setDeviceOwnerLockScreenInfo();

    public abstract void setKeyguardDisabled();

    public abstract void setKeyguardDisabledFeatures();

    public abstract void setLocationEnabled();

    public abstract void setLockTaskFeatures();

    public abstract void setLockTaskPackages();

    public abstract void setNetworkLogging();

    public abstract void setNetworkLogging();

    public abstract void setOrganizationName();

    public abstract void setPackagesSuspended();

    public abstract void setPasswordQuality();

    public abstract void setPermissionGrantState();

    public abstract boolean setPermittedInputMethods();

    public abstract boolean setPermittedInputMethods();

    public abstract void setPersonalAppsSuspended();

    public abstract void setPreferentialNetworkServiceEnabled();

    public abstract void setRequiredPasswordComplexity();

    public abstract void setUsbDataSignalingEnabled();

    public abstract void setUsbDataSignalingEnabled();

    public abstract void setUserControlDisabledPackages();

    public abstract void setUserIcon();

    public abstract void setUserRestriction();

    public abstract void setUserRestriction();

    public abstract void startUserInBackground();

    public abstract void stopUser();

    public abstract void switchUser();

    public abstract void transferOwnership();

    public abstract void wipeData();
}
