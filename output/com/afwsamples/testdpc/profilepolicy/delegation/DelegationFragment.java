package com.afwsamples.testdpc.profilepolicy.delegation;
public class DelegationFragment extends com.afwsamples.testdpc.common.ManageAppFragment {
    private static final String TAG;
    java.util.List mDelegations;
    private android.app.admin.DevicePolicyManager mDpm;
    private boolean mIsDeviceOrProfileOwner;
    private String mPackageName;

    static DelegationFragment()
    {
        com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.TAG = com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.getSimpleName();
        return;
    }

    public DelegationFragment()
    {
        return;
    }

    static synthetic String access$000()
    {
        return com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.TAG;
    }

    private boolean isDelegatedApp(String p3)
    {
        int v0_3;
        if (this.mDpm.getDelegatedScopes(0, p3).isEmpty()) {
            v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private void readScopesFromDpm(String p6)
    {
        java.util.Iterator v2_4;
        boolean v3_0 = this.mDpm;
        if (!this.mIsDeviceOrProfileOwner) {
            v2_4 = 0;
        } else {
            v2_4 = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        }
        java.util.List v1 = v3_0.getDelegatedScopes(v2_4, p6);
        android.util.Log.i(com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.TAG, new StringBuilder().append(p6).append(" | ").append(java.util.Arrays.toString(v1.toArray())).toString());
        java.util.Iterator v2_3 = this.mDelegations.iterator();
        while (v2_3.hasNext()) {
            com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope v0_1 = ((com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope) v2_3.next());
            v0_1.granted = v1.contains(v0_1.scope);
        }
        return;
    }

    private java.util.List readScopesFromUi()
    {
        java.util.ArrayList v2_1 = new java.util.ArrayList();
        int v1 = 0;
        while (v1 < this.mDelegations.size()) {
            ((com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope) this.mDelegations.get(v1)).granted = ((android.widget.CheckBox) this.mAppListView.getChildAt(v1).findViewById(2131296362)).isChecked();
            if (((com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope) this.mDelegations.get(v1)).granted) {
                v2_1.add(((com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope) this.mDelegations.get(v1)).scope);
            }
            v1++;
        }
        return v2_1;
    }

    protected void addNewRow()
    {
        return;
    }

    protected android.widget.BaseAdapter createListAdapter()
    {
        return new com.afwsamples.testdpc.profilepolicy.delegation.DelegationScopesArrayAdapter(this.getActivity(), 0, this.mDelegations);
    }

    protected boolean filterApp(android.content.pm.ApplicationInfo p3)
    {
        boolean v0_2;
        if (!this.mIsDeviceOrProfileOwner) {
            v0_2 = p3.packageName.equals(this.mPackageName);
        } else {
            v0_2 = super.filterApp(p3);
        }
        return v0_2;
    }

    protected void loadDefault()
    {
        return;
    }

    public void onCreate(android.os.Bundle p9)
    {
        int v5_0 = 0;
        super.onCreate(p9);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mPackageName = this.getActivity().getPackageName();
        if (!this.isDelegatedApp(this.mPackageName)) {
            java.util.List v4_8;
            android.content.ComponentName v3 = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
            boolean v0 = this.mDpm.isDeviceOwnerApp(this.mPackageName);
            boolean v2 = this.mDpm.isProfileOwnerApp(this.mPackageName);
            boolean v1 = this.mDpm.isManagedProfile(v3);
            if ((!v0) && (!v2)) {
                v4_8 = 0;
            } else {
                v4_8 = 1;
            }
            this.mIsDeviceOrProfileOwner = v4_8;
            if ((v0) || ((v1) && (v2))) {
                v5_0 = 1;
            }
            this.mDelegations = com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope.defaultDelegationScopes(v5_0);
        } else {
            this.mDelegations = com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope.defaultDelegationScopes(1);
        }
        this.getActivity().getActionBar().setTitle(2131689834);
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        android.view.View v0 = super.onCreateView(p4, p5, p6);
        v0.findViewById(2131296304).setVisibility(8);
        v0.findViewById(2131296570).setVisibility(8);
        if (!this.mIsDeviceOrProfileOwner) {
            v0.findViewById(2131296577).setVisibility(8);
        }
        return v0;
    }

    protected void onSpinnerItemSelected(android.content.pm.ApplicationInfo p3)
    {
        String v0 = p3.packageName;
        if (v0 != null) {
            this.readScopesFromDpm(v0);
            this.mAdapter.notifyDataSetChanged();
        }
        return;
    }

    protected bridge synthetic void onSpinnerItemSelected(Object p1)
    {
        this.onSpinnerItemSelected(((android.content.pm.ApplicationInfo) p1));
        return;
    }

    protected void resetConfig()
    {
        return;
    }

    protected void saveConfig()
    {
        if (this.mIsDeviceOrProfileOwner) {
            String v1 = ((android.content.pm.ApplicationInfo) this.mManagedAppsSpinner.getSelectedItem()).packageName;
            java.util.List v2 = this.readScopesFromUi();
            this.mDpm.setDelegatedScopes(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), v1, v2);
            android.widget.Toast.makeText(this.getActivity(), this.getString(2131689691), 0).show();
            android.util.Log.i(com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.TAG, new StringBuilder().append(java.util.Arrays.toString(v2.toArray())).append(" | ").append(v1).toString());
        } else {
            android.widget.Toast.makeText(this.getActivity(), this.getString(2131689678), 0).show();
            android.util.Log.i(com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.TAG, "Only PO/DO can modify delegations");
        }
        return;
    }
}
