package com.afwsamples.testdpc.policy;
public class SetUserSessionMessageFragment extends android.app.Fragment implements android.view.View$OnClickListener {
    private static final String TAG = "SetUserSessionMessage";
    private android.content.ComponentName mComponentName;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private android.widget.EditText mEndSessionMessage;
    private android.widget.EditText mStartSessionMessage;

    public SetUserSessionMessageFragment()
    {
        return;
    }

    public void onClick(android.view.View p5)
    {
        android.text.Editable v1 = 0;
        android.text.Editable v0 = 0;
        switch (p5.getId()) {
            case 2131296366:
                this.mStartSessionMessage.setText(0);
                this.mEndSessionMessage.setText(0);
                break;
            case 2131296613:
                v1 = this.mStartSessionMessage.getText();
                v0 = this.mEndSessionMessage.getText();
                break;
        }
        this.mDevicePolicyManager.setStartUserSessionMessage(this.mComponentName, v1);
        this.mDevicePolicyManager.setEndUserSessionMessage(this.mComponentName, v0);
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.getActivity().getActionBar().setTitle(2131690241);
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p5, android.view.ViewGroup p6, android.os.Bundle p7)
    {
        android.view.View v0 = p5.inflate(2131427443, p6, 0);
        v0.findViewById(2131296613).setOnClickListener(this);
        v0.findViewById(2131296366).setOnClickListener(this);
        this.mStartSessionMessage = ((android.widget.EditText) v0.findViewById(2131296639));
        this.mEndSessionMessage = ((android.widget.EditText) v0.findViewById(2131296429));
        this.mStartSessionMessage.setText(this.mDevicePolicyManager.getStartUserSessionMessage(this.mComponentName));
        this.mEndSessionMessage.setText(this.mDevicePolicyManager.getEndUserSessionMessage(this.mComponentName));
        return v0;
    }
}
