package com.afwsamples.testdpc.common.keyvaluepair;
public class KeyValueBundleFragment extends com.afwsamples.testdpc.common.ManageAppFragment implements com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener {
    private static final int RESULT_CODE_EDIT_DIALOG = 1;
    private static final int[] SUPPORTED_TYPE;
    private com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment$StringEditDeleteArrayAdapter mAdapter;
    private String mAppName;
    private android.os.Bundle mBundle;
    private String mEditingKey;
    private android.os.Bundle mInitialBundle;
    private String mKey;
    java.util.List mKeyList;

    static KeyValueBundleFragment()
    {
        int[] v0_1 = new int[6];
        v0_1 = {0, 1, 2, 3, 4, 5};
        com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment.SUPPORTED_TYPE = v0_1;
        return;
    }

    public KeyValueBundleFragment()
    {
        return;
    }

    public static com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment newInstance(String p3, android.os.Bundle p4, String p5)
    {
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putString("key", p3);
        v0_1.putBundle("initial_value", p4);
        v0_1.putString("app_name", p5);
        com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment v1_1 = new com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment();
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void showEditDialog(String p8)
    {
        this.mEditingKey = p8;
        int v0 = 0;
        Object v3 = 0;
        if (p8 != null) {
            v3 = this.mBundle.get(p8);
            if (!(v3 instanceof Boolean)) {
                if (!(v3 instanceof Integer)) {
                    if (!(v3 instanceof String)) {
                        if (!(v3 instanceof String[])) {
                            if (!(v3 instanceof android.os.Bundle)) {
                                if ((v3 instanceof android.os.Bundle[])) {
                                    v0 = 5;
                                }
                            } else {
                                v0 = 4;
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
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment v6 = com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.newInstance(v0, 1, p8, v3, com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment.SUPPORTED_TYPE, this.mAppName);
        v6.setTargetFragment(this, 1);
        v6.show(this.getFragmentManager(), "dialog");
        return;
    }

    private void updateBundleFromResultIntent(int p4, String p5, android.content.Intent p6)
    {
        switch (p4) {
            case 0:
                this.mBundle.putBoolean(p5, p6.getBooleanExtra("value", 0));
                break;
            case 1:
                this.mBundle.putInt(p5, p6.getIntExtra("value", 0));
                break;
            case 2:
                this.mBundle.putString(p5, p6.getStringExtra("value"));
                break;
            case 3:
                this.mBundle.putStringArray(p5, p6.getStringArrayExtra("value"));
                break;
            case 4:
                this.mBundle.putBundle(p5, p6.getBundleExtra("value"));
                break;
            case 5:
                this.mBundle.putParcelableArray(p5, p6.getParcelableArrayExtra("value"));
                break;
            default:
                throw new IllegalArgumentException(new StringBuilder().append("invalid type:").append(p4).toString());
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
        this.mAdapter = new com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleFragment$StringEditDeleteArrayAdapter(this.getActivity(), this.mKeyList, this, this);
        return this.mAdapter;
    }

    protected void loadDefault()
    {
        return;
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
                    this.mAdapter.notifyDataSetChanged();
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
        this.mAppName = this.getArguments().getString("app_name");
        this.mKey = this.getArguments().getString("key");
        this.mBundle = this.getArguments().getBundle("initial_value");
        if (this.mBundle == null) {
            this.mBundle = new android.os.Bundle();
        }
        this.mInitialBundle = new android.os.Bundle(this.mBundle);
        this.mKeyList = new java.util.ArrayList();
        this.mKeyList.addAll(this.mBundle.keySet());
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p8, android.view.ViewGroup p9, android.os.Bundle p10)
    {
        android.view.View v0 = super.onCreateView(p8, p9, p10);
        this.mManagedAppsSpinner.setVisibility(8);
        this.mHeaderView.setVisibility(0);
        android.widget.TextView v1_2 = this.mHeaderView;
        String v2_0 = this.getActivity();
        Object[] v4_1 = new Object[2];
        v4_1[0] = this.mAppName;
        v4_1[1] = this.mKey;
        v1_2.setText(v2_0.getString(2131689575, v4_1));
        return v0;
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

    protected void onSpinnerItemSelected(android.content.pm.ApplicationInfo p1)
    {
        return;
    }

    protected bridge synthetic void onSpinnerItemSelected(Object p1)
    {
        this.onSpinnerItemSelected(((android.content.pm.ApplicationInfo) p1));
        return;
    }

    protected void resetConfig()
    {
        this.mAdapter.clear();
        this.mAdapter.addAll(this.mInitialBundle.keySet());
        return;
    }

    protected void saveConfig()
    {
        android.content.Intent v0_1 = new android.content.Intent();
        v0_1.putExtra("key", this.mKey);
        v0_1.putExtra("type", 4);
        v0_1.putExtra("value", this.mBundle);
        this.getTargetFragment().onActivityResult(this.getTargetRequestCode(), -1, v0_1);
        this.getFragmentManager().popBackStack();
        return;
    }
}
