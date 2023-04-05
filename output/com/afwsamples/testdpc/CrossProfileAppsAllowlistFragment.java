package com.afwsamples.testdpc;
public class CrossProfileAppsAllowlistFragment extends android.app.Fragment {
    private static final String DELIMITER = "\n";
    private android.widget.Button mAddButton;
    private android.content.ComponentName mAdminComponent;
    private android.widget.EditText mAppNameEditText;
    private android.widget.TextView mAppsList;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private android.view.View mInflatedView;
    private android.widget.Button mRemoveButton;
    private android.widget.Button mResetButton;

    public CrossProfileAppsAllowlistFragment()
    {
        return;
    }

    private void addApp(String p4)
    {
        java.util.Set v0 = this.mDevicePolicyManager.getCrossProfilePackages(this.mAdminComponent);
        v0.add(p4);
        this.mDevicePolicyManager.setCrossProfilePackages(this.mAdminComponent, v0);
        this.updateCrossProfileAppsList();
        return;
    }

    private void removeApp(String p4)
    {
        java.util.Set v0 = this.mDevicePolicyManager.getCrossProfilePackages(this.mAdminComponent);
        v0.remove(p4);
        this.mDevicePolicyManager.setCrossProfilePackages(this.mAdminComponent, v0);
        this.updateCrossProfileAppsList();
        return;
    }

    private void resetApps()
    {
        this.mDevicePolicyManager.setCrossProfilePackages(this.mAdminComponent, java.util.Collections.emptySet());
        this.updateCrossProfileAppsList();
        return;
    }

    private void setOnClickListeners()
    {
        this.mResetButton.setOnClickListener(new com.afwsamples.testdpc.CrossProfileAppsAllowlistFragment$$Lambda$0(this));
        this.mAddButton.setOnClickListener(new com.afwsamples.testdpc.CrossProfileAppsAllowlistFragment$$Lambda$1(this));
        this.mRemoveButton.setOnClickListener(new com.afwsamples.testdpc.CrossProfileAppsAllowlistFragment$$Lambda$2(this));
        return;
    }

    private void updateCrossProfileAppsList()
    {
        java.util.Set v0 = this.mDevicePolicyManager.getCrossProfilePackages(this.mAdminComponent);
        if (!v0.isEmpty()) {
            this.mAppsList.setText(String.join("\n", v0));
        } else {
            this.mAppsList.setText(2131689651);
        }
        return;
    }

    final synthetic void lambda$setOnClickListeners$209$CrossProfileAppsAllowlistFragment(android.view.View p1)
    {
        this.resetApps();
        return;
    }

    final synthetic void lambda$setOnClickListeners$210$CrossProfileAppsAllowlistFragment(android.view.View p2)
    {
        this.addApp(this.mAppNameEditText.getText().toString().toLowerCase().trim());
        return;
    }

    final synthetic void lambda$setOnClickListeners$211$CrossProfileAppsAllowlistFragment(android.view.View p2)
    {
        this.removeApp(this.mAppNameEditText.getText().toString().toLowerCase().trim());
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p3, android.view.ViewGroup p4, android.os.Bundle p5)
    {
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService(android.app.admin.DevicePolicyManager));
        this.mAdminComponent = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        this.mInflatedView = p3.inflate(2131427372, p4, 0);
        this.mAppNameEditText = ((android.widget.EditText) this.mInflatedView.findViewById(2131296380));
        this.mResetButton = ((android.widget.Button) this.mInflatedView.findViewById(2131296382));
        this.mAddButton = ((android.widget.Button) this.mInflatedView.findViewById(2131296379));
        this.mRemoveButton = ((android.widget.Button) this.mInflatedView.findViewById(2131296381));
        this.mAppsList = ((android.widget.TextView) this.mInflatedView.findViewById(2131296386));
        this.setOnClickListeners();
        this.updateCrossProfileAppsList();
        return this.mInflatedView;
    }
}
