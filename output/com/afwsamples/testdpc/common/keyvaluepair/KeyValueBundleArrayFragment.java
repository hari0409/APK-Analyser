package com.afwsamples.testdpc.common.keyvaluepair;
public class KeyValueBundleArrayFragment extends com.afwsamples.testdpc.common.ManageAppFragment implements com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener {
    private static final int RESULT_CODE_EDIT_DIALOG = 1;
    private static final int[] SUPPORTED_TYPE;
    private com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter mAdapter;
    private String mAppName;
    private java.util.List mBundleList;
    private java.util.List mInitialBundleList;
    private String mKey;

    static KeyValueBundleArrayFragment()
    {
        int[] v0_1 = new int[1];
        v0_1[0] = 4;
        com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment.SUPPORTED_TYPE = v0_1;
        return;
    }

    public KeyValueBundleArrayFragment()
    {
        return;
    }

    static synthetic java.util.List access$000(com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment p1)
    {
        return p1.mBundleList;
    }

    private android.os.Bundle clearBundleValues(android.os.Bundle p7)
    {
        java.util.Iterator v3 = p7.keySet().iterator();
        while (v3.hasNext()) {
            String v0_1 = ((String) v3.next());
            android.os.Bundle v2_0 = p7.get(v0_1);
            if (!(v2_0 instanceof String)) {
                if (!(v2_0 instanceof Integer)) {
                    if (!(v2_0 instanceof Boolean)) {
                        if ((v2_0 instanceof android.os.Bundle)) {
                            p7.putBundle(v0_1, this.clearBundleValues(((android.os.Bundle) v2_0)));
                        }
                    } else {
                        p7.putBoolean(v0_1, 0);
                    }
                } else {
                    p7.putInt(v0_1, 0);
                }
            } else {
                p7.putString(v0_1, "");
            }
        }
        return p7;
    }

    public static com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment newInstance(String p3, android.os.Bundle[] p4, String p5)
    {
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putString("key", p3);
        v0_1.putParcelableArray("initial_value", p4);
        v0_1.putString("app_name", p5);
        com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment v1_1 = new com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment();
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void showEditDialog(android.os.Bundle p9)
    {
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment v6 = com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.newInstance(4, 0, new StringBuilder().append("Bundle #").append(this.mBundleList.indexOf(p9)).toString(), p9, com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment.SUPPORTED_TYPE, this.mAppName);
        v6.setTargetFragment(this, 1);
        v6.show(this.getFragmentManager(), "dialog");
        return;
    }

    protected void addNewRow()
    {
        android.os.Bundle v0_1 = new android.os.Bundle();
        if ((this.mBundleList != null) && (this.mBundleList.size() > 0)) {
            v0_1 = this.clearBundleValues(((android.os.Bundle) ((android.os.Bundle) this.mBundleList.get(0)).clone()));
        }
        this.mAdapter.add(v0_1);
        this.showEditDialog(v0_1);
        return;
    }

    protected android.widget.BaseAdapter createListAdapter()
    {
        this.mAdapter = new com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter(this, this.getActivity(), this.mBundleList, this, this);
        return this.mAdapter;
    }

    protected void loadDefault()
    {
        return;
    }

    public void onActivityResult(int p4, int p5, android.content.Intent p6)
    {
        if ((p5 == -1) && (p4 == 1)) {
            android.os.Bundle v1 = p6.getBundleExtra("value");
            this.mAdapter.set(this.mBundleList.indexOf(v1), v1);
        }
        return;
    }

    public void onCreate(android.os.Bundle p4)
    {
        super.onCreate(p4);
        this.mKey = this.getArguments().getString("key");
        android.os.Bundle[] v0_1 = ((android.os.Bundle[]) ((android.os.Bundle[]) this.getArguments().getParcelableArray("initial_value")));
        if (v0_1 == null) {
            v0_1 = new android.os.Bundle[0];
        }
        this.mBundleList = new java.util.ArrayList(java.util.Arrays.asList(v0_1));
        this.mInitialBundleList = new java.util.ArrayList(this.mBundleList);
        this.mAppName = this.getArguments().getString("app_name");
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

    public void onDeleteButtonClick(android.os.Bundle p2)
    {
        this.mBundleList.remove(p2);
        return;
    }

    public bridge synthetic void onDeleteButtonClick(Object p1)
    {
        this.onDeleteButtonClick(((android.os.Bundle) p1));
        return;
    }

    public void onEditButtonClick(android.os.Bundle p1)
    {
        this.showEditDialog(p1);
        return;
    }

    public bridge synthetic void onEditButtonClick(Object p1)
    {
        this.onEditButtonClick(((android.os.Bundle) p1));
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
        this.mAdapter.addAll(this.mInitialBundleList);
        return;
    }

    protected void saveConfig()
    {
        android.content.Intent v0_1 = new android.content.Intent();
        v0_1.putExtra("key", this.mKey);
        v0_1.putExtra("type", 5);
        int v3_1 = new android.os.Bundle[0];
        v0_1.putExtra("value", ((android.os.Parcelable[]) this.mBundleList.toArray(v3_1)));
        this.getTargetFragment().onActivityResult(this.getTargetRequestCode(), -1, v0_1);
        this.getFragmentManager().popBackStack();
        return;
    }
}
