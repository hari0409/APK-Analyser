package com.afwsamples.testdpc;
public class SetupManagementFragment extends android.app.Fragment implements android.view.View$OnClickListener, com.afwsamples.testdpc.common.ColorPicker$OnColorSelectListener, android.widget.RadioGroup$OnCheckedChangeListener {
    public static final String FRAGMENT_TAG = "SetupManagementFragment";
    private static final int NO_COLOR_SPECIFIED = 255;
    private static final int REQUEST_GET_LOGO = 3;
    private static final int REQUEST_PROVISION_DEVICE_OWNER = 2;
    private static final int REQUEST_PROVISION_MANAGED_PROFILE = 1;
    private static final int[] STATE_COLLAPSED;
    private static final int[] STATE_EXPANDED;
    private android.widget.ImageView mColorPreviewView;
    private android.widget.TextView mColorValue;
    private int mCurrentColor;
    private android.widget.CheckBox mKeepAccountMigrated;
    private android.widget.ImageView mLogoPreviewView;
    private android.net.Uri mLogoUri;
    private android.widget.TextView mLogoValue;
    private android.widget.Button mNavigationNextButton;
    private android.widget.ImageButton mParamsIndicator;
    private android.view.View mParamsView;
    private android.widget.TextView mSetupManagementMessage;
    private android.widget.RadioGroup mSetupOptions;
    private android.widget.CheckBox mSkipEncryption;
    private android.widget.CheckBox mSkipUserConsent;

    static SetupManagementFragment()
    {
        int[] v0_0 = new int[1];
        v0_0[0] = 2130968905;
        com.afwsamples.testdpc.SetupManagementFragment.STATE_EXPANDED = v0_0;
        int[] v0_1 = new int[1];
        v0_1[0] = -2130968905;
        com.afwsamples.testdpc.SetupManagementFragment.STATE_COLLAPSED = v0_1;
        return;
    }

    public SetupManagementFragment()
    {
        this.mCurrentColor = -1;
        this.mLogoUri = 0;
        return;
    }

    private boolean canAnAppHandleGetContent()
    {
        int v0_1;
        if (this.getGetContentIntent().resolveActivity(this.getActivity().getPackageManager()) == null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private android.content.Intent getGetContentIntent()
    {
        android.content.Intent v0_1 = new android.content.Intent("android.intent.action.GET_CONTENT");
        v0_1.setType("image/*");
        return v0_1;
    }

    private void maybeLaunchProvisioning(String p6, int p7)
    {
        android.app.Activity v0 = this.getActivity();
        android.content.Intent v2_1 = new android.content.Intent(p6);
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 23) {
            v2_1.putExtra("android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME", this.getActivity().getPackageName());
        } else {
            v2_1.putExtra("android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME", com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()));
        }
        if (this.maybeSpecifyNExtras(v2_1)) {
            android.os.PersistableBundle v1_1 = new android.os.PersistableBundle();
            this.maybeSpecifySyncAuthExtras(v2_1, v1_1);
            this.maybePassAffiliationIds(v2_1, v1_1);
            this.specifySkipUserConsent(v2_1);
            this.specifyKeepAccountMigrated(v2_1);
            this.specifySkipEncryption(v2_1);
            this.specifyDefaultDisclaimers(v2_1);
            if (v1_1.size() > 0) {
                v2_1.putExtra("android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE", v1_1);
            }
            if (v2_1.resolveActivity(v0.getPackageManager()) == null) {
                android.widget.Toast.makeText(v0, 2131690092, 0).show();
            } else {
                this.startActivityForResult(v2_1, p7);
            }
        }
        return;
    }

    private void maybePassAffiliationIds(android.content.Intent p3, android.os.PersistableBundle p4)
    {
        if ((com.afwsamples.testdpc.common.Util.isDeviceOwner(this.getActivity())) && (("android.app.action.PROVISION_MANAGED_PROFILE".equals(p3.getAction())) && (com.afwsamples.testdpc.common.Util.SDK_INT >= 26))) {
            this.passAffiliationIds(p3, p4);
        }
        return;
    }

