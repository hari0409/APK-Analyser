package com.afwsamples.testdpc.profilepolicy.addsystemapps;
public class EnableSystemAppsByIntentFragment extends com.afwsamples.testdpc.common.IntentOrIntentFilterFragment {

    public EnableSystemAppsByIntentFragment()
    {
        return;
    }

    static synthetic android.widget.Spinner access$000(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1)
    {
        return p1.mActionsSpinner;
    }

    static synthetic java.util.HashSet access$100(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1)
    {
        return p1.mActions;
    }

    static synthetic java.util.HashSet access$200(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1)
    {
        return p1.mActions;
    }

    static synthetic android.widget.Spinner access$300(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1)
    {
        return p1.mActionsSpinner;
    }

    static synthetic android.widget.Spinner access$400(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1)
    {
        return p1.mActionsSpinner;
    }

    private void showCustomActionInputDialog()
    {
        android.view.View v1 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427446, 0);
        android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296472));
        android.app.AlertDialog$Builder v2_1 = new android.app.AlertDialog$Builder(this.getActivity());
        v2_1.setView(v1);
        v2_1.setTitle(this.getString(2131689517));
        v2_1.setOnCancelListener(new com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment$1(this));
        v2_1.setPositiveButton(2131689519, new com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment$2(this, v0_1));
        v2_1.setNegativeButton(17039360, new com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment$3(this));
        v2_1.show();
        return;
    }

    protected android.content.Intent getIntent()
    {
        if ((!this.mActions.isEmpty()) || (!this.mCategories.isEmpty())) {
            int v1_0 = new android.content.Intent();
            if (!this.mActions.isEmpty()) {
                v1_0.setAction(((String) this.mActions.iterator().next()));
            }
            java.util.Iterator v2_9 = this.mCategories.iterator();
            while (v2_9.hasNext()) {
                v1_0.addCategory(((String) v2_9.next()));
            }
        } else {
            v1_0 = 0;
        }
        return v1_0;
    }

    final synthetic void lambda$onClick$95$EnableSystemAppsByIntentFragment(Integer p4)
    {
        android.widget.Toast.makeText(this.getActivity(), 2131689787, 0).show();
        return;
    }

    final synthetic void lambda$onClick$96$EnableSystemAppsByIntentFragment(Exception p4)
    {
        android.widget.Toast.makeText(this.getActivity(), p4.getLocalizedMessage(), 0).show();
        return;
    }

    public void onClick(android.view.View p6)
    {
        int v1 = 0;
        switch (p6.getId()) {
            case 2131296347:
                android.content.Intent v0 = this.getIntent();
                if (v0 != null) {
                    this.mDevicePolicyManagerGateway.enableSystemApp(v0, new com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment$$Lambda$0(this), new com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment$$Lambda$1(this));
                } else {
                    android.widget.Toast.makeText(this.getActivity(), 2131689791, 0).show();
                }
                v1 = 1;
                break;
        }
        if (v1 == 0) {
            super.onClick(p6);
        }
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p5, android.view.ViewGroup p6, android.os.Bundle p7)
    {
        android.view.View v1 = super.onCreateView(p5, p6, p7);
        android.widget.Button v0_1 = ((android.widget.Button) v1.findViewById(2131296347));
        v1.findViewById(2131296393).setVisibility(8);
        v1.findViewById(2131296392).setVisibility(8);
        v1.findViewById(2131296395).setVisibility(8);
        v1.findViewById(2131296394).setVisibility(8);
        this.mAddActionButton.setVisibility(8);
        v0_1.setText(2131689781);
        return v1;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        switch (p3.getId()) {
            case 2131296487:
                if (p5 != (com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment.ACTIONS_LIST.length - 1)) {
                    this.mActions.clear();
                    this.mActions.add(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment.ACTIONS_LIST[p5]);
                    this.updateStatusTextView();
                } else {
                    this.showCustomActionInputDialog();
                }
                break;
            default:
                super.onItemSelected(p3, p4, p5, p6);
        }
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131689792);
        return;
    }

    protected void updateStatusTextView()
    {
        StringBuilder v4_1 = new StringBuilder();
        if (!this.mActions.isEmpty()) {
            v4_1.append(this.getString(2131689517));
            v4_1.append("\n");
        }
        android.widget.TextView v5_2 = this.mActions.iterator();
        while (v5_2.hasNext()) {
            v4_1.append(((String) v5_2.next()));
            v4_1.append("\n");
        }
        if (!this.mCategories.isEmpty()) {
            v4_1.append("\n");
            v4_1.append(this.getString(2131689606));
            v4_1.append("\n");
        }
        android.widget.TextView v5_11 = this.mCategories.iterator();
        while (v5_11.hasNext()) {
            v4_1.append(((String) v5_11.next()));
            v4_1.append("\n");
        }
        if (!this.mDataSchemes.isEmpty()) {
            v4_1.append("\n");
            v4_1.append(this.getString(2131689669));
            v4_1.append("\n");
        }
        android.widget.TextView v5_20 = this.mDataSchemes.iterator();
        while (v5_20.hasNext()) {
            v4_1.append(((String) v5_20.next()));
            v4_1.append("\n");
        }
        if (!this.mDataTypes.isEmpty()) {
            v4_1.append("\n");
            v4_1.append(this.getString(2131689670));
            v4_1.append("\n");
        }
        android.widget.TextView v5_29 = this.mDataTypes.iterator();
        while (v5_29.hasNext()) {
            v4_1.append(((String) v5_29.next()));
            v4_1.append("\n");
        }
        this.mStatusTextView.setText(v4_1.toString());
        return;
    }
}
