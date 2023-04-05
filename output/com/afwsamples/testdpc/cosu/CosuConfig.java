package com.afwsamples.testdpc.cosu;
 class CosuConfig {
    private static final String ATTRIBUTE_DOWNLOAD_LOCATION = "download-location";
    private static final String ATTRIBUTE_MODE = "mode";
    private static final String ATTRIBUTE_NAME = "name";
    private static final String ATTRIBUTE_PACKAGE_NAME = "package-name";
    private static final String ATTRIBUTE_VALUE = "value";
    private static final String NEW_LINE = "";
    private static final String TAG_APP = "app";
    private static final String TAG_COSU_CONFIG = "cosu-config";
    private static final String TAG_DISABLE_CAMERA = "disable-camera";
    private static final String TAG_DISABLE_KEYGUARD = "disable-keyguard";
    private static final String TAG_DISABLE_SCREEN_CAPTURE = "disable-screen-capture";
    private static final String TAG_DISABLE_STATUS_BAR = "disable-status-bar";
    private static final String TAG_DOWNLOAD_APPS = "download-apps";
    private static final String TAG_ENABLE_APPS = "enable-apps";
    private static final String TAG_GLOBAL_SETTING = "global-setting";
    private static final String TAG_HIDE_APPS = "hide-apps";
    private static final String TAG_KIOSK_APPS = "kiosk-apps";
    private static final String TAG_POLICIES = "policies";
    private static final String TAG_USER_RESTRICTION = "user-restriction";
    private android.content.Context mContext;
    private boolean mDisableCamera;
    private boolean mDisableKeyguard;
    private boolean mDisableScreenCapture;
    private boolean mDisableStatusBar;
    private java.util.Set mDownloadApps;
    private android.app.DownloadManager mDownloadManager;
    private java.util.Set mEnableSystemApps;
    private java.util.Set mGlobalSettings;
    private java.util.Set mHideApps;
    private java.util.Set mKioskApps;
    private String mMode;
    private java.util.Set mUserRestrictions;

    static CosuConfig()
    {
        com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE = System.getProperty("line.separator");
        return;
    }

    private CosuConfig(android.content.Context p5, java.io.InputStream p6)
    {
        this.mHideApps = new java.util.HashSet();
        this.mEnableSystemApps = new java.util.HashSet();
        this.mKioskApps = new java.util.HashSet();
        this.mDownloadApps = new java.util.HashSet();
        this.mUserRestrictions = new java.util.HashSet();
        this.mGlobalSettings = new java.util.HashSet();
        this.mDisableStatusBar = 0;
        this.mDisableKeyguard = 0;
        this.mDisableScreenCapture = 0;
        this.mDisableCamera = 0;
        this.mContext = p5;
        this.mDownloadManager = ((android.app.DownloadManager) this.mContext.getSystemService("download"));
        try {
            org.xmlpull.v1.XmlPullParser v1 = android.util.Xml.newPullParser();
            v1.setInput(p6, 0);
        } catch (java.util.Set v2_33) {
            p6.close();
            throw v2_33;
        }
        while (v1.next() != 1) {
            if (v1.getEventType() == 2) {
                String v0 = v1.getName();
                if (!"cosu-config".equals(v0)) {
                    if (!"policies".equals(v0)) {
                        if (!"enable-apps".equals(v0)) {
                            if (!"hide-apps".equals(v0)) {
                                if (!"kiosk-apps".equals(v0)) {
                                    if ("download-apps".equals(v0)) {
                                        this.readDownloadApps(v1, this.mDownloadApps);
                                    }
                                } else {
                                    this.readApps(v1, this.mKioskApps);
                                }
                            } else {
                                this.readApps(v1, this.mHideApps);
                            }
                        } else {
                            this.readApps(v1, this.mEnableSystemApps);
                        }
                    } else {
                        this.readPolicies(v1);
                    }
                } else {
                    this.mMode = v1.getAttributeValue(0, "mode");
                }
            }
        }
        p6.close();
        return;
    }

    public static com.afwsamples.testdpc.cosu.CosuConfig createConfig(android.content.Context p3, java.io.InputStream p4)
    {
        try {
            int v1_1 = new com.afwsamples.testdpc.cosu.CosuConfig(p3, p4);
        } catch (java.io.IOException v0) {
            android.util.Log.e("CosuSetup", "Exception during config creation.", v0);
            v1_1 = 0;
        } catch (java.io.IOException v0) {
        }
        return v1_1;
    }

    private void disableKeyGuardAndStatusBar(android.app.admin.DevicePolicyManager p2, android.content.ComponentName p3)
    {
        p2.setStatusBarDisabled(p3, this.mDisableStatusBar);
        p2.setKeyguardDisabled(p3, this.mDisableKeyguard);
        return;
    }

    private void dumpSet(StringBuilder p5, java.util.Set p6)
    {
        java.util.Iterator v1 = p6.iterator();
        while (v1.hasNext()) {
            p5.append("  ").append(v1.next().toString()).append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        }
        return;
    }

    private void readApps(org.xmlpull.v1.XmlPullParser p5, java.util.Set p6)
    {
        while (p5.next() != 3) {
            if ((p5.getEventType() == 2) && ("app".equals(p5.getName()))) {
                String v1 = p5.getAttributeValue(0, "package-name");
                if (v1 != null) {
                    p6.add(v1);
                }
                this.skipCurrentTag(p5);
            }
        }
        return;
    }

    private void readDownloadApps(org.xmlpull.v1.XmlPullParser p7, java.util.Set p8)
    {
        while (p7.next() != 3) {
            if ((p7.getEventType() == 2) && ("app".equals(p7.getName()))) {
                String v2 = p7.getAttributeValue(0, "package-name");
                String v0 = p7.getAttributeValue(0, "download-location");
                if ((v2 != null) && (v0 != null)) {
                    p8.add(new com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo(this, v2, v0));
                }
                this.skipCurrentTag(p7);
            }
        }
        return;
    }

    private void readPolicies(org.xmlpull.v1.XmlPullParser p8)
    {
        while (p8.next() != 3) {
            if (p8.getEventType() == 2) {
                String v0 = p8.getName();
                if (!"user-restriction".equals(v0)) {
                    if (!"global-setting".equals(v0)) {
                        if (!"disable-status-bar".equals(v0)) {
                            if (!"disable-keyguard".equals(v0)) {
                                if (!"disable-camera".equals(v0)) {
                                    if ("disable-screen-capture".equals(v0)) {
                                        this.mDisableScreenCapture = Boolean.parseBoolean(p8.getAttributeValue(0, "value"));
                                    }
                                } else {
                                    this.mDisableCamera = Boolean.parseBoolean(p8.getAttributeValue(0, "value"));
                                }
                            } else {
                                this.mDisableKeyguard = Boolean.parseBoolean(p8.getAttributeValue(0, "value"));
                            }
                        } else {
                            this.mDisableStatusBar = Boolean.parseBoolean(p8.getAttributeValue(0, "value"));
                        }
                    } else {
                        String v1 = p8.getAttributeValue(0, "name");
                        String v3 = p8.getAttributeValue(0, "value");
                        if ((v1 != null) && (v3 != null)) {
                            this.mGlobalSettings.add(new com.afwsamples.testdpc.cosu.CosuConfig$GlobalSetting(this, v1, v3));
                        }
                    }
                } else {
                    String v2 = p8.getAttributeValue(0, "name");
                    if (v2 != null) {
                        this.mUserRestrictions.add(v2);
                    }
                }
                this.skipCurrentTag(p8);
            }
        }
        return;
    }

    private void skipCurrentTag(org.xmlpull.v1.XmlPullParser p4)
    {
        int v0 = p4.getDepth();
        do {
            int v1 = p4.next();
        } while((v1 != 1) && ((v1 != 3) || (p4.getDepth() > v0)));
        return;
    }

    public boolean applyPolicies(android.content.ComponentName p11)
    {
        int v5_0 = 1;
        android.app.admin.DevicePolicyManager v0_1 = ((android.app.admin.DevicePolicyManager) this.mContext.getSystemService("device_policy"));
        try {
            v0_1.setLockTaskPackages(p11, this.getKioskApps());
            boolean v6_1 = this.mHideApps.iterator();
        } catch (IllegalArgumentException v1) {
            android.util.Log.d("CosuSetup", "Exception when setting lock task packages", v1);
            v5_0 = 0;
            return v5_0;
        }
        while (v6_1.hasNext()) {
            v0_1.setApplicationHidden(p11, ((String) v6_1.next()), 1);
        }
        boolean v6_4 = this.mEnableSystemApps.iterator();
        while (v6_4.hasNext()) {
            String v3_1 = ((String) v6_4.next());
            try {
                v0_1.enableSystemApp(p11, v3_1);
            } catch (IllegalArgumentException v1) {
                android.util.Log.w("CosuSetup", new StringBuilder().append("Failed to enable ").append(v3_1).append(". Operation is only allowed for system apps.").toString());
            }
        }
        boolean v6_6 = this.mUserRestrictions.iterator();
        while (v6_6.hasNext()) {
            v0_1.addUserRestriction(p11, ((String) v6_6.next()));
        }
        boolean v6_8 = this.mGlobalSettings.iterator();
        while (v6_8.hasNext()) {
            com.afwsamples.testdpc.cosu.CosuConfig$GlobalSetting v2_1 = ((com.afwsamples.testdpc.cosu.CosuConfig$GlobalSetting) v6_8.next());
            v0_1.setGlobalSetting(p11, v2_1.key, v2_1.value);
        }
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 23) {
            this.disableKeyGuardAndStatusBar(v0_1, p11);
        }
        v0_1.setScreenCaptureDisabled(p11, this.mDisableScreenCapture);
        v0_1.setCameraDisabled(p11, this.mDisableCamera);
        return v5_0;
    }

    public boolean areAllInstallsFinished()
    {
        int v1_2 = this.mDownloadApps.iterator();
        while (v1_2.hasNext()) {
            if (!((com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo) v1_2.next()).installCompleted) {
                int v1_1 = 0;
            }
            return v1_1;
        }
        v1_1 = 1;
        return v1_1;
    }

    public String[] getKioskApps()
    {
        String[] v1_2 = new String[this.mKioskApps.size()];
        return ((String[]) this.mKioskApps.toArray(v1_2));
    }

    public String getMode()
    {
        return this.mMode;
    }

    public void initiateDownloadAndInstall(android.os.Handler p5)
    {
        java.util.Iterator v1_1 = this.mDownloadApps.iterator();
        while (v1_1.hasNext()) {
            com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo v0_1 = ((com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo) v1_1.next());
            v0_1.downloadId = com.afwsamples.testdpc.cosu.CosuUtils.startDownload(this.mDownloadManager, p5, v0_1.downloadLocation);
        }
        return;
    }

    public Long onDownloadComplete(Long p10)
    {
        Long v4_3 = this.mDownloadApps.iterator();
        while (v4_3.hasNext()) {
            com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo v0_1 = ((com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo) v4_3.next());
            if (p10.equals(v0_1.downloadId)) {
                v0_1.downloadCompleted = 1;
                try {
                    com.afwsamples.testdpc.common.PackageInstallationUtils.installPackage(this.mContext, new java.io.FileInputStream(this.mDownloadManager.openDownloadedFile(p10.longValue()).getFileDescriptor()), v0_1.packageName);
                } catch (java.io.IOException v1) {
                    android.util.Log.e("CosuSetup", new StringBuilder().append("Error installing package: ").append(v0_1.packageName).toString(), v1);
                    v0_1.installCompleted = 1;
                }
                Long v4_1 = v0_1.downloadId;
            }
            return v4_1;
        }
        android.util.Log.w("CosuSetup", new StringBuilder().append("Unknown download id: ").append(p10).toString());
        v4_1 = 0;
        return v4_1;
    }

    public void onInstallComplete(String p4)
    {
        int v1_2 = this.mDownloadApps.iterator();
        while (v1_2.hasNext()) {
            com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo v0_1 = ((com.afwsamples.testdpc.cosu.CosuConfig$DownloadAppInfo) v1_2.next());
            if (p4.equals(v0_1.packageName)) {
                v0_1.installCompleted = 1;
                break;
            }
        }
        return;
    }

    public String toString()
    {
        StringBuilder v0_1 = new StringBuilder();
        v0_1.append("Mode: ").append(this.mMode).append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        v0_1.append("Disable status bar: ").append(this.mDisableStatusBar).append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        v0_1.append("Disable keyguard: ").append(this.mDisableKeyguard).append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        v0_1.append("Disable screen capture: ").append(this.mDisableScreenCapture).append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        v0_1.append("Disable camera: ").append(this.mDisableCamera).append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        v0_1.append("User restrictions:").append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        this.dumpSet(v0_1, this.mUserRestrictions);
        v0_1.append("Global settings:").append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        this.dumpSet(v0_1, this.mGlobalSettings);
        v0_1.append("Hide apps:").append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        this.dumpSet(v0_1, this.mHideApps);
        v0_1.append("Enable system apps:").append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        this.dumpSet(v0_1, this.mEnableSystemApps);
        v0_1.append("Kiosk apps:").append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        this.dumpSet(v0_1, this.mKioskApps);
        v0_1.append("Download apps:").append(com.afwsamples.testdpc.cosu.CosuConfig.NEW_LINE);
        this.dumpSet(v0_1, this.mDownloadApps);
        return v0_1.toString();
    }
}