    private boolean maybeSpecifyNExtras(android.content.Intent p3)
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 24) {
            this.specifyLogoUri(p3);
            this.specifyColor(p3);
        }
        return 1;
    }

    private void maybeSpecifySyncAuthExtras(android.content.Intent p6, android.os.PersistableBundle p7)
    {
        android.app.Activity v1 = this.getActivity();
        android.content.Intent v2 = v1.getIntent();
        if (com.afwsamples.testdpc.common.LaunchIntentUtil.isSynchronousAuthLaunch(v2)) {
            android.accounts.Account v0 = com.afwsamples.testdpc.common.LaunchIntentUtil.getAddedAccount(v2);
            if (v0 != null) {
                if (com.afwsamples.testdpc.common.Util.SDK_INT < 22) {
                    android.widget.Toast.makeText(v1, 2131689945, 0).show();
                } else {
                    p6.putExtra("android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE", v0);
                }
            }
            com.afwsamples.testdpc.common.LaunchIntentUtil.prepareDeviceAdminExtras(v2, p7);
        }
        return;
    }

    private void passAffiliationIds(android.content.Intent p6, android.os.PersistableBundle p7)
    {
        String v0_1;
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl v1_1 = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(this.getActivity());
        java.util.Set v2 = v1_1.getAffiliationIds();
        if (v2.size() != 0) {
            v0_1 = ((String) v2.iterator().next());
        } else {
            v0_1 = Integer.toString(new java.security.SecureRandom().nextInt(1000000));
            v1_1.setAffiliationIds(java.util.Collections.singleton(v0_1));
        }
        p7.putString("affiliation_id", v0_1);
        return;
    }

    private static android.net.Uri resourceToUri(android.content.Context p3, int p4)
    {
        return android.net.Uri.parse(new StringBuilder().append("android.resource://").append(p3.getResources().getResourcePackageName(p4)).append(47).append(p3.getResources().getResourceTypeName(p4)).append(47).append(p3.getResources().getResourceEntryName(p4)).toString());
    }

    private boolean setProvisioningMethodsVisibility()
    {
        return ((0 | this.setVisibility("android.app.action.PROVISION_MANAGED_PROFILE", 2131296616)) | this.setVisibility("android.app.action.PROVISION_MANAGED_DEVICE", 2131296615));
    }

    private void setProvisioningModeSpecificUI()
    {
        int v1;
        int v0 = 1;
        android.widget.TextView v3_0 = 0;
        int v2 = this.mSetupOptions.getCheckedRadioButtonId();
        if (v2 != 2131296616) {
            v1 = 0;
        } else {
            v1 = 1;
        }
        if (v2 != 2131296615) {
            v0 = 0;
        }
        if ((com.afwsamples.testdpc.common.Util.SDK_INT < 26) || ((v1 == 0) || (!com.afwsamples.testdpc.common.Util.isDeviceOwner(this.getActivity())))) {
            int v4_4 = 8;
        } else {
            v4_4 = 0;
        }
        int v4_6;
        this.mSkipUserConsent.setVisibility(v4_4);
        if ((com.afwsamples.testdpc.common.Util.SDK_INT < 26) || (v1 == 0)) {
            v4_6 = 8;
        } else {
            v4_6 = 0;
        }
        this.mKeepAccountMigrated.setVisibility(v4_6);
        if (((v1 == 0) || (com.afwsamples.testdpc.common.Util.SDK_INT < 24)) && ((v0 == 0) || (com.afwsamples.testdpc.common.Util.SDK_INT < 23))) {
            v3_0 = 8;
        }
        this.mSkipEncryption.setVisibility(v3_0);
        if (com.afwsamples.testdpc.common.Util.isDeviceOwner(this.getActivity())) {
            this.mSetupManagementMessage.setText(2131690255);
        }
        return;
    }

    private boolean setVisibility(String p4, int p5)
    {
        int v0;
        int v1 = 0;
        if (!com.afwsamples.testdpc.common.ProvisioningStateUtil.isProvisioningAllowed(this.getActivity(), p4)) {
            v0 = 8;
        } else {
            v0 = 0;
        }
        this.getView().findViewById(p5).setVisibility(v0);
        if (v0 == 0) {
            v1 = 1;
        }
        return v1;
    }

    private void showNoProvisioningPossibleUI()
    {
        int v1_3;
        this.mNavigationNextButton.setVisibility(8);
        if (!com.afwsamples.testdpc.common.Util.isDeviceOwner(this.getActivity())) {
            v1_3 = 2131690090;
        } else {
            v1_3 = 2131690091;
        }
        ((android.widget.TextView) this.getView().findViewById(2131296617)).setText(v1_3);
        return;
    }

    private void specifyColor(android.content.Intent p3)
    {
        if (this.mCurrentColor != -1) {
            p3.putExtra("android.app.extra.PROVISIONING_MAIN_COLOR", this.mCurrentColor);
        }
        return;
    }

    private void specifyDefaultDisclaimers(android.content.Intent p6)
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
            android.os.Bundle v1_1 = new android.os.Bundle();
            v1_1.putString("android.app.extra.PROVISIONING_DISCLAIMER_HEADER", this.getString(2131689673));
            v1_1.putParcelable("android.app.extra.PROVISIONING_DISCLAIMER_CONTENT", com.afwsamples.testdpc.SetupManagementFragment.resourceToUri(this.getActivity(), 2131623937));
            android.os.Bundle v0_1 = new android.os.Bundle();
            v0_1.putString("android.app.extra.PROVISIONING_DISCLAIMER_HEADER", this.getString(2131689672));
            v0_1.putParcelable("android.app.extra.PROVISIONING_DISCLAIMER_CONTENT", com.afwsamples.testdpc.SetupManagementFragment.resourceToUri(this.getActivity(), 2131623936));
            android.os.Bundle[] v3_8 = new android.os.Bundle[2];
            v3_8[0] = v1_1;
            v3_8[1] = v0_1;
            p6.putExtra("android.app.extra.PROVISIONING_DISCLAIMERS", v3_8);
        }
        return;
    }

    private void specifyKeepAccountMigrated(android.content.Intent p3)
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 26) && (("android.app.action.PROVISION_MANAGED_PROFILE".equals(p3.getAction())) && (this.mKeepAccountMigrated.getVisibility() == 0))) {
            p3.putExtra("android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION", this.mKeepAccountMigrated.isChecked());
        }
        return;
    }

    private void specifyLogoUri(android.content.Intent p4)
    {
        if (this.mLogoUri != null) {
            p4.putExtra("android.app.extra.PROVISIONING_LOGO_URI", this.mLogoUri);
            if (this.mLogoUri.getScheme().equals("content")) {
                p4.setFlags(1);
                p4.setClipData(android.content.ClipData.newUri(this.getActivity().getContentResolver(), "", this.mLogoUri));
            }
        }
        return;
    }

    private void specifySkipEncryption(android.content.Intent p3)
    {
        if (this.mSkipEncryption.getVisibility() == 0) {
            p3.putExtra("android.app.extra.PROVISIONING_SKIP_ENCRYPTION", this.mSkipEncryption.isChecked());
        }
        return;
    }

    private void specifySkipUserConsent(android.content.Intent p3)
    {
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 26) && (("android.app.action.PROVISION_MANAGED_PROFILE".equals(p3.getAction())) && (this.mSkipUserConsent.getVisibility() == 0))) {
            p3.putExtra("android.app.extra.PROVISIONING_SKIP_USER_CONSENT", this.mSkipUserConsent.isChecked());
        }
        return;
    }

    private void updateColorUi()
    {
        if (this.mCurrentColor == -1) {
            this.mColorValue.setText("");
            this.mColorPreviewView.setVisibility(8);
        } else {
            android.widget.ImageView v0_1 = this.mColorValue;
            Object[] v2_1 = new Object[1];
            v2_1[0] = Integer.valueOf(this.mCurrentColor);
            v0_1.setText(String.format("#%08x", v2_1));
            this.mColorPreviewView.setImageTintList(android.content.res.ColorStateList.valueOf(this.mCurrentColor));
            this.mColorPreviewView.setVisibility(0);
        }
        return;
    }

    public void onActivityResult(int p5, int p6, android.content.Intent p7)
    {
        android.app.Activity v0 = this.getActivity();
        switch (p5) {
            case 1:
            case 2:
                if (p6 != -1) {
                    android.widget.Toast.makeText(v0, 2131690089, 0).show();
                } else {
                    v0.setResult(-1);
                    v0.finish();
                }
                break;
            case 3:
                if ((p7 == null) || (p7.getData() == null)) {
                } else {
                    this.mLogoUri = p7.getData();
                    this.mLogoValue.setText(this.mLogoUri.getLastPathSegment());
                    com.afwsamples.testdpc.common.Util.updateImageView(this.getActivity(), this.mLogoPreviewView, this.mLogoUri);
                }
                break;
        }
        return;
    }

    public void onCheckedChanged(android.widget.RadioGroup p1, int p2)
    {
        this.setProvisioningModeSpecificUI();
        return;
    }

    public void onClick(android.view.View p4)
    {
        switch (p4.getId()) {
            case 2131296371:
                com.afwsamples.testdpc.common.ColorPicker.newInstance(this.mCurrentColor, "SetupManagementFragment", "provisioningColor").show(this.getFragmentManager(), "colorPicker");
                break;
            case 2131296493:
                this.startActivityForResult(this.getGetContentIntent(), 3);
                break;
            case 2131296520:
                if (this.mParamsView.getVisibility() != 0) {
                    this.mParamsIndicator.setImageState(com.afwsamples.testdpc.SetupManagementFragment.STATE_EXPANDED, 0);
                    this.mParamsView.setVisibility(0);
                } else {
                    this.mParamsView.setVisibility(8);
                    this.mParamsIndicator.setImageState(com.afwsamples.testdpc.SetupManagementFragment.STATE_COLLAPSED, 0);
                }
                break;
        }
        return;
    }

    public void onColorSelected(int p1, String p2)
    {
        this.mCurrentColor = p1;
        this.updateColorUi();
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p9, android.view.ViewGroup p10, android.os.Bundle p11)
    {
        if (p11 != null) {
            this.mLogoUri = ((android.net.Uri) p11.getParcelable("android.app.extra.PROVISIONING_LOGO_URI"));
            this.mCurrentColor = p11.getInt("android.app.extra.PROVISIONING_MAIN_COLOR");
        }
        android.view.View v4 = p9.inflate(2131427445, p10, 0);
        com.android.setupwizardlib.GlifLayout v2_1 = ((com.android.setupwizardlib.GlifLayout) v4.findViewById(2131296619));
        this.mNavigationNextButton = ((android.widget.Button) v2_1.findViewById(2131296670));
        this.mNavigationNextButton.setOnClickListener(new com.afwsamples.testdpc.SetupManagementFragment$$Lambda$0(this));
        v2_1.findViewById(2131296433).setOnClickListener(new com.afwsamples.testdpc.SetupManagementFragment$$Lambda$1(this));
        this.mSetupManagementMessage = ((android.widget.TextView) v4.findViewById(2131296617));
        this.mSetupOptions = ((android.widget.RadioGroup) v4.findViewById(2131296618));
        this.mSetupOptions.setOnCheckedChangeListener(this);
        this.mSkipUserConsent = ((android.widget.CheckBox) v4.findViewById(2131296626));
        this.mKeepAccountMigrated = ((android.widget.CheckBox) v4.findViewById(2131296477));
        this.mSkipEncryption = ((android.widget.CheckBox) v4.findViewById(2131296624));
        this.mParamsView = v4.findViewById(2131296519);
        this.mParamsIndicator = ((android.widget.ImageButton) v4.findViewById(2131296520));
        this.mParamsIndicator.setOnClickListener(this);
        v4.findViewById(2131296371).setOnClickListener(this);
        this.mColorValue = ((android.widget.TextView) v4.findViewById(2131296603));
        this.mColorPreviewView = ((android.widget.ImageView) v4.findViewById(2131296541));
        this.updateColorUi();
        android.content.Intent v1 = this.getActivity().getIntent();
        if (com.afwsamples.testdpc.common.LaunchIntentUtil.isSynchronousAuthLaunch(v1)) {
            android.accounts.Account v0 = com.afwsamples.testdpc.common.LaunchIntentUtil.getAddedAccount(v1);
            if (v0 == null) {
                android.widget.Toast.makeText(this.getActivity(), 2131689870, 1).show();
            } else {
                v4.findViewById(2131296497).setVisibility(0);
                android.widget.TextView v3_1 = ((android.widget.TextView) v4.findViewById(2131296498));
                v3_1.setVisibility(0);
                v3_1.setText(v0.name);
            }
        }
        return v4;
    }

    public void onNavigateBack(android.view.View p2)
    {
        this.getActivity().onBackPressed();
        return;
    }

    public void onNavigateNext(android.view.View p3)
    {
        if (this.mSetupOptions.getCheckedRadioButtonId() != 2131296616) {
            this.maybeLaunchProvisioning("android.app.action.PROVISION_MANAGED_DEVICE", 2);
        } else {
            this.maybeLaunchProvisioning("android.app.action.PROVISION_MANAGED_PROFILE", 1);
        }
        return;
    }

    public void onResume()
    {
        super.onResume();
        if (!this.setProvisioningMethodsVisibility()) {
            this.showNoProvisioningPossibleUI();
        } else {
            if (com.afwsamples.testdpc.common.Util.SDK_INT >= 24) {
                this.getView().findViewById(2131296521).setVisibility(0);
                if (this.canAnAppHandleGetContent()) {
                    this.getView().findViewById(2131296363).setVisibility(0);
                    this.getView().findViewById(2131296493).setOnClickListener(this);
                    this.mLogoValue = ((android.widget.TextView) this.getView().findViewById(2131296605));
                    this.mLogoPreviewView = ((android.widget.ImageView) this.getView().findViewById(2131296542));
                }
                this.setProvisioningModeSpecificUI();
            }
        }
        return;
    }

    public void onSaveInstanceState(android.os.Bundle p3)
    {
        p3.putParcelable("android.app.extra.PROVISIONING_LOGO_URI", this.mLogoUri);
        p3.putInt("android.app.extra.PROVISIONING_MAIN_COLOR", this.mCurrentColor);
        super.onSaveInstanceState(p3);
        return;
    }
}
