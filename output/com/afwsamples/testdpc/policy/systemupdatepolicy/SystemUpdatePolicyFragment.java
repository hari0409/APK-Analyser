package com.afwsamples.testdpc.policy.systemupdatepolicy;
public class SystemUpdatePolicyFragment extends android.app.Fragment implements android.view.View$OnClickListener, android.widget.RadioGroup$OnCheckedChangeListener {
    private android.widget.EditText mCurrentSystemUpdatePolicy;
    private android.app.admin.DevicePolicyManager mDpm;
    private com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter mFreezePeriodAdapter;
    private android.widget.ListView mFreezePeriodList;
    private android.widget.LinearLayout mFreezePeriodPanel;
    private java.util.ArrayList mFreezePeriods;
    private int mMaintenanceEnd;
    private int mMaintenanceStart;
    private android.widget.LinearLayout mMaintenanceWindowDetails;
    private android.widget.Button mSetMaintenanceWindowEnd;
    private android.widget.Button mSetMaintenanceWindowStart;
    private android.widget.RadioGroup mSystemUpdatePolicySelection;

    public SystemUpdatePolicyFragment()
    {
        this.mFreezePeriods = new java.util.ArrayList();
        return;
    }

    static synthetic void access$000(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment p0, com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult p1, java.time.LocalDate p2, java.time.LocalDate p3)
    {
        p0.promptToSetFreezePeriod(p1, p2, p3);
        return;
    }

    static synthetic com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter access$100(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment p1)
    {
        return p1.mFreezePeriodAdapter;
    }

