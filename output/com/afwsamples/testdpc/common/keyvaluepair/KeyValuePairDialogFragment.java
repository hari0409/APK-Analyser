package com.afwsamples.testdpc.common.keyvaluepair;
public class KeyValuePairDialogFragment extends android.app.DialogFragment {
    static final String ARG_APP_NAME = "app_name";
    static final String ARG_CAN_EDIT_KEY = "can_edit_key";
    static final String ARG_DIALOG_TYPE = "dialog_type";
    static final String ARG_INITIAL_VALUE = "initial_value";
    static final String ARG_KEY = "key";
    static final String ARG_SUPPORTED_TYPE = "supported_type";
    public static final String RESULT_KEY = "key";
    public static final String RESULT_TYPE = "type";
    public static final String RESULT_VALUE = "value";
    private static final String[] TYPE_DISPLAY_STRING_ARRAY;
    private final com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$BundleArrayButtonOnClickListener bundleArrayButtonOnClickListener;
    private final com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$BundleButtonOnClickListener bundleButtonOnClickListener;
    private String mAppName;
    private android.widget.Switch mBoolView;
    private android.widget.Button mConfigureBundle;
    private android.widget.Button mConfigureBundleArray;
    private int mDialogType;
    private android.widget.EditText mIntView;
    private android.widget.EditText mKeyView;
    private com.afwsamples.testdpc.common.StringArrayTypeInputAdapter mStringArrayAdapter;
    private android.view.View mStringArrayContainer;
    private androidx.recyclerview.widget.RecyclerView mStringArrayList;
    private android.widget.EditText mStringView;
    private java.util.Set mSupportedTypes;
    private android.widget.Spinner mTypeSpinner;
    private android.view.View[] mValueViews;

    static KeyValuePairDialogFragment()
    {
        String[] v0_1 = new String[6];
        v0_1[0] = "Boolean";
        v0_1[1] = "Integer";
        v0_1[2] = "String";
        v0_1[3] = "String[]";
        v0_1[4] = "Bundle";
        v0_1[5] = "Bundle[]";
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.TYPE_DISPLAY_STRING_ARRAY = v0_1;
        return;
    }

    public KeyValuePairDialogFragment()
    {
        this.bundleButtonOnClickListener = new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$BundleButtonOnClickListener(this, 0);
        this.bundleArrayButtonOnClickListener = new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$BundleArrayButtonOnClickListener(this, 0);
        return;
    }

    static synthetic void access$1000(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p0, android.app.Fragment p1)
    {
        p0.showFragmentForFurtherInput(p1);
        return;
    }

    static synthetic android.widget.EditText access$200(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        return p1.mKeyView;
    }

    static synthetic void access$300(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p0, int p1)
    {
        p0.showToast(p1);
        return;
    }

    static synthetic int access$400(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        return p1.mDialogType;
    }

    static synthetic boolean access$500(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1, android.content.Intent p2)
    {
        return p1.putValueFromUiToResultIntent(p2);
    }

    static synthetic java.util.Set access$600(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        return p1.mSupportedTypes;
    }

    static synthetic void access$700(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p0, int p1)
    {
        p0.setDialogType(p1);
        return;
    }

    static synthetic com.afwsamples.testdpc.common.StringArrayTypeInputAdapter access$800(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        return p1.mStringArrayAdapter;
    }

    static synthetic String access$900(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        return p1.mAppName;
    }

    private void configureKeyView(boolean p2, String p3)
    {
        this.mKeyView.setEnabled(p2);
        this.mKeyView.setText(p3);
        return;
    }

    private void configureStringUi()
    {
        androidx.recyclerview.widget.LinearLayoutManager v0_1 = new androidx.recyclerview.widget.LinearLayoutManager(this.getActivity());
        v0_1.setOrientation(1);
        this.mStringArrayList.setLayoutManager(v0_1);
        this.mStringArrayAdapter = new com.afwsamples.testdpc.common.StringArrayTypeInputAdapter();
        this.mStringArrayList.setAdapter(this.mStringArrayAdapter);
        this.mStringArrayContainer.findViewById(2131296304).setOnClickListener(new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$4(this));
        return;
    }

