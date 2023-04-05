package com.afwsamples.testdpc.common;
public abstract class ProfileOrParentFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment {
    private static final String EXTRA_PARENT_PROFILE = "com.afwsamples.testdpc.extra.PARENT";
    private static final String LOG_TAG = "ProfileOrParentFragment";
    private static final String TAG_PARENT = ":parent";
    private boolean mDeviceOwner;
    private com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyGateway;
    private boolean mParentInstance;
    private boolean mProfileOwner;

    public ProfileOrParentFragment()
    {
        super("ProfileOrParentFragment");
        return;
    }

    protected final android.content.ComponentName getAdmin()
    {
        return this.mDevicePolicyGateway.getAdmin();
    }

    protected final android.app.admin.DevicePolicyManager getDpm()
    {
        return this.mDevicePolicyGateway.getDevicePolicyManager();
    }

    protected final com.afwsamples.testdpc.DevicePolicyManagerGateway getDpmGateway()
    {
        return this.mDevicePolicyGateway;
    }

    protected boolean isDeviceOwner()
    {
        return this.mDeviceOwner;
    }

    protected final boolean isManagedProfileInstance()
    {
        if ((!this.mProfileOwner) || (this.isParentProfileInstance())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    protected final boolean isParentProfileInstance()
    {
        return this.mParentInstance;
    }

    protected boolean isProfileOwner()
    {
        return this.mProfileOwner;
    }

    public void onCreate(android.os.Bundle p6)
    {
        android.os.Bundle v0 = this.getArguments();
        if (v0 != null) {
            this.mParentInstance = v0.getBoolean("com.afwsamples.testdpc.extra.PARENT", 0);
        }
        android.app.Activity v1 = this.getActivity();
        this.mDevicePolicyGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(v1);
        this.mProfileOwner = this.mDevicePolicyGateway.isProfileOwnerApp();
        this.mDeviceOwner = this.mDevicePolicyGateway.isDeviceOwnerApp();
        if (this.mParentInstance) {
            this.mDevicePolicyGateway = com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(v1);
        }
        super.onCreate(p6);
        if (this.mParentInstance) {
            androidx.preference.PreferenceManager v2 = this.getPreferenceManager();
            v2.setSharedPreferencesName(new StringBuilder().append(v2.getSharedPreferencesName()).append(":parent").toString());
        }
        return;
    }
}
