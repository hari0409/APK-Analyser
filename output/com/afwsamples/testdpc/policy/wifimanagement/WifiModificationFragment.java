package com.afwsamples.testdpc.policy.wifimanagement;
public class WifiModificationFragment extends android.app.Fragment implements com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog$Listener {
    private static final String ARG_OWNED_NETWORKS_ONLY = "owned_networks_only";
    private static final String TAG_WIFI_CONFIG_MODIFICATION = "wifi_config_modification";
    private com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment$ConfigsAdapter mConfigsAdapter;
    private android.widget.ListView mConfigsList;
    private java.util.List mConfiguredNetworks;
    private boolean mShowOwnedNetworksOnly;
    private android.net.wifi.WifiManager mWifiManager;

    public WifiModificationFragment()
    {
        this.mConfiguredNetworks = new java.util.ArrayList();
        return;
    }

    static synthetic java.util.List access$000(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p1)
    {
        return p1.mConfiguredNetworks;
    }

    static synthetic android.net.wifi.WifiConfiguration access$100(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p1)
    {
        return p1.getClickedItem();
    }

    static synthetic void access$200(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p0, String p1)
    {
        p0.showError(p1);
        return;
    }

    static synthetic android.net.wifi.WifiManager access$300(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p1)
    {
        return p1.mWifiManager;
    }

    static synthetic void access$400(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p0)
    {
        p0.updateConfigsList();
        return;
    }

    public static com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment createFragment(boolean p3)
    {
        com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment v1_1 = new com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment();
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putBoolean("owned_networks_only", p3);
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private android.net.wifi.WifiConfiguration getClickedItem()
    {
        int v1_0;
        long[] v0 = this.mConfigsList.getCheckedItemIds();
        if (v0.length != 0) {
            int v2 = this.mConfiguredNetworks.size();
            int v3 = 0;
            while (v3 < v2) {
                v1_0 = ((android.net.wifi.WifiConfiguration) this.mConfiguredNetworks.get(v3));
                if (((long) v1_0.networkId) != v0[0]) {
                    v3++;
                }
            }
            v1_0 = 0;
        } else {
            v1_0 = 0;
        }
        return v1_0;
    }

    private void showError(String p4)
    {
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131690384).setIconAttribute(16843605).setMessage(p4).setPositiveButton(17039370, 0).show();
        return;
    }

    private void showToast(String p3)
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            android.widget.Toast.makeText(v0, p3, 0).show();
        }
        return;
    }

    private void updateConfigsList()
    {
        java.util.List v0;
        this.mConfiguredNetworks.clear();
        if (!this.mShowOwnedNetworksOnly) {
            v0 = this.mWifiManager.getConfiguredNetworks();
        } else {
            v0 = this.mWifiManager.getCallerConfiguredNetworks();
        }
        if (v0 != null) {
            this.mConfiguredNetworks.addAll(v0);
        }
        this.mConfigsAdapter.notifyDataSetChanged();
        return;
    }

    public void onCancel()
    {
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p9, android.view.ViewGroup p10, android.os.Bundle p11)
    {
        super.onCreateView(p9, p10, p11);
        this.mShowOwnedNetworksOnly = this.getArguments().getBoolean("owned_networks_only");
        this.mWifiManager = ((android.net.wifi.WifiManager) this.getActivity().getSystemService("wifi"));
        android.view.View v3 = p9.inflate(2131427516, p10, 0);
        this.mConfigsList = ((android.widget.ListView) v3.findViewById(2131296730));
        this.mConfigsList.addHeaderView(((android.widget.TextView) p9.inflate(2131427515, this.mConfigsList, 0)));
        this.mConfigsAdapter = new com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment$ConfigsAdapter(this);
        this.mConfigsList.setAdapter(this.mConfigsAdapter);
        this.mConfigsList.setChoiceMode(1);
        if (!this.shouldRequestLocationPermission(this.getContext())) {
            this.updateConfigsList();
        } else {
            com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment$2 v4_16 = new String[1];
            v4_16[0] = "android.permission.ACCESS_FINE_LOCATION";
            this.requestPermissions(v4_16, 0);
        }
        android.widget.Button v2_1 = ((android.widget.Button) v3.findViewById(2131296718));
        if (v2_1 != null) {
            v2_1.setOnClickListener(new com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment$1(this));
        }
        android.widget.Button v1_1 = ((android.widget.Button) v3.findViewById(2131296567));
        if (v1_1 != null) {
            v1_1.setOnClickListener(new com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment$2(this));
        }
        return v3;
    }

    public void onDismiss()
    {
        this.updateConfigsList();
        return;
    }

    public void onRequestPermissionsResult(int p2, String[] p3, int[] p4)
    {
        if (p4[0] == 0) {
            this.updateConfigsList();
        } else {
            this.showToast("Location permission denied, network list unavailable.");
        }
        super.onRequestPermissionsResult(p2, p3, p4);
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.updateConfigsList();
        return;
    }

    public boolean shouldRequestLocationPermission(android.content.Context p4)
    {
        int v0 = 0;
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 23) && ((!this.mShowOwnedNetworksOnly) && (androidx.core.content.ContextCompat.checkSelfPermission(p4, "android.permission.ACCESS_FINE_LOCATION") != 0))) {
            v0 = 1;
        }
        return v0;
    }
}