    private void configureTypeSpinner()
    {
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$2 v0_1 = new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$2(this, this.getActivity(), 17367048, com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.TYPE_DISPLAY_STRING_ARRAY);
        v0_1.setDropDownViewResource(17367049);
        this.mTypeSpinner.setAdapter(v0_1);
        this.mTypeSpinner.setOnItemSelectedListener(new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$3(this));
        return;
    }

    private void configureUsingArguments()
    {
        android.os.Bundle v0 = this.getArguments();
        this.configureKeyView(v0.getBoolean("can_edit_key"), v0.getString("key"));
        this.setSupportedType(v0.getIntArray("supported_type"));
        this.setDialogType(v0.getInt("dialog_type"));
        this.populateInitialValue(v0.get("initial_value"));
        this.mAppName = v0.getString("app_name");
        return;
    }

    private android.app.AlertDialog createAlertDialog(android.view.View p5)
    {
        android.app.AlertDialog v0 = new android.app.AlertDialog$Builder(this.getActivity()).setView(p5).setCancelable(1).setPositiveButton(2131690163, 0).setNegativeButton(2131690162, 0).create();
        v0.setOnShowListener(new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$1(this, v0));
        return v0;
    }

    public static com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment newInstance(int p4, boolean p5, String p6, Object p7, int[] p8, String p9)
    {
        com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment v1_1 = new com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment();
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putInt("dialog_type", p4);
        v0_1.putBoolean("can_edit_key", p5);
        v0_1.putString("key", p6);
        if (p7 != null) {
            switch (p4) {
                case 0:
                    v0_1.putBoolean("initial_value", ((Boolean) p7).booleanValue());
                    break;
                case 1:
                    v0_1.putInt("initial_value", ((Integer) p7).intValue());
                    break;
                case 2:
                    v0_1.putString("initial_value", ((String) p7));
                    break;
                case 3:
                    v0_1.putStringArray("initial_value", ((String[]) ((String[]) p7)));
                    break;
                case 4:
                    v0_1.putBundle("initial_value", ((android.os.Bundle) p7));
                    break;
                case 5:
                    v0_1.putParcelableArray("initial_value", ((android.os.Bundle[]) ((android.os.Bundle[]) p7)));
                    break;
            }
        }
        v0_1.putIntArray("supported_type", p8);
        v0_1.putString("app_name", p9);
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void populateInitialValue(Object p4)
    {
        if (p4 != null) {
            switch (this.mDialogType) {
                case 0:
                    this.mBoolView.setChecked(((Boolean) p4).booleanValue());
                    break;
                case 1:
                    this.mIntView.setText(String.valueOf(((Integer) p4).intValue()));
                    break;
                case 2:
                    this.mStringView.setText(((String) p4));
                    break;
                case 3:
                    this.mStringArrayAdapter.setStringList(new java.util.ArrayList(java.util.Arrays.asList(((String[]) ((String[]) p4)))));
                    break;
                case 4:
                    this.bundleButtonOnClickListener.setBundle(((android.os.Bundle) p4));
                    break;
                case 5:
                    this.bundleArrayButtonOnClickListener.setBundleArray(((android.os.Bundle[]) ((android.os.Bundle[]) p4)));
                    break;
                default:
            }
        }
        return;
    }

    private boolean putValueFromUiToResultIntent(android.content.Intent p8)
    {
        int v3_0 = 0;
        switch (this.mDialogType) {
            case 0:
                p8.putExtra("value", this.mBoolView.isChecked());
                v3_0 = 1;
                break;
            case 1:
                try {
                    p8.putExtra("value", Integer.valueOf(this.mIntView.getText().toString()));
                    v3_0 = 1;
                } catch (NumberFormatException v0) {
                }
                break;
            case 2:
                p8.putExtra("value", this.mStringView.getText().toString());
                v3_0 = 1;
                break;
            case 3:
                int v3_4 = new String[0];
                p8.putExtra("value", ((String[]) this.mStringArrayAdapter.getStringList().toArray(v3_4)));
                v3_0 = 1;
                break;
            case 4:
                android.os.Bundle v1_0 = this.getArguments().getBundle("initial_value");
                if (v1_0 == null) {
                    v1_0 = new android.os.Bundle();
                }
                p8.putExtra("value", v1_0);
                v3_0 = 1;
                break;
            case 5:
                android.os.Bundle[] v2 = this.getArguments().getParcelableArray("initial_value");
                if (v2 == null) {
                    v2 = new android.os.Bundle[0];
                }
                p8.putExtra("value", v2);
                v3_0 = 1;
                break;
        }
        return v3_0;
    }

    private void setDialogType(int p4)
    {
        this.mDialogType = p4;
        this.mTypeSpinner.setSelection(p4);
        int v0 = 0;
        while (v0 < this.mValueViews.length) {
            if (this.mDialogType != v0) {
                this.mValueViews[v0].setVisibility(8);
            } else {
                this.mValueViews[v0].setVisibility(0);
            }
            v0++;
        }
        return;
    }

    private void setSupportedType(int[] p6)
    {
        java.util.HashSet v1_1 = new java.util.HashSet();
        int v3 = p6.length;
        int v2 = 0;
        while (v2 < v3) {
            v1_1.add(Integer.valueOf(p6[v2]));
            v2++;
        }
        this.mSupportedTypes = v1_1;
        return;
    }

    private void showFragmentForFurtherInput(android.app.Fragment p3)
    {
        this.getFragmentManager().beginTransaction().addToBackStack(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.getName()).hide(this.getTargetFragment()).add(2131296376, p3).commit();
        p3.setTargetFragment(this.getTargetFragment(), this.getTargetRequestCode());
        this.dismiss();
        return;
    }

    private void showToast(int p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 1).show();
        return;
    }

