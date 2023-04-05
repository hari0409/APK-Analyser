package com.afwsamples.testdpc.transferownership;
public class PickTransferComponentFragment extends android.app.Fragment {
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;

    public PickTransferComponentFragment()
    {
        return;
    }

    private String getStackTrace(Throwable p4)
    {
        java.io.StringWriter v1_1 = new java.io.StringWriter();
        p4.printStackTrace(new java.io.PrintWriter(v1_1));
        return v1_1.toString();
    }

    static final synthetic void lambda$onCreateView$0$PickTransferComponentFragment(android.widget.EditText p1, android.widget.AdapterView p2, android.view.View p3, int p4, long p5)
    {
        p1.setText(p2.getItemAtPosition(p4).toString());
        return;
    }

    private String performTransfer(android.content.ComponentName p8)
    {
        android.content.ComponentName v3 = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        android.util.Log.i(this.getClass().getName(), new StringBuilder().append("Transferring ownership from ").append(v3).append(" to target ").append(p8).toString());
        try {
            android.os.PersistableBundle v2_1 = new android.os.PersistableBundle();
            v2_1.putString("random_key", "random_value");
            this.mDevicePolicyManager.transferOwnership(v3, p8, v2_1);
            String v4_3 = "Success!";
        } catch (Exception v1) {
            reflect.InvocationTargetException v0_0 = v1.getCause();
            if (!(v0_0 instanceof reflect.InvocationTargetException)) {
                v4_3 = this.getStackTrace(v0_0);
            } else {
                v4_3 = this.getStackTrace(((reflect.InvocationTargetException) v0_0).getTargetException());
            }
        }
        return v4_3;
    }

    final synthetic void lambda$onCreateView$1$PickTransferComponentFragment(android.widget.EditText p3, android.widget.EditText p4, android.view.View p5)
    {
        android.content.ComponentName v0 = android.content.ComponentName.unflattenFromString(p3.getText().toString());
        if (v0 == null) {
            p4.setText(2131690320);
        } else {
            p4.setText(this.performTransfer(v0));
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p17, android.view.ViewGroup p18, android.os.Bundle p19)
    {
        android.view.ViewGroup v11_1 = ((android.view.ViewGroup) p17.inflate(2131427512, 0));
        android.widget.ListView v6_1 = ((android.widget.ListView) v11_1.findViewById(2131296484));
        android.widget.EditText v3_1 = ((android.widget.EditText) v11_1.findViewById(2131296373));
        android.widget.EditText v10_1 = ((android.widget.EditText) v11_1.findViewById(2131296573));
        android.widget.Button v12_1 = ((android.widget.Button) v11_1.findViewById(2131296712));
        android.content.Intent v4_1 = new android.content.Intent("android.app.action.DEVICE_ADMIN_ENABLED");
        java.util.ArrayList v5_1 = new java.util.ArrayList();
        com.afwsamples.testdpc.transferownership.PickTransferComponentFragment$$Lambda$1 v13_7 = this.getActivity().getPackageManager().queryBroadcastReceivers(v4_1, 0).iterator();
        while (v13_7.hasNext()) {
            android.content.pm.ActivityInfo v1 = ((android.content.pm.ResolveInfo) v13_7.next()).activityInfo;
            if (v1 != null) {
                v5_1.add(new StringBuilder().append(v1.packageName).append("/").append(v1.name).toString());
            }
        }
        v6_1.setAdapter(new android.widget.ArrayAdapter(this.getActivity(), 17367043, v5_1));
        v6_1.setOnItemClickListener(new com.afwsamples.testdpc.transferownership.PickTransferComponentFragment$$Lambda$0(v3_1));
        v12_1.setOnClickListener(new com.afwsamples.testdpc.transferownership.PickTransferComponentFragment$$Lambda$1(this, v3_1, v10_1));
        return v11_1;
    }
}
