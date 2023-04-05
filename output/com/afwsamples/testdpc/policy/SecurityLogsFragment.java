package com.afwsamples.testdpc.policy;
public class SecurityLogsFragment extends android.app.ListFragment {
    private static final String PRE_REBOOT_KEY = "pre-reboot";
    private static final String TAG = "ProcessLogsFragment";
    private android.widget.ArrayAdapter mAdapter;
    private android.content.ComponentName mAdminName;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private final java.util.ArrayList mLogs;
    private boolean mPreReboot;

    public SecurityLogsFragment()
    {
        this.mLogs = new java.util.ArrayList();
        return;
    }

    private long getEventId(android.app.admin.SecurityLog$SecurityEvent p3)
    {
        return p3.getId();
    }

    private java.util.List getLogs()
    {
        android.content.ComponentName v0;
        if (!this.hasSecurityLoggingDelegation()) {
            v0 = this.mAdminName;
        } else {
            v0 = 0;
        }
        java.util.List v1_2;
        if (!this.mPreReboot) {
            v1_2 = this.mDevicePolicyManager.retrieveSecurityLogs(v0);
        } else {
            v1_2 = this.mDevicePolicyManager.retrievePreRebootSecurityLogs(v0);
        }
        return v1_2;
    }

    private String getStringEventTagFromId(int p4)
    {
        String v0;
        switch (p4) {
            case 210001:
                v0 = "ADB_SHELL_INTERACTIVE";
                break;
            case 210002:
                v0 = "ADB_SHELL_CMD";
                break;
            case 210003:
                v0 = "SYNC_RECV_FILE";
                break;
            case 210004:
                v0 = "SYNC_SEND_FILE";
                break;
            case 210005:
                v0 = "APP_PROCESS_START";
                break;
            case 210006:
                v0 = "KEYGUARD_DISMISSED";
                break;
            case 210007:
                v0 = "KEYGUARD_DISMISS_AUTH_ATTEMPT";
                break;
            case 210008:
                v0 = "KEYGUARD_SECURED";
                break;
            case 210009:
                v0 = "OS_STARTUP";
                break;
            case 210010:
                v0 = "OS_SHUTDOWN";
                break;
            case 210011:
                v0 = "LOGGING_STARTED";
                break;
            case 210012:
                v0 = "LOGGING_STOPPED";
                break;
            case 210013:
                v0 = "MEDIA_MOUNT";
                break;
            case 210014:
                v0 = "MEDIA_UNMOUNT";
                break;
            case 210015:
                v0 = "LOG_BUFFER_SIZE_CRITICAL";
                break;
            case 210016:
                v0 = "PASSWORD_EXPIRATION_SET";
                break;
            case 210017:
                v0 = "PASSWORD_COMPLEXITY_SET";
                break;
            case 210018:
                v0 = "PASSWORD_HISTORY_LENGTH_SET";
                break;
            case 210019:
                v0 = "MAX_SCREEN_LOCK_TIMEOUT_SET";
                break;
            case 210020:
                v0 = "MAX_PASSWORD_ATTEMPTS_SET";
                break;
            case 210021:
                v0 = "KEYGUARD_DISABLED_FEATURES_SET";
                break;
            case 210022:
                v0 = "REMOTE_LOCK";
                break;
            case 210023:
                v0 = "WIPE_FAILURE";
                break;
            case 210024:
                v0 = "KEY_GENERATED";
                break;
            case 210025:
                v0 = "KEY_IMPORT";
                break;
            case 210026:
                v0 = "KEY_DESTRUCTION";
                break;
            case 210027:
                v0 = "USER_RESTRICTION_ADDED";
                break;
            case 210028:
                v0 = "USER_RESTRICTION_REMOVED";
                break;
            case 210029:
                v0 = "CERT_AUTHORITY_INSTALLED";
                break;
            case 210030:
                v0 = "CERT_AUTHORITY_REMOVED";
                break;
            case 210031:
                v0 = "CRYPTO_SELF_TEST_COMPLETED";
                break;
            case 210032:
                v0 = "KEY_INTEGRITY_VIOLATION";
                break;
            case 210033:
                v0 = "CERT_VALIDATION_FAILURE";
                break;
            default:
                v0 = new StringBuilder().append("UNKNOWN(").append(p4).append(")").toString();
        }
        return v0;
    }