    public android.app.Dialog onCreateDialog(android.os.Bundle p6)
    {
        android.view.View v1 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427364, 0);
        this.mKeyView = ((android.widget.EditText) v1.findViewById(2131296478));
        this.mBoolView = ((android.widget.Switch) v1.findViewById(2131296723));
        this.mIntView = ((android.widget.EditText) v1.findViewById(2131296724));
        this.mStringView = ((android.widget.EditText) v1.findViewById(2131296727));
        this.mStringArrayContainer = v1.findViewById(2131296725);
        this.mStringArrayList = ((androidx.recyclerview.widget.RecyclerView) v1.findViewById(2131296726));
        this.mConfigureBundle = ((android.widget.Button) v1.findViewById(2131296374));
        this.mConfigureBundleArray = ((android.widget.Button) v1.findViewById(2131296375));
        android.app.AlertDialog v2_25 = new android.view.View[6];
        v2_25[0] = this.mBoolView;
        v2_25[1] = this.mIntView;
        v2_25[2] = this.mStringView;
        v2_25[3] = this.mStringArrayContainer;
        v2_25[4] = this.mConfigureBundle;
        v2_25[5] = this.mConfigureBundleArray;
        this.mValueViews = v2_25;
        this.mTypeSpinner = ((android.widget.Spinner) v1.findViewById(2131296714));
        this.mConfigureBundle.setOnClickListener(this.bundleButtonOnClickListener);
        this.mConfigureBundleArray.setOnClickListener(this.bundleArrayButtonOnClickListener);
        this.configureStringUi();
        this.configureTypeSpinner();
        this.configureUsingArguments();
        return this.createAlertDialog(v1);
    }
}
