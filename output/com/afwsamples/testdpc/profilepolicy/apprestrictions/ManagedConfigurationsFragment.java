package com.afwsamples.testdpc.profilepolicy.apprestrictions;
public class ManagedConfigurationsFragment extends com.afwsamples.testdpc.common.ManageAppFragment implements com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener {
    private static final int RESULT_CODE_EDIT_DIALOG = 1;
    private static final int[] SUPPORTED_TYPES;
    private static final int[] SUPPORTED_TYPES_PRE_M;
    private android.content.ComponentName mAdminComponent;
    private com.afwsamples.testdpc.common.EditDeleteArrayAdapter mAppRestrictionsArrayAdapter;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private android.content.RestrictionEntry mEditingRestrictionEntry;
    private java.util.List mLastRestrictionEntries;
    private java.util.List mRestrictionEntries;
    private android.content.RestrictionsManager mRestrictionsManager;

    static ManagedConfigurationsFragment()
    {
        int[] v0_1 = new int[6];
        v0_1 = {0, 1, 2, 3, 4, 5};
        com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment.SUPPORTED_TYPES = v0_1;
        int[] v0_3 = new int[4];
        v0_3 = {0, 1, 2, 3};
        com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment.SUPPORTED_TYPES_PRE_M = v0_3;
        return;
    }

    public ManagedConfigurationsFragment()
    {
        this.mRestrictionEntries = new java.util.ArrayList();
        return;
    }

    private void addBundleArrayToRestrictions(java.util.List p5, String p6, android.os.Parcelable[] p7)
    {
        android.content.RestrictionEntry[] v0 = new android.content.RestrictionEntry[p7.length];
        int v1 = 0;
        while (v1 < v0.length) {
            v0[v1] = android.content.RestrictionEntry.createBundleEntry(p6, this.convertBundleToRestrictions(((android.os.Bundle) p7[v1])));
            v1++;
        }
        p5.add(android.content.RestrictionEntry.createBundleArrayEntry(p6, v0));
        return;
    }

    private void addBundleEntryToRestrictions(java.util.List p2, String p3, android.os.Bundle p4)
    {
        p2.add(android.content.RestrictionEntry.createBundleEntry(p3, this.convertBundleToRestrictions(p4)));
        return;
    }

    private void convertTypeChoiceAndNullToString(java.util.List p5)
    {
        java.util.Iterator v1 = p5.iterator();
        while (v1.hasNext()) {
            android.content.RestrictionEntry v0_1 = ((android.content.RestrictionEntry) v1.next());
            if ((v0_1.getType() == 2) || (v0_1.getType() == 0)) {
                v0_1.setType(6);
            }
        }
        return;
    }

    private String getCurrentAppName()
    {
        return ((String) this.getActivity().getPackageManager().getApplicationLabel(((android.content.pm.ApplicationInfo) this.mManagedAppsSpinner.getSelectedItem())));
    }

    private android.content.RestrictionEntry[] getRestrictionEntries(android.content.RestrictionEntry p2)
    {
        return p2.getRestrictions();
    }

    private int getRestrictionTypeFromDialogType(int p3)
    {
        int v0_0;
        switch (p3) {
            case 0:
                v0_0 = 1;
                break;
            case 1:
                v0_0 = 5;
                break;
            case 2:
                v0_0 = 6;
                break;
            case 3:
                v0_0 = 4;
                break;
            case 4:
                v0_0 = 7;
                break;
            case 5:
                v0_0 = 8;
                break;
            default:
                throw new AssertionError("Unknown type index");
        }
        return v0_0;
    }

    private int getTypeIndexFromRestrictionType(int p3)
    {
        int v0_0;
        switch (p3) {
            case 1:
                v0_0 = 0;
                break;
            case 2:
            case 3:
            default:
                throw new AssertionError("Unknown restriction type");
                break;
            case 4:
                v0_0 = 3;
                break;
            case 5:
                v0_0 = 1;
                break;
            case 6:
                v0_0 = 2;
                break;
            case 7:
                v0_0 = 4;
                break;
            case 8:
                v0_0 = 5;
                break;
        }
        return v0_0;
    }

    private void loadManifestAppRestrictions(String p3)
    {
        if (!android.text.TextUtils.isEmpty(p3)) {
            try {
                java.util.List v0 = this.mRestrictionsManager.getManifestRestrictions(p3);
                this.convertTypeChoiceAndNullToString(v0);
            } catch (android.content.RestrictionEntry[] v1) {
            }
            if (v0 != null) {
                android.content.RestrictionEntry[] v1_2 = new android.content.RestrictionEntry[0];
                this.loadAppRestrictionsList(((android.content.RestrictionEntry[]) v0.toArray(v1_2)));
            }
        }
        return;
    }

