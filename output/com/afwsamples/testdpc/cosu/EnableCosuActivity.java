package com.afwsamples.testdpc.cosu;
public class EnableCosuActivity extends android.app.Activity {
    public static final String BUNDLE_KEY_COSU_CONFIG = "cosu-demo-config-location";
    private static final String MODE_CUSTOM = "custom";
    private static final String MODE_DEFAULT = "default";
    private static final String MODE_SINGLE = "single";
    private com.afwsamples.testdpc.cosu.CosuConfig mConfig;
    private Long mConfigDownloadId;
    private android.app.DownloadManager mDownloadManager;
    private android.content.BroadcastReceiver mDownloadReceiver;
    private android.os.Handler mHandler;
    private android.content.BroadcastReceiver mInstallReceiver;
    private android.widget.TextView mStatusText;

    public EnableCosuActivity()
    {
        this.mHandler = new com.afwsamples.testdpc.cosu.EnableCosuActivity$1(this);
        this.mDownloadReceiver = new com.afwsamples.testdpc.cosu.EnableCosuActivity$2(this);
        this.mInstallReceiver = new com.afwsamples.testdpc.cosu.EnableCosuActivity$3(this);
        return;
    }

    static synthetic Long access$000(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        return p1.mConfigDownloadId;
    }

    static synthetic void access$100(com.afwsamples.testdpc.cosu.EnableCosuActivity p0)
    {
        p0.onConfigFileDownloaded();
        return;
    }

    static synthetic com.afwsamples.testdpc.cosu.CosuConfig access$200(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        return p1.mConfig;
    }

    static synthetic void access$300(com.afwsamples.testdpc.cosu.EnableCosuActivity p0)
    {
        p0.startCosuMode();
        return;
    }

    static synthetic android.app.DownloadManager access$400(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        return p1.mDownloadManager;
    }

    static synthetic void access$500(com.afwsamples.testdpc.cosu.EnableCosuActivity p0)
    {
        p0.finishWithFailure();
        return;
    }

    static synthetic android.os.Handler access$600(com.afwsamples.testdpc.cosu.EnableCosuActivity p1)
    {
        return p1.mHandler;
    }

    private void finishWithFailure()
    {
        android.widget.Toast.makeText(this, 2131690247, 1).show();
        this.unregisterReceiver(this.mInstallReceiver);
        this.unregisterReceiver(this.mDownloadReceiver);
        this.mHandler.removeMessages(2);
        this.finish();
        return;
    }

    private void onConfigFileDownloaded()
    {
        this.mStatusText.setText(this.getString(2131690250));
        try {
            this.mConfig = com.afwsamples.testdpc.cosu.CosuConfig.createConfig(this, new java.io.FileInputStream(this.mDownloadManager.openDownloadedFile(this.mConfigDownloadId.longValue()).getFileDescriptor()));
        } catch (java.io.FileNotFoundException v0) {
            android.util.Log.e("CosuSetup", "Download file not found.", v0);
            this.finishWithFailure();
            return;
        }
        if (this.mConfig != null) {
            android.util.Log.d("CosuSetup", "CosuConfig:");
            android.util.Log.d("CosuSetup", this.mConfig.toString());
            if (this.mConfig.applyPolicies(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this))) {
                this.mConfig.initiateDownloadAndInstall(this.mHandler);
                this.mStatusText.setText(this.getString(2131690248));
                if (!this.mConfig.areAllInstallsFinished()) {
                    return;
                } else {
                    this.startCosuMode();
                    return;
                }
            } else {
                this.finishWithFailure();
                return;
            }
        } else {
            this.finishWithFailure();
            return;
        }
    }

    private void startCosuMode()
    {
        android.content.Intent v1_1 = 0;
        String v2 = this.mConfig.getMode();
        String[] v0 = this.mConfig.getKioskApps();
        if (v2 == null) {
            v2 = "default";
        }
        if (!"custom".equals(v2)) {
            if (!"single".equals(v2)) {
                v1_1 = new android.content.Intent("android.intent.action.MAIN");
                v1_1.addCategory("android.intent.category.HOME");
            } else {
                if (v0.length != 0) {
                    v1_1 = this.getPackageManager().getLaunchIntentForPackage(v0[0]);
                }
            }
        } else {
            v1_1 = new android.content.Intent(this, com.afwsamples.testdpc.policy.locktask.KioskModeActivity);
            v1_1.putExtra("com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST", v0);
            this.getPackageManager().setComponentEnabledSetting(new android.content.ComponentName(this.getPackageName(), com.afwsamples.testdpc.policy.locktask.KioskModeActivity.getName()), 1, 1);
        }
        if (v1_1 != null) {
            v1_1.addFlags(268435456);
            this.startActivity(v1_1);
            android.widget.Toast.makeText(this, 2131690251, 1).show();
            this.unregisterReceiver(this.mInstallReceiver);
            this.unregisterReceiver(this.mDownloadReceiver);
            if (this.mHandler.hasMessages(2)) {
                android.util.Log.w("CosuSetup", "Download timeout messages remaining on handler thread.");
                this.mHandler.removeMessages(2);
            }
            this.finish();
        } else {
            android.util.Log.e("CosuSetup", new StringBuilder().append("No launch intent specified. Mode=").append(v2).toString());
            this.finishWithFailure();
        }
        return;
    }

    protected void onCreate(android.os.Bundle p9)
    {
        super.onCreate(p9);
        if (((android.app.admin.DevicePolicyManager) this.getSystemService("device_policy")).isDeviceOwnerApp(this.getPackageName())) {
            android.os.PersistableBundle v4_1 = ((android.os.PersistableBundle) this.getIntent().getParcelableExtra("android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"));
            if (v4_1 != null) {
                this.setContentView(2131427379);
                com.android.setupwizardlib.SetupWizardLayout v2_1 = ((com.android.setupwizardlib.SetupWizardLayout) this.findViewById(2131296619));
                com.android.setupwizardlib.view.NavigationBar v3 = v2_1.getNavigationBar();
                v3.getNextButton().setVisibility(8);
                v3.getBackButton().setVisibility(8);
                v2_1.showProgressBar();
                this.mStatusText = ((android.widget.TextView) this.findViewById(2131296642));
                this.mDownloadManager = ((android.app.DownloadManager) this.getSystemService("download"));
                this.registerReceiver(this.mDownloadReceiver, new android.content.IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
                this.registerReceiver(this.mInstallReceiver, new android.content.IntentFilter("com.afwsamples.testdpc.INSTALL_COMPLETE"));
                String v0_1 = ((String) v4_1.get("cosu-demo-config-location"));
                if (v0_1 != null) {
                    this.mConfigDownloadId = com.afwsamples.testdpc.cosu.CosuUtils.startDownload(this.mDownloadManager, this.mHandler, v0_1);
                    this.mStatusText.setText(this.getString(2131690249));
                } else {
                    android.util.Log.e("CosuSetup", "No download-location specified");
                    this.finishWithFailure();
                }
            } else {
                android.util.Log.e("CosuSetup", "No admin extra bundle");
                this.finish();
            }
        } else {
            android.util.Log.e("CosuSetup", "TestDPC is not the device owner, cannot set up COSU device.");
            this.finish();
        }
        return;
    }
}
