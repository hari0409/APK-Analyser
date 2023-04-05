package com.afwsamples.testdpc.common;
public abstract class IntentOrIntentFilterFragment extends android.app.Fragment implements android.view.View$OnClickListener, android.widget.AdapterView$OnItemSelectedListener {
    protected static final String[] ACTIONS_LIST = None;
    protected static final String[] CATEGORIES_LIST = None;
    private static final String CUSTOM = "Custom";
    private static final int CUSTOM_INPUT_TYPE_ACTIONS = 0;
    private static final int CUSTOM_INPUT_TYPE_CATEGORIES = 1;
    private static final int CUSTOM_INPUT_TYPE_DATA_TYPES = 3;
    private static final int CUSTOM_INPUT_TYPE_SCHEMES = 2;
    protected static final String[] DATA_SCHEMES_LIST;
    protected static final String[] DATA_TYPES_LIST;
    protected java.util.HashSet mActions;
    protected android.widget.Spinner mActionsSpinner;
    protected android.widget.Button mAddActionButton;
    protected android.widget.Button mAddButton;
    protected android.widget.Button mAddDataSchemeAction;
    protected android.widget.Button mAddDataTypeButton;
    protected java.util.HashSet mCategories;
    protected android.widget.Spinner mCategoriesSpinner;
    protected android.widget.Button mClearButton;
    protected java.util.HashSet mDataSchemes;
    protected android.widget.Spinner mDataSchemesSpinner;
    protected java.util.HashSet mDataTypes;
    protected android.widget.Spinner mDataTypesSpinner;
    protected com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;
    protected android.widget.TextView mStatusTextView;

    static IntentOrIntentFilterFragment()
    {
        String[] v0_5 = new String[21];
        v0_5[0] = "android.intent.action.MAIN";
        v0_5[1] = "android.intent.action.VIEW";
        v0_5[2] = "android.intent.action.ATTACH_DATA";
        v0_5[3] = "android.intent.action.EDIT";
        v0_5[4] = "android.intent.action.PICK";
        v0_5[5] = "android.intent.action.CHOOSER";
        v0_5[6] = "android.intent.action.GET_CONTENT";
        v0_5[7] = "android.intent.action.DIAL";
        v0_5[8] = "android.intent.action.CALL";
        v0_5[9] = "android.intent.action.SEND";
        v0_5[10] = "android.intent.action.SENDTO";
        v0_5[11] = "android.intent.action.ANSWER";
        v0_5[12] = "android.intent.action.INSERT";
        v0_5[13] = "android.intent.action.DELETE";
        v0_5[14] = "android.intent.action.RUN";
        v0_5[15] = "android.intent.action.SYNC";
        v0_5[16] = "android.intent.action.PICK_ACTIVITY";
        v0_5[17] = "android.intent.action.SEARCH";
        v0_5[18] = "android.intent.action.WEB_SEARCH";
        v0_5[19] = "android.intent.action.FACTORY_TEST";
        v0_5[20] = "Custom";
        com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.ACTIONS_LIST = v0_5;
        String[] v0_7 = new String[17];
        v0_7[0] = "android.intent.category.DEFAULT";
        v0_7[1] = "android.intent.category.BROWSABLE";
        v0_7[2] = "android.intent.category.TAB";
        v0_7[3] = "android.intent.category.ALTERNATIVE";
        v0_7[4] = "android.intent.category.SELECTED_ALTERNATIVE";
        v0_7[5] = "android.intent.category.LAUNCHER";
        v0_7[6] = "android.intent.category.INFO";
        v0_7[7] = "android.intent.category.HOME";
        v0_7[8] = "android.intent.category.PREFERENCE";
        v0_7[9] = "android.intent.category.TEST";
        v0_7[10] = "android.intent.category.CAR_DOCK";
        v0_7[11] = "android.intent.category.DESK_DOCK";
        v0_7[12] = "android.intent.category.LE_DESK_DOCK";
        v0_7[13] = "android.intent.category.HE_DESK_DOCK";
        v0_7[14] = "android.intent.category.CAR_MODE";
        v0_7[15] = "android.intent.category.APP_MARKET";
        v0_7[16] = "Custom";
        com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.CATEGORIES_LIST = v0_7;
        String[] v0_1 = new String[6];
        v0_1[0] = "http";
        v0_1[1] = "https";
        v0_1[2] = "tel";
        v0_1[3] = "mailto";
        v0_1[4] = "geo";
        v0_1[5] = "Custom";
        com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_SCHEMES_LIST = v0_1;
        String[] v0_3 = new String[11];
        v0_3[0] = "*/*";
        v0_3[1] = "text/plain";
        v0_3[2] = "image/*";
        v0_3[3] = "image/jpeg";
        v0_3[4] = "image/bmp";
        v0_3[5] = "image/gif";
        v0_3[6] = "image/jpg";
        v0_3[7] = "image/png";
        v0_3[8] = "video/wav";
        v0_3[9] = "video/mp4";
        v0_3[10] = "Custom";
        com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_TYPES_LIST = v0_3;
        return;
    }

    public IntentOrIntentFilterFragment()
    {
        this.mActions = new java.util.HashSet();
        this.mCategories = new java.util.HashSet();
        this.mDataSchemes = new java.util.HashSet();
        this.mDataTypes = new java.util.HashSet();
        return;
    }

    static synthetic void access$000(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment p0, int p1)
    {
        p0.resetSpinners(p1);
        return;
    }

    private void resetSpinners(int p3)
    {
        switch (p3) {
            case 0:
                this.mActionsSpinner.setSelection(0);
                break;
            case 1:
                this.mCategoriesSpinner.setSelection(0);
                break;
            case 2:
                this.mDataSchemesSpinner.setSelection(0);
                break;
            case 3:
                this.mDataTypesSpinner.setSelection(0);
                break;
        }
        return;
    }