    private void showEditDialog(android.content.RestrictionEntry p12)
    {
        this.mEditingRestrictionEntry = p12;
        int v0 = 0;
        android.os.Bundle[] v3 = 0;
        String v2 = "";
        if (p12 != null) {
            v2 = p12.getKey();
            v0 = this.getTypeIndexFromRestrictionType(p12.getType());
            switch (p12.getType()) {
                case 1:
                    v3 = Boolean.valueOf(p12.getSelectedState());
                case 2:
                case 3:
                default:
                    break;
                case 2:
                case 3:
                    break;
                case 4:
                    v3 = p12.getAllSelectedStrings();
                    break;
                case 5:
                    v3 = Integer.valueOf(p12.getIntValue());
                    break;
                case 6:
                    v3 = p12.getSelectedString();
                    break;
                case 7:
                    v3 = com.afwsamples.testdpc.common.RestrictionManagerCompat.convertRestrictionsToBundle(java.util.Arrays.asList(this.getRestrictionEntries(p12)));
                    break;
                case 8:
                    android.content.RestrictionEntry[] v9 = this.getRestrictionEntries(p12);
                    android.os.Bundle[] v6 = new android.os.Bundle[v9.length];
                    int v8 = 0;
                    while (v8 < v9.length) {
                        v6[v8] = com.afwsamples.testdpc.common.RestrictionManagerCompat.convertRestrictionsToBundle(java.util.Arrays.asList(this.getRestrictionEntries(v9[v8])));
                        v8++;
                    }
                    v3 = v6;
                    break;
            }
        }
        int[] v4;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 23) {
            v4 = com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment.SUPPORTED_TYPES;
        } else {
            v4 = com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment.SUPPORTED_TYPES_PRE_M;
        }
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment v7 = com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.newInstance(v0, 1, v2, v3, v4, this.getCurrentAppName());
        v7.setTargetFragment(this, 1);
        v7.show(this.getFragmentManager(), "dialog");
        return;
    }

    private void updateRestrictionEntryFromResultIntent(android.content.RestrictionEntry p7, android.content.Intent p8)
    {
        switch (p7.getType()) {
            case 1:
                p7.setSelectedState(p8.getBooleanExtra("value", 0));
            case 2:
            case 3:
            default:
                break;
            case 2:
            case 3:
                break;
            case 4:
                p7.setAllSelectedStrings(p8.getStringArrayExtra("value"));
                break;
            case 5:
                p7.setIntValue(p8.getIntExtra("value", 0));
                break;
            case 6:
                p7.setSelectedString(p8.getStringExtra("value"));
                break;
            case 7:
                p7.setRestrictions(this.convertBundleToRestrictions(p8.getBundleExtra("value")));
                break;
            case 8:
                android.os.Parcelable[] v1 = p8.getParcelableArrayExtra("value");
                android.content.RestrictionEntry[] v3 = new android.content.RestrictionEntry[v1.length];
                int v2 = 0;
                while (v2 < v1.length) {
                    v3[v2] = android.content.RestrictionEntry.createBundleEntry(String.valueOf(v2), this.convertBundleToRestrictions(((android.os.Bundle) v1[v2])));
                    v2++;
                }
                p7.setRestrictions(v3);
                break;
        }
        return;
    }

    protected void addNewRow()
    {
        this.showEditDialog(0);
        return;
    }

    protected android.content.RestrictionEntry[] convertBundleToRestrictions(android.os.Bundle p9)
    {
        java.util.ArrayList v3_1 = new java.util.ArrayList();
        android.content.RestrictionEntry[] v5_3 = p9.keySet().iterator();
        while (v5_3.hasNext()) {
            String v1_1 = ((String) v5_3.next());
            android.os.Parcelable[] v4_0 = p9.get(v1_1);
            if (!(v4_0 instanceof Boolean)) {
                if (!(v4_0 instanceof Integer)) {
                    if (!(v4_0 instanceof String)) {
                        if (!(v4_0 instanceof String[])) {
                            if (!(v4_0 instanceof android.os.Bundle)) {
                                if ((v4_0 instanceof android.os.Parcelable[])) {
                                    this.addBundleArrayToRestrictions(v3_1, v1_1, ((android.os.Parcelable[]) ((android.os.Parcelable[]) v4_0)));
                                }
                            } else {
                                this.addBundleEntryToRestrictions(v3_1, v1_1, ((android.os.Bundle) v4_0));
                            }
                        } else {
                            v3_1.add(new android.content.RestrictionEntry(v1_1, ((String[]) ((String[]) v4_0))));
                        }
                    } else {
                        android.content.RestrictionEntry v0_1 = new android.content.RestrictionEntry(6, v1_1);
                        v0_1.setSelectedString(((String) v4_0));
                        v3_1.add(v0_1);
                    }
                } else {
                    v3_1.add(new android.content.RestrictionEntry(v1_1, ((Integer) v4_0).intValue()));
                }
            } else {
                v3_1.add(new android.content.RestrictionEntry(v1_1, ((Boolean) v4_0).booleanValue()));
            }
        }
        android.content.RestrictionEntry[] v5_0 = new android.content.RestrictionEntry[0];
        return ((android.content.RestrictionEntry[]) v3_1.toArray(v5_0));
    }

    protected android.widget.BaseAdapter createListAdapter()
    {
        this.mAppRestrictionsArrayAdapter = new com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter(this, this.getActivity(), this.mRestrictionEntries, this, 0);
        return this.mAppRestrictionsArrayAdapter;
    }

    protected void loadAppRestrictionsList(android.content.RestrictionEntry[] p3)
    {
        if (p3 != null) {
            this.mAppRestrictionsArrayAdapter.clear();
            this.mAppRestrictionsArrayAdapter.addAll(java.util.Arrays.asList(p3));
        }
        return;
    }

    protected void loadDefault()
    {
        this.loadManifestAppRestrictions(((android.content.pm.ApplicationInfo) this.mManagedAppsSpinner.getSelectedItem()).packageName);
        return;
    }

    public void onActivityResult(int p6, int p7, android.content.Intent p8)
    {
        if (p7 == -1) {
            switch (p6) {
                case 1:
                    android.content.RestrictionEntry v1_1 = new android.content.RestrictionEntry(this.getRestrictionTypeFromDialogType(p8.getIntExtra("type", 0)), p8.getStringExtra("key"));
                    this.updateRestrictionEntryFromResultIntent(v1_1, p8);
                    this.mAppRestrictionsArrayAdapter.remove(this.mEditingRestrictionEntry);
                    this.mEditingRestrictionEntry = 0;
                    this.mAppRestrictionsArrayAdapter.add(v1_1);
                    break;
                default:
            }
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.setRetainInstance(1);
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mRestrictionsManager = ((android.content.RestrictionsManager) this.getActivity().getSystemService("restrictions"));
        if (!com.afwsamples.testdpc.common.Util.hasDelegation(this.getActivity(), "delegation-app-restrictions")) {
            this.mAdminComponent = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        } else {
            this.mAdminComponent = 0;
        }
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        android.view.View v1 = super.onCreateView(p4, p5, p6);
        v1.findViewById(2131296491).setVisibility(0);
        return v1;
    }

    public void onEditButtonClick(android.content.RestrictionEntry p1)
    {
        this.showEditDialog(p1);
        return;
    }

    public bridge synthetic void onEditButtonClick(Object p1)
    {
        this.onEditButtonClick(((android.content.RestrictionEntry) p1));
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131689926);
        return;
    }

    protected void onSpinnerItemSelected(android.content.pm.ApplicationInfo p5)
    {
        String v1 = p5.packageName;
        if (!android.text.TextUtils.isEmpty(v1)) {
            this.loadAppRestrictionsList(this.convertBundleToRestrictions(this.mDevicePolicyManager.getApplicationRestrictions(this.mAdminComponent, v1)));
            this.mLastRestrictionEntries = new java.util.ArrayList(this.mRestrictionEntries);
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
        this.mAppRestrictionsArrayAdapter.clear();
        this.mAppRestrictionsArrayAdapter.addAll(this.mLastRestrictionEntries);
        return;
    }

    protected void saveConfig()
    {
        String v0 = ((android.content.pm.ApplicationInfo) this.mManagedAppsSpinner.getSelectedItem()).packageName;
        this.mDevicePolicyManager.setApplicationRestrictions(this.mAdminComponent, v0, com.afwsamples.testdpc.common.RestrictionManagerCompat.convertRestrictionsToBundle(this.mRestrictionEntries));
        this.mLastRestrictionEntries = new java.util.ArrayList(this.mRestrictionEntries);
        Object[] v2_2 = new Object[1];
        v2_2[0] = v0;
        this.showToast(this.getString(2131690193, v2_2));
        return;
    }

    protected void showToast(String p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 0).show();
        return;
    }
}