    private boolean hasSecurityLoggingDelegation()
    {
        int v4 = 0;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 31) {
            java.util.List v0 = this.mDevicePolicyManager.getDelegatedScopes(0, this.getActivity().getPackageName());
            try {
                String v3 = com.afwsamples.testdpc.common.ReflectionUtil.stringConstant(android.app.admin.DevicePolicyManager, "DELEGATION_SECURITY_LOGGING");
            } catch (com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException v1) {
                android.util.Log.w("ProcessLogsFragment", "Failed to read DevicePolicyManager.DELEGATION_SECURITY_LOGGING", v1);
            }
            if ((v3 != null) && (v0.contains(v3))) {
                v4 = 1;
            }
        }
        return v4;
    }

    public static com.afwsamples.testdpc.policy.SecurityLogsFragment newInstance(boolean p3)
    {
        com.afwsamples.testdpc.policy.SecurityLogsFragment v1_1 = new com.afwsamples.testdpc.policy.SecurityLogsFragment();
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putBoolean("pre-reboot", p3);
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void printData(StringBuilder p4, Object p5)
    {
        if ((!(p5 instanceof Integer)) && ((!(p5 instanceof Long)) && ((!(p5 instanceof Float)) && (!(p5 instanceof String))))) {
            if ((p5 instanceof Object[])) {
                int v2_0 = ((Object[]) ((Object[]) p5)).length;
                int v1_1 = 0;
                while (v1_1 < v2_0) {
                    this.printData(p4, ((Object[]) ((Object[]) p5))[v1_1]);
                    v1_1++;
                }
            }
        } else {
            p4.append(p5.toString()).append(" ");
        }
        return;
    }

    private void processEvents(java.util.List p13)
    {
        if (p13 != null) {
            java.text.SimpleDateFormat v1_1 = new java.text.SimpleDateFormat("MM-dd HH:mm:ss.SSS");
            android.util.Log.d("ProcessLogsFragment", new StringBuilder().append("Incoming logs size: ").append(p13.size()).toString());
            int v5_0 = p13.iterator();
            while (v5_0.hasNext()) {
                android.app.admin.SecurityLog$SecurityEvent v0_1 = ((android.app.admin.SecurityLog$SecurityEvent) v5_0.next());
                StringBuilder v4_1 = new StringBuilder();
                if (com.afwsamples.testdpc.common.Util.SDK_INT >= 28) {
                    v4_1.append(new StringBuilder().append(this.getEventId(v0_1)).append(": ").toString());
                }
                v4_1.append(this.getStringEventTagFromId(v0_1.getTag()));
                v4_1.append(" (").append(v1_1.format(new java.util.Date(java.util.concurrent.TimeUnit.NANOSECONDS.toMillis(v0_1.getTimeNanos())))).append("): ");
                this.printData(v4_1, v0_1.getData());
                this.mAdapter.add(v4_1.toString());
            }
            android.widget.ListView v2 = this.getListView();
            v2.setSelection((v2.getCount() - 1));
        } else {
            int v5_7;
            android.util.Log.w("ProcessLogsFragment", "logs == null, are you polling too early?");
            if (!this.mPreReboot) {
                v5_7 = 2131689826;
            } else {
                v5_7 = 2131689825;
            }
            this.mAdapter.add(this.getString(v5_7));
        }
        return;
    }

    public void onActivityCreated(android.os.Bundle p7)
    {
        super.onActivityCreated(p7);
        android.widget.ArrayAdapter v1_0 = this.mAdapter;
        Object[] v3_1 = new Object[1];
        v3_1[0] = new java.util.Date().toString();
        v1_0.add(this.getString(2131690171, v3_1));
        try {
            this.processEvents(this.getLogs());
        } catch (SecurityException v0) {
            android.util.Log.e("ProcessLogsFragment", "Exception thrown when trying to retrieve security logs", v0);
            this.mAdapter.add(this.getString(2131689811));
        }
        return;
    }

    public void onCreate(android.os.Bundle p6)
    {
        super.onCreate(p6);
        this.mAdminName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mAdapter = new android.widget.ArrayAdapter(this.getActivity(), 17367043, 16908308, this.mLogs);
        this.mPreReboot = this.getArguments().getBoolean("pre-reboot");
        this.setListAdapter(this.mAdapter);
        return;
    }
}