    private String formatMinutes(int p5)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = Integer.valueOf((p5 / 60));
        v1_1[1] = Integer.valueOf((p5 % 60));
        return String.format("%02d:%02d", v1_1);
    }

    static final synthetic void lambda$null$186$SystemUpdatePolicyFragment(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult p0, java.time.LocalDate p1, java.time.LocalDate p2)
    {
        p0.onResult(p1, p2);
        return;
    }

    static final synthetic void lambda$showDatePicker$185$SystemUpdatePolicyFragment(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$DatePickResult p2, android.widget.DatePicker p3, int p4, int p5, int p6)
    {
        p2.onResult(java.time.LocalDate.of(p4, (p5 + 1), p6));
        return;
    }

    private void promptToSetFreezePeriod(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult p3, java.time.LocalDate p4, java.time.LocalDate p5)
    {
        this.showDatePicker(p4, 2131690299, new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$$Lambda$3(this, p5, p3));
        return;
    }

    private void reloadSystemUpdatePolicy()
    {
        android.app.admin.SystemUpdatePolicy v3 = this.mDpm.getSystemUpdatePolicy();
        String v4 = "Unknown";
        if (v3 != null) {
            switch (v3.getPolicyType()) {
                case 1:
                    v4 = "Automatic";
                    this.mSystemUpdatePolicySelection.check(2131296679);
                    this.mMaintenanceWindowDetails.setVisibility(4);
                    break;
                case 2:
                    this.mMaintenanceStart = v3.getInstallWindowStart();
                    this.mMaintenanceEnd = v3.getInstallWindowEnd();
                    java.util.ArrayList v6_2 = new Object[2];
                    v6_2[0] = this.formatMinutes(this.mMaintenanceStart);
                    v6_2[1] = this.formatMinutes(this.mMaintenanceEnd);
                    v4 = String.format("Windowed: %s-%s", v6_2);
                    this.updateMaintenanceWindowDisplay();
                    this.mSystemUpdatePolicySelection.check(2131296678);
                    this.mMaintenanceWindowDetails.setVisibility(0);
                    break;
                case 3:
                    v4 = "Postpone";
                    this.mSystemUpdatePolicySelection.check(2131296685);
                    this.mMaintenanceWindowDetails.setVisibility(4);
                    break;
            }
            if (com.afwsamples.testdpc.common.Util.SDK_INT >= 28) {
                java.util.List v0 = v3.getFreezePeriods();
                this.mFreezePeriods.clear();
                android.widget.LinearLayout v5_12 = v0.iterator();
                while (v5_12.hasNext()) {
                    android.app.admin.FreezePeriod v2_1 = ((android.app.admin.FreezePeriod) v5_12.next());
                    this.mFreezePeriods.add(new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period(v2_1.getStart(), v2_1.getEnd()));
                }
                this.mFreezePeriodAdapter.notifyDataSetChanged();
                this.mFreezePeriodPanel.setVisibility(0);
            }
        } else {
            v4 = "None";
            this.mSystemUpdatePolicySelection.check(2131296684);
            this.mMaintenanceWindowDetails.setVisibility(4);
            this.mFreezePeriodPanel.setVisibility(8);
        }
        this.mCurrentSystemUpdatePolicy.setText(v4);
        return;
    }

    private void selectTime(boolean p8)
    {
        int v6;
        if (!p8) {
            v6 = this.mMaintenanceEnd;
        } else {
            v6 = this.mMaintenanceStart;
        }
        new android.app.TimePickerDialog(this.getActivity(), new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$$Lambda$0(this, p8), (v6 / 60), (v6 % 60), 1).show();
        return;
    }

    private boolean setSystemUpdatePolicy()
    {
        android.app.admin.SystemUpdatePolicy v1;
        int v4_0 = 1;
        switch (this.mSystemUpdatePolicySelection.getCheckedRadioButtonId()) {
            case 2131296678:
                v1 = android.app.admin.SystemUpdatePolicy.createWindowedInstallPolicy(this.mMaintenanceStart, this.mMaintenanceEnd);
                break;
            case 2131296679:
                v1 = android.app.admin.SystemUpdatePolicy.createAutomaticInstallPolicy();
                break;
            case 2131296685:
                v1 = android.app.admin.SystemUpdatePolicy.createPostponeInstallPolicy();
                break;
            default:
                v1 = 0;
        }
        try {
            if ((com.afwsamples.testdpc.common.Util.SDK_INT < 28) || ((v1 == null) || (this.mFreezePeriods.size() == 0))) {
                this.mDpm.setSystemUpdatePolicy(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), v1);
                android.widget.Toast.makeText(this.getContext(), "Policy set successfully", 1).show();
            } else {
                java.util.ArrayList v3_1 = new java.util.ArrayList(this.mFreezePeriods.size());
                java.util.Iterator v5_7 = this.mFreezePeriods.iterator();
                while (v5_7.hasNext()) {
                    v3_1.add(((com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period) v5_7.next()).toFreezePeriod());
                }
                v1.setFreezePeriods(v3_1);
            }
        } catch (IllegalArgumentException v0) {
            android.widget.Toast.makeText(this.getContext(), new StringBuilder().append("Failed to set system update policy: ").append(v0.getMessage()).toString(), 1).show();
            v4_0 = 0;
        }
        return v4_0;
    }

    private void showDatePicker(java.time.LocalDate p7, int p8, com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$DatePickResult p9)
    {
        android.app.DatePickerDialog v0_1 = new android.app.DatePickerDialog(this.getActivity(), new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$$Lambda$2(p9), p7.getYear(), (p7.getMonth().getValue() - 1), p7.getDayOfMonth());
        v0_1.setTitle(this.getString(p8));
        v0_1.show();
        return;
    }

    private void updateMaintenanceWindowDisplay()
    {
        this.mSetMaintenanceWindowStart.setText(this.formatMinutes(this.mMaintenanceStart));
        this.mSetMaintenanceWindowEnd.setText(this.formatMinutes(this.mMaintenanceEnd));
        return;
    }

    final synthetic void lambda$onClick$184$SystemUpdatePolicyFragment(java.time.LocalDate p3, java.time.LocalDate p4)
    {
        com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period v0_1 = new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period();
        v0_1.set(p3, p4);
        this.mFreezePeriods.add(v0_1);
        this.mFreezePeriodAdapter.notifyDataSetChanged();
        return;
    }

    final synthetic void lambda$promptToSetFreezePeriod$187$SystemUpdatePolicyFragment(java.time.LocalDate p3, com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult p4, java.time.LocalDate p5)
    {
        if (p3.compareTo(p5) < 0) {
            p3 = p5;
        }
        this.showDatePicker(p3, 2131690298, new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$$Lambda$4(p4, p5));
        return;
    }

    final synthetic void lambda$selectTime$183$SystemUpdatePolicyFragment(boolean p2, android.widget.TimePicker p3, int p4, int p5)
    {
        if (!p2) {
            this.mMaintenanceEnd = ((p4 * 60) + p5);
        } else {
            this.mMaintenanceStart = ((p4 * 60) + p5);
        }
        this.updateMaintenanceWindowDisplay();
        return;
    }

    public void onCheckedChanged(android.widget.RadioGroup p4, int p5)
    {
        if (p5 != 2131296678) {
            this.mMaintenanceWindowDetails.setVisibility(4);
        } else {
            this.updateMaintenanceWindowDisplay();
            this.mMaintenanceWindowDetails.setVisibility(0);
        }
        if ((p5 != 2131296684) && (com.afwsamples.testdpc.common.Util.SDK_INT >= 28)) {
            this.mFreezePeriodPanel.setVisibility(0);
        } else {
            this.mFreezePeriodPanel.setVisibility(8);
        }
        return;
    }

    public void onClick(android.view.View p4)
    {
        switch (p4.getId()) {
            case 2131296682:
                this.promptToSetFreezePeriod(new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$$Lambda$1(this), java.time.LocalDate.now(), java.time.LocalDate.now());
            case 2131296683:
            case 2131296684:
            case 2131296685:
            case 2131296686:
            default:
                break;
            case 2131296683:
            case 2131296684:
            case 2131296685:
            case 2131296686:
                break;
            case 2131296683:
            case 2131296684:
            case 2131296685:
            case 2131296686:
                break;
            case 2131296683:
            case 2131296684:
            case 2131296685:
            case 2131296686:
                break;
            case 2131296687:
                if (!this.setSystemUpdatePolicy()) {
                } else {
                    this.reloadSystemUpdatePolicy();
                }
                break;
            case 2131296688:
                this.selectTime(0);
                break;
            case 2131296689:
                this.selectTime(1);
                break;
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p5, android.view.ViewGroup p6, android.os.Bundle p7)
    {
        int v1_31;
        android.view.View v0 = p5.inflate(2131427511, 0);
        this.mCurrentSystemUpdatePolicy = ((android.widget.EditText) v0.findViewById(2131296683));
        this.mSystemUpdatePolicySelection = ((android.widget.RadioGroup) v0.findViewById(2131296686));
        this.mMaintenanceWindowDetails = ((android.widget.LinearLayout) v0.findViewById(2131296690));
        this.mSetMaintenanceWindowStart = ((android.widget.Button) v0.findViewById(2131296689));
        this.mSetMaintenanceWindowEnd = ((android.widget.Button) v0.findViewById(2131296688));
        this.mFreezePeriodPanel = ((android.widget.LinearLayout) v0.findViewById(2131296681));
        this.mFreezePeriodList = ((android.widget.ListView) v0.findViewById(2131296680));
        this.mFreezePeriodAdapter = new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter(this, this.getContext(), this.mFreezePeriods);
        this.mFreezePeriodList.setAdapter(this.mFreezePeriodAdapter);
        this.mSetMaintenanceWindowStart.setOnClickListener(this);
        this.mSetMaintenanceWindowEnd.setOnClickListener(this);
        v0.findViewById(2131296687).setOnClickListener(this);
        v0.findViewById(2131296682).setOnClickListener(this);
        this.mSystemUpdatePolicySelection.setOnCheckedChangeListener(this);
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 28) {
            v1_31 = 8;
        } else {
            v1_31 = 0;
        }
        this.mFreezePeriodPanel.setVisibility(v1_31);
        return v0;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131690293);
        this.reloadSystemUpdatePolicy();
        return;
    }
}
