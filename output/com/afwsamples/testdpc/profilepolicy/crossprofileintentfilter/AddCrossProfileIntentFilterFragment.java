package com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter;
public class AddCrossProfileIntentFilterFragment extends com.afwsamples.testdpc.common.IntentOrIntentFilterFragment {
    private static final String[] CROSS_PROFILE_INTENT_DIRECTIONS = None;
    private static final String NEW_LINE = "";
    private static final String TAG = "AddCrossProfileIntentFilterFragment";
    private android.widget.Spinner mCrossProfileDirectionSpinner;

    static AddCrossProfileIntentFilterFragment()
    {
        String v0_1 = new String[2];
        v0_1[0] = "FLAG_MANAGED_CAN_ACCESS_PARENT";
        v0_1[1] = "FLAG_PARENT_CAN_ACCESS_MANAGED";
        com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.CROSS_PROFILE_INTENT_DIRECTIONS = v0_1;
        com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE = System.getProperty("line.separator");
        return;
    }

    public AddCrossProfileIntentFilterFragment()
    {
        return;
    }

    private void dumpSet(StringBuilder p5, java.util.Set p6)
    {
        java.util.Iterator v1 = p6.iterator();
        while (v1.hasNext()) {
            p5.append(v1.next().toString()).append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
        }
        return;
    }

    private int getAddCrossProfileIntentFilterFlag()
    {
        int v0_2;
        if (this.mCrossProfileDirectionSpinner.getSelectedItemPosition() != 0) {
            v0_2 = 1;
        } else {
            v0_2 = 2;
        }
        return v0_2;
    }

    private android.content.IntentFilter getIntentFilter()
    {
        if ((!this.mActions.isEmpty()) || ((!this.mCategories.isEmpty()) || ((!this.mDataSchemes.isEmpty()) || (!this.mDataTypes.isEmpty())))) {
            int v5_1 = new android.content.IntentFilter();
            String v7_5 = this.mActions.iterator();
            while (v7_5.hasNext()) {
                v5_1.addAction(((String) v7_5.next()));
            }
            String v7_7 = this.mCategories.iterator();
            while (v7_7.hasNext()) {
                v5_1.addCategory(((String) v7_7.next()));
            }
            String v7_10 = this.mDataSchemes.iterator();
            while (v7_10.hasNext()) {
                v5_1.addDataScheme(((String) v7_10.next()));
            }
            String v7_12 = this.mDataTypes.iterator();
            while (v7_12.hasNext()) {
                try {
                    v5_1.addDataType(((String) v7_12.next()));
                } catch (android.content.IntentFilter$MalformedMimeTypeException v4) {
                    android.util.Log.e("AddCrossProfileIntentFilterFragment", new StringBuilder().append("Malformed mime type: ").append(v4).toString());
                    v5_1 = 0;
                    break;
                }
            }
        } else {
            v5_1 = 0;
        }
        return v5_1;
    }

    private void updateIntentFilterFragmentUi()
    {
        this.mAddActionButton.setEnabled(1);
        this.mAddActionButton.setEnabled(1);
        this.mDataSchemesSpinner.setEnabled(1);
        this.mAddDataSchemeAction.setEnabled(1);
        return;
    }

    public void onClick(android.view.View p8)
    {
        int v1 = 0;
        switch (p8.getId()) {
            case 2131296347:
                if (this.getIntentFilter() == null) {
                    android.widget.Toast.makeText(this.getActivity(), this.getString(2131689529), 0).show();
                } else {
                    this.mDevicePolicyManagerGateway.getDevicePolicyManager().addCrossProfileIntentFilter(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), this.getIntentFilter(), this.getAddCrossProfileIntentFilterFlag());
                    android.widget.Toast.makeText(this.getActivity(), this.getString(2131689530), 0).show();
                    this.clearIntentOrIntentFilter();
                    this.updateStatusTextView();
                }
                v1 = 1;
                break;
        }
        if (v1 == 0) {
            super.onClick(p8);
        }
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p8, android.view.ViewGroup p9, android.os.Bundle p10)
    {
        android.widget.LinearLayout v0_1 = ((android.widget.LinearLayout) p8.inflate(2131427373, 0));
        v0_1.addView(super.onCreateView(p8, p9, p10));
        this.mCrossProfileDirectionSpinner = ((android.widget.Spinner) v0_1.findViewById(2131296388));
        this.mCrossProfileDirectionSpinner.setAdapter(new android.widget.ArrayAdapter(this.getActivity(), 17367048, java.util.Arrays.asList(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.CROSS_PROFILE_INTENT_DIRECTIONS)));
        this.updateIntentFilterFragmentUi();
        return v0_1;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131689531);
        return;
    }

    protected void updateStatusTextView()
    {
        StringBuilder v0_1 = new StringBuilder();
        if (!this.mActions.isEmpty()) {
            v0_1.append(this.getString(2131689517)).append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
            this.dumpSet(v0_1, this.mActions);
            v0_1.append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
        }
        if (!this.mCategories.isEmpty()) {
            v0_1.append(this.getString(2131689606)).append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
            this.dumpSet(v0_1, this.mCategories);
            v0_1.append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
        }
        if (!this.mDataSchemes.isEmpty()) {
            v0_1.append(this.getString(2131689669)).append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
            this.dumpSet(v0_1, this.mDataSchemes);
            v0_1.append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
        }
        if (!this.mDataTypes.isEmpty()) {
            v0_1.append(this.getString(2131689670)).append(com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment.NEW_LINE);
            this.dumpSet(v0_1, this.mDataTypes);
        }
        this.mStatusTextView.setText(v0_1.toString());
        return;
    }
}