    private void showCustomInputDialog(String p7, int p8)
    {
        android.view.View v1 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427446, 0);
        android.widget.EditText v0_1 = ((android.widget.EditText) v1.findViewById(2131296472));
        android.app.AlertDialog$Builder v2_1 = new android.app.AlertDialog$Builder(this.getActivity());
        v2_1.setView(v1);
        if (!android.text.TextUtils.isEmpty(p7)) {
            v2_1.setTitle(p7);
        }
        v2_1.setOnCancelListener(new com.afwsamples.testdpc.common.IntentOrIntentFilterFragment$1(this, p8));
        v2_1.setPositiveButton(2131689519, new com.afwsamples.testdpc.common.IntentOrIntentFilterFragment$2(this, p8, v0_1));
        v2_1.setNegativeButton(17039360, new com.afwsamples.testdpc.common.IntentOrIntentFilterFragment$3(this, p8));
        v2_1.show();
        return;
    }

    protected void clearIntentOrIntentFilter()
    {
        this.mActions.clear();
        this.mAddActionButton.setEnabled(1);
        this.mCategories.clear();
        this.mDataSchemes.clear();
        this.mDataTypes.clear();
        return;
    }

    public void onClick(android.view.View p4)
    {
        switch (p4.getId()) {
            case 2131296348:
                this.mActions.add(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.ACTIONS_LIST[this.mActionsSpinner.getSelectedItemPosition()]);
                this.updateStatusTextView();
                break;
            case 2131296349:
                this.mCategories.add(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.CATEGORIES_LIST[this.mCategoriesSpinner.getSelectedItemPosition()]);
                this.updateStatusTextView();
                break;
            case 2131296350:
                this.mDataSchemes.add(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_SCHEMES_LIST[this.mDataSchemesSpinner.getSelectedItemPosition()]);
                this.updateStatusTextView();
                break;
            case 2131296351:
                this.mDataTypes.add(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_TYPES_LIST[this.mDataTypesSpinner.getSelectedItemPosition()]);
                this.updateStatusTextView();
                break;
            case 2131296352:
                this.clearIntentOrIntentFilter();
                this.updateStatusTextView();
                break;
        }
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p8, android.view.ViewGroup p9, android.os.Bundle p10)
    {
        android.app.Activity v0 = this.getActivity();
        this.mDevicePolicyManagerGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(v0);
        android.view.View v2 = p8.inflate(2131427361, 0);
        this.mActionsSpinner = ((android.widget.Spinner) v2.findViewById(2131296487));
        this.mActionsSpinner.setAdapter(new android.widget.ArrayAdapter(v0, 17367048, java.util.Arrays.asList(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.ACTIONS_LIST)));
        this.mActionsSpinner.setOnItemSelectedListener(this);
        this.mAddActionButton = ((android.widget.Button) v2.findViewById(2131296348));
        this.mAddActionButton.setOnClickListener(this);
        this.mCategoriesSpinner = ((android.widget.Spinner) v2.findViewById(2131296488));
        this.mCategoriesSpinner.setAdapter(new android.widget.ArrayAdapter(v0, 17367048, java.util.Arrays.asList(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.CATEGORIES_LIST)));
        this.mCategoriesSpinner.setOnItemSelectedListener(this);
        ((android.widget.Button) v2.findViewById(2131296349)).setOnClickListener(this);
        this.mDataSchemesSpinner = ((android.widget.Spinner) v2.findViewById(2131296489));
        this.mDataSchemesSpinner.setAdapter(new android.widget.ArrayAdapter(v0, 17367048, java.util.Arrays.asList(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_SCHEMES_LIST)));
        this.mDataSchemesSpinner.setOnItemSelectedListener(this);
        this.mAddDataSchemeAction = ((android.widget.Button) v2.findViewById(2131296350));
        this.mAddDataSchemeAction.setOnClickListener(this);
        this.mDataTypesSpinner = ((android.widget.Spinner) v2.findViewById(2131296490));
        this.mDataTypesSpinner.setAdapter(new android.widget.ArrayAdapter(v0, 17367048, java.util.Arrays.asList(com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_TYPES_LIST)));
        this.mDataTypesSpinner.setOnItemSelectedListener(this);
        this.mAddDataTypeButton = ((android.widget.Button) v2.findViewById(2131296351));
        this.mAddDataTypeButton.setOnClickListener(this);
        this.mStatusTextView = ((android.widget.TextView) v2.findViewById(2131296713));
        this.mAddButton = ((android.widget.Button) v2.findViewById(2131296347));
        this.mAddButton.setOnClickListener(this);
        this.mClearButton = ((android.widget.Button) v2.findViewById(2131296352));
        this.mClearButton.setOnClickListener(this);
        return v2;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        switch (p3.getId()) {
            case 2131296487:
                if (p5 != (com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.ACTIONS_LIST.length - 1)) {
                } else {
                    this.showCustomInputDialog(this.getString(2131689517), 0);
                }
                break;
            case 2131296488:
                if (p5 != (com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.CATEGORIES_LIST.length - 1)) {
                } else {
                    this.showCustomInputDialog(this.getString(2131689606), 1);
                }
                break;
            case 2131296489:
                if (p5 != (com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_SCHEMES_LIST.length - 1)) {
                } else {
                    this.showCustomInputDialog(this.getString(2131689669), 2);
                }
                break;
            case 2131296490:
                if (p5 != (com.afwsamples.testdpc.common.IntentOrIntentFilterFragment.DATA_TYPES_LIST.length - 1)) {
                } else {
                    this.showCustomInputDialog(this.getString(2131689670), 3);
                }
                break;
        }
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }

    protected abstract void updateStatusTextView();
}
