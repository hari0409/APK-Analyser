package com.afwsamples.testdpc.policy.keyguard;
public class SetTrustAgentConfigFragment extends com.afwsamples.testdpc.common.ManageResolveInfoFragment implements android.view.View$OnClickListener, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener {
    private static final String KEY_TYPE = "type";
    private static final int RESULT_CODE_EDIT_DIALOG = 1;
    private static final int[] SUPPORTED_TYPE;
    private com.afwsamples.testdpc.common.EditDeleteArrayAdapter mAdapter;
    private android.os.PersistableBundle mBundle;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private String mEditingKey;
    private android.os.PersistableBundle mInitialBundle;
    private java.util.List mKeyList;
    private android.content.pm.PackageManager mPackageManager;
    private android.content.pm.ResolveInfo mResolveInfo;
    private int mType;

    static SetTrustAgentConfigFragment()
    {
        int[] v0_1 = new int[5];
        v0_1 = {0, 1, 2, 3, 4};
        com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment.SUPPORTED_TYPE = v0_1;
        return;
    }

    public SetTrustAgentConfigFragment()
    {
        this.mKeyList = new java.util.ArrayList();
        return;
    }

    private android.content.ComponentName getAdmin()
    {
        return com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
    }

    private android.content.ComponentName getComponentName(android.content.pm.ResolveInfo p4)
    {
        return new android.content.ComponentName(p4.serviceInfo.packageName, p4.serviceInfo.name);
    }

    private android.app.admin.DevicePolicyManager getDevicePolicyManagerFromType(int p4)
    {
        android.app.admin.DevicePolicyManager v0_0 = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        if (p4 != 1) {
            v0_0 = v0_0.getParentProfileInstance(this.getAdmin());
        }
        return v0_0;
    }

    public static com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment newInstance(int p3)
    {
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putInt("type", p3);
        com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment v1_1 = new com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment();
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void setTrustAgentConfiguration()
    {
        this.mDevicePolicyManager.setTrustAgentConfiguration(this.getAdmin(), this.getComponentName(this.mResolveInfo), this.mBundle);
        return;
    }

    private void showEditDialog(String p8)
    {
        this.mEditingKey = p8;
        int v0 = 0;
        android.os.Bundle v3_1 = 0;
        if (p8 != null) {
            v3_1 = this.mBundle.get(p8);
            if (!(v3_1 instanceof Boolean)) {
                if (!(v3_1 instanceof Integer)) {
                    if (!(v3_1 instanceof String)) {
                        if (!(v3_1 instanceof String[])) {
                            if ((v3_1 instanceof android.os.PersistableBundle)) {
                                v0 = 4;
                                v3_1 = com.afwsamples.testdpc.common.BundleUtil.persistableBundleToBundle(((android.os.PersistableBundle) v3_1));
                            }
                        } else {
                            v0 = 3;
                        }
                    } else {
                        v0 = 2;
                    }
                } else {
                    v0 = 1;
                }
            } else {
                v0 = 0;
            }
        }
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment v6 = com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.newInstance(v0, 1, p8, v3_1, com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment.SUPPORTED_TYPE, this.mResolveInfo.loadLabel(this.mPackageManager).toString());
        v6.setTargetFragment(this, 1);
        v6.show(this.getFragmentManager(), "dialog");
        return;
    }

    private void updateBundleFromResultIntent(int p5, String p6, android.content.Intent p7)
    {
        switch (p5) {
            case 0:
                this.mBundle.putBoolean(p6, p7.getBooleanExtra("value", 0));
                break;
            case 1:
                this.mBundle.putInt(p6, p7.getIntExtra("value", 0));
                break;
            case 2:
                this.mBundle.putString(p6, p7.getStringExtra("value"));
                break;
            case 3:
                this.mBundle.putStringArray(p6, p7.getStringArrayExtra("value"));
                break;
            case 4:
                this.mBundle.putPersistableBundle(p6, com.afwsamples.testdpc.common.BundleUtil.bundleToPersistableBundle(((android.os.Bundle) p7.getParcelableExtra("value"))));
                break;
            default:
                throw new IllegalArgumentException(new StringBuilder().append("invalid type:").append(p5).toString());
        }
        return;
    }

    protected void addNewRow()
    {
        this.showEditDialog(0);
        return;
    }

    protected android.widget.BaseAdapter createListAdapter()
    {
        this.mAdapter = new com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment$StringEditDeleteArrayAdapter(this.getActivity(), this.mKeyList, this, this);
        return this.mAdapter;
    }

    protected void loadDefault()
    {
        return;
    }

    protected java.util.List loadResolveInfoList()
    {
        java.util.List v5 = this.getActivity().getPackageManager().queryIntentServices(new android.content.Intent("android.service.trust.TrustAgentService"), 128);
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        int v1 = v5.size();
        int v2 = 0;
        while (v2 < v1) {
            android.content.pm.ResolveInfo v4_1 = ((android.content.pm.ResolveInfo) v5.get(v2));
            if (v4_1.serviceInfo != null) {
                v0_1.add(v4_1);
            }
            v2++;
        }
        return v0_1;
    }

    public void onActivityResult(int p5, int p6, android.content.Intent p7)
    {
        if (p6 == -1) {
            switch (p5) {
                case 1:
                    int v1 = p7.getIntExtra("type", 0);
                    String v0 = p7.getStringExtra("key");
                    this.updateBundleFromResultIntent(v1, v0, p7);
                    if (!android.text.TextUtils.isEmpty(this.mEditingKey)) {
                        this.mAdapter.remove(this.mEditingKey);
                    }
                    this.mAdapter.add(v0);
                    this.mEditingKey = 0;
                    break;
                default:
            }
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mType = this.getArguments().getInt("type");
        this.mDevicePolicyManager = this.getDevicePolicyManagerFromType(this.mType);
        this.mPackageManager = this.getActivity().getPackageManager();
        return;
    }

    public bridge synthetic void onDeleteButtonClick(Object p1)
    {
        this.onDeleteButtonClick(((String) p1));
        return;
    }

    public void onDeleteButtonClick(String p2)
    {
        this.mBundle.remove(p2);
        return;
    }

    public bridge synthetic void onEditButtonClick(Object p1)
    {
        this.onEditButtonClick(((String) p1));
        return;
    }

    public void onEditButtonClick(String p1)
    {
        this.showEditDialog(p1);
        return;
    }

    protected void onSpinnerItemSelected(android.content.pm.ResolveInfo p6)
    {
        this.mResolveInfo = p6;
        java.util.List v2 = this.mDevicePolicyManager.getTrustAgentConfiguration(this.getAdmin(), this.getComponentName(p6));
        if ((v2 != null) && (v2.size() != 0)) {
            this.mBundle = ((android.os.PersistableBundle) v2.get(0));
        } else {
            this.mBundle = new android.os.PersistableBundle();
        }
        this.mInitialBundle = new android.os.PersistableBundle(this.mBundle);
        this.mAdapter.clear();
        this.mAdapter.addAll(this.mBundle.keySet());
        return;
    }

    protected bridge synthetic void onSpinnerItemSelected(Object p1)
    {
        this.onSpinnerItemSelected(((android.content.pm.ResolveInfo) p1));
        return;
    }

    protected void resetConfig()
    {
        this.mBundle = new android.os.PersistableBundle(this.mInitialBundle);
        this.mAdapter.clear();
        this.mAdapter.addAll(this.mBundle.keySet());
        return;
    }

    protected void saveConfig()
    {
        this.setTrustAgentConfiguration();
        android.widget.Toast.makeText(this.getActivity(), 2131690168, 1).show();
        return;
    }
}
