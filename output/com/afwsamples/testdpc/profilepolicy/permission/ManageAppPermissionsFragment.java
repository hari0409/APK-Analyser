package com.afwsamples.testdpc.profilepolicy.permission;
public class ManageAppPermissionsFragment extends com.afwsamples.testdpc.common.ManageAppFragment {
    private static final String TAG = "ManageAppPermissions";
    private android.content.ComponentName mAdminComponent;
    private java.util.List mAppPermissions;
    private android.widget.TextView mAppPermissionsView;
    private android.app.admin.DevicePolicyManager mDpm;

    public ManageAppPermissionsFragment()
    {
        this.mAppPermissions = new java.util.ArrayList();
        return;
    }

    private void displayAppPermissions(java.util.List p3)
    {
        this.mAppPermissions.clear();
        if (!p3.isEmpty()) {
            this.mAppPermissionsView.setVisibility(8);
            this.mAppPermissions.addAll(p3);
        } else {
            this.mAppPermissionsView.setVisibility(0);
        }
        this.mAdapter.notifyDataSetChanged();
        return;
    }

    protected void addNewRow()
    {
        return;
    }

    protected android.widget.BaseAdapter createListAdapter()
    {
        return new com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter(this.getActivity(), 0, this.mAppPermissions, this.mAdminComponent);
    }

    protected void loadDefault()
    {
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getContext().getSystemService("device_policy"));
        if (!com.afwsamples.testdpc.common.Util.hasDelegation(this.getActivity(), "delegation-permission-grant")) {
            this.mAdminComponent = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getContext());
        } else {
            this.mAdminComponent = 0;
        }
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        android.view.View v0 = super.onCreateView(p4, p5, p6);
        v0.findViewById(2131296491).setVisibility(8);
        v0.findViewById(2131296304).setVisibility(8);
        v0.findViewById(2131296495).setVisibility(8);
        this.mAppPermissionsView = ((android.widget.TextView) v0.findViewById(2131296430));
        this.mAppPermissionsView.setText(2131689574);
        return v0;
    }

    protected void onSpinnerItemSelected(android.content.pm.ApplicationInfo p18)
    {
        String v7 = p18.packageName;
        if (!android.text.TextUtils.isEmpty(v7)) {
            java.util.ArrayList v6_1 = new java.util.ArrayList();
            try {
                android.content.pm.PackageInfo v2 = this.mPackageManager.getPackageInfo(v7, 4096);
            } catch (android.content.pm.PackageManager$NameNotFoundException v1) {
                android.util.Log.e("ManageAppPermissions", new StringBuilder().append("Could not retrieve info about the package: ").append(v7).toString(), v1);
            }
            if ((v2 != null) && (v2.requestedPermissions != null)) {
                android.app.admin.DevicePolicyManager v12_6 = v2.requestedPermissions;
                android.content.ComponentName v13_1 = v12_6.length;
                int v11_3 = 0;
                while (v11_3 < v13_1) {
                    android.app.admin.DevicePolicyManager v10 = v12_6[v11_3];
                    try {
                        android.content.pm.PermissionInfo v3 = this.mPackageManager.getPermissionInfo(v10, 0);
                    } catch (android.content.pm.PackageManager$NameNotFoundException v1) {
                        android.util.Log.i("ManageAppPermissions", new StringBuilder().append("Could not retrieve info about the permission: ").append(v10).toString());
                        v11_3++;
                    }
                    if ((v3 == null) || ((v3.protectionLevel & 15) != 1)) {
                    } else {
                        v6_1.add(v3.name);
                    }
                }
            }
            java.util.ArrayList v9_1 = new java.util.ArrayList();
            int v11_4 = v6_1.iterator();
            while (v11_4.hasNext()) {
                String v4_1 = ((String) v11_4.next());
                v9_1.add(new com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermission(v7, v4_1, this.mDpm.getPermissionGrantState(this.mAdminComponent, v7, v4_1)));
            }
            this.displayAppPermissions(v9_1);
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
        return;
    }
}
