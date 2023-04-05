package com.afwsamples.testdpc.policy.networking;
public class PrivateDnsModeFragment extends android.app.Fragment implements android.view.View$OnClickListener, android.widget.RadioGroup$OnCheckedChangeListener {
    static final int PRIVATE_DNS_MODE_OFF = 1;
    static final int PRIVATE_DNS_MODE_OPPORTUNISTIC = 2;
    static final int PRIVATE_DNS_MODE_PROVIDER_HOSTNAME = 3;
    static final int PRIVATE_DNS_MODE_UNKNOWN = 0;
    private static final String TAG = "PDNS_FRAG";
    private android.widget.EditText mCurrentResolver;
    private android.app.admin.DevicePolicyManager mDpm;
    private android.widget.RadioGroup mPrivateDnsModeSelection;
    private int mSelectedMode;
    private android.widget.Button mSetButton;

    public PrivateDnsModeFragment()
    {
        return;
    }

    private String getPrivateDnsHost()
    {
        try {
            String v1_1 = this.mDpm.getGlobalPrivateDnsHost(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()));
        } catch (SecurityException v0) {
            android.util.Log.w("PDNS_FRAG", "Failure getting host", v0);
            v1_1 = "<error getting resolver>";
        }
        return v1_1;
    }

    private int getPrivateDnsMode()
    {
        try {
            int v1_1 = this.mDpm.getGlobalPrivateDnsMode(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()));
        } catch (SecurityException v0) {
            android.util.Log.w("PDNS_FRAG", "Failure getting current mode", v0);
            v1_1 = 0;
        }
        return v1_1;
    }

    private void setPrivateDnsMode(int p8, String p9)
    {
        int v3_2 = new Object[2];
        v3_2[0] = Integer.valueOf(this.mSelectedMode);
        v3_2[1] = p9;
        android.util.Log.w("PDNS_FRAG", String.format("Setting mode %d host %s", v3_2));
        Void[] v1_3 = new Void[0];
        new com.afwsamples.testdpc.policy.networking.SetPrivateDnsTask(this.mDpm, com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), p8, p9, new com.afwsamples.testdpc.policy.networking.PrivateDnsModeFragment$$Lambda$0(this)).execute(v1_3);
        return;
    }

    private void updateSelectedMode(int p4)
    {
        switch (p4) {
            case 2131296545:
                this.mSelectedMode = 2;
                this.mSetButton.setEnabled(1);
                break;
            case 2131296546:
            case 2131296548:
            default:
                this.mSelectedMode = 0;
                this.mSetButton.setEnabled(0);
                break;
            case 2131296547:
                this.mSelectedMode = 1;
                this.mSetButton.setEnabled(0);
                break;
            case 2131296549:
                this.mSelectedMode = 3;
                this.mSetButton.setEnabled(1);
                break;
        }
        return;
    }

    final synthetic void lambda$setPrivateDnsMode$194$PrivateDnsModeFragment(int p4, Object[] p5)
    {
        android.widget.Toast.makeText(this.getActivity(), this.getString(p4, p5), 1).show();
        return;
    }

    public void onCheckedChanged(android.widget.RadioGroup p1, int p2)
    {
        this.updateSelectedMode(p2);
        return;
    }

    public void onClick(android.view.View p3)
    {
        this.setPrivateDnsMode(this.mSelectedMode, this.mCurrentResolver.getText().toString());
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mSelectedMode = 0;
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p5, android.view.ViewGroup p6, android.os.Bundle p7)
    {
        android.view.View v1 = p5.inflate(2131427430, 0);
        this.mSetButton = ((android.widget.Button) v1.findViewById(2131296544));
        this.mSetButton.setOnClickListener(this);
        this.mPrivateDnsModeSelection = ((android.widget.RadioGroup) v1.findViewById(2131296548));
        switch (this.getPrivateDnsMode()) {
            case 1:
                this.mPrivateDnsModeSelection.check(2131296547);
                break;
            case 2:
                this.mPrivateDnsModeSelection.check(2131296545);
                break;
            case 3:
                this.mPrivateDnsModeSelection.check(2131296549);
                break;
            default:
                this.mPrivateDnsModeSelection.check(2131296550);
        }
        this.mPrivateDnsModeSelection.setOnCheckedChangeListener(this);
        this.updateSelectedMode(this.mPrivateDnsModeSelection.getCheckedRadioButtonId());
        this.mCurrentResolver = ((android.widget.EditText) v1.findViewById(2131296551));
        this.mCurrentResolver.setText(this.getPrivateDnsHost());
        return v1;
    }
}
