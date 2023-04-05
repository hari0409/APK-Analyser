package com.afwsamples.testdpc.policy;
public class SetSupportMessageFragment extends android.app.Fragment implements android.view.View$OnClickListener {
    private static final String ARG_MESSAGE_TYPE = "message_type";
    public static final int TYPE_LONG = 1;
    public static final int TYPE_SHORT;
    private android.content.ComponentName mAdmin;
    private android.app.admin.DevicePolicyManager mDpm;
    private int mMessageType;
    private android.widget.EditText mSupportMessage;

    public SetSupportMessageFragment()
    {
        this.mMessageType = 0;
        return;
    }

    public static com.afwsamples.testdpc.policy.SetSupportMessageFragment newInstance(int p3)
    {
        com.afwsamples.testdpc.policy.SetSupportMessageFragment v1_1 = new com.afwsamples.testdpc.policy.SetSupportMessageFragment();
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putInt("message_type", p3);
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    public void onClick(android.view.View p4)
    {
        String v0 = 0;
        switch (p4.getId()) {
            case 2131296366:
                v0 = 0;
                break;
            case 2131296612:
                android.widget.EditText v1_0;
                if (this.mMessageType != 0) {
                    v1_0 = 2131689674;
                } else {
                    v1_0 = 2131689675;
                }
                v0 = this.getString(v1_0);
                break;
            case 2131296613:
                v0 = this.mSupportMessage.getText().toString();
                break;
        }
        if (this.mMessageType != 0) {
            this.mDpm.setLongSupportMessage(this.mAdmin, v0);
        } else {
            this.mDpm.setShortSupportMessage(this.mAdmin, v0);
        }
        this.mSupportMessage.setText(v0);
        return;
    }

    public void onCreate(android.os.Bundle p4)
    {
        super.onCreate(p4);
        android.os.Bundle v0 = this.getArguments();
        if (v0 != null) {
            this.mMessageType = v0.getInt("message_type");
        }
        android.content.ComponentName v1_1;
        String v2_0 = this.getActivity().getActionBar();
        if (this.mMessageType != 0) {
            v1_1 = 2131690211;
        } else {
            v1_1 = 2131690231;
        }
        v2_0.setTitle(v1_1);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mAdmin = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p5, android.view.ViewGroup p6, android.os.Bundle p7)
    {
        android.view.View v0 = p5.inflate(2131427442, p6, 0);
        v0.findViewById(2131296612).setOnClickListener(this);
        v0.findViewById(2131296613).setOnClickListener(this);
        v0.findViewById(2131296366).setOnClickListener(this);
        this.mSupportMessage = ((android.widget.EditText) v0.findViewById(2131296504));
        if (this.mMessageType != 0) {
            this.mSupportMessage.setText(this.mDpm.getLongSupportMessage(this.mAdmin));
        } else {
            this.mSupportMessage.setText(this.mDpm.getShortSupportMessage(this.mAdmin));
        }
        return v0;
    }
}
