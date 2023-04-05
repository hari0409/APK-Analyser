package com.afwsamples.testdpc.profilepolicy.permission;
public class AppPermissionsArrayAdapter extends android.widget.ArrayAdapter implements android.widget.RadioGroup$OnCheckedChangeListener {
    private final android.content.ComponentName mAdminComponentName;
    private final android.app.admin.DevicePolicyManager mDpm;

    public AppPermissionsArrayAdapter(android.content.Context p3, int p4, java.util.List p5, android.content.ComponentName p6)
    {
        super(p3, p4, p5);
        super.mDpm = ((android.app.admin.DevicePolicyManager) super.getContext().getSystemService("device_policy"));
        super.mAdminComponentName = p6;
        return;
    }

    public android.view.View getView(int p5, android.view.View p6, android.view.ViewGroup p7)
    {
        if ((p6 != null) && ((p6.getTag() instanceof com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermissionsViewHolder))) {
            com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermissionsViewHolder v0_1 = ((com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermissionsViewHolder) p6.getTag());
        } else {
            p6 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427412, p7, 0);
            v0_1 = new com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermissionsViewHolder(this, 0);
            v0_1.permissionName = ((android.widget.TextView) p6.findViewById(2131296532));
            v0_1.permissionGroup = ((android.widget.RadioGroup) p6.findViewById(2131296531));
            v0_1.permissionGroup.setOnCheckedChangeListener(this);
            p6.setTag(v0_1);
        }
        v0_1.appPermission = ((com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermission) this.getItem(p5));
        v0_1.permissionName.setText(v0_1.appPermission.permissionName);
        v0_1.permissionGroup.setTag(v0_1.appPermission);
        switch (v0_1.appPermission.permissionState) {
            case 0:
                v0_1.permissionGroup.check(2131296529);
                break;
            case 1:
                v0_1.permissionGroup.check(2131296528);
                break;
            case 2:
                v0_1.permissionGroup.check(2131296530);
                break;
        }
        return p6;
    }

    public void onCheckedChanged(android.widget.RadioGroup p7, int p8)
    {
        com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermission v0_1 = ((com.afwsamples.testdpc.profilepolicy.permission.AppPermissionsArrayAdapter$AppPermission) p7.getTag());
        switch (p8) {
            case 2131296528:
                v0_1.permissionState = 1;
                break;
            case 2131296529:
                v0_1.permissionState = 0;
                break;
            case 2131296530:
                v0_1.permissionState = 2;
                break;
        }
        this.mDpm.setPermissionGrantState(this.mAdminComponentName, v0_1.pkgName, v0_1.permissionName, v0_1.permissionState);
        return;
    }
}
