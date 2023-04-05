package com.afwsamples.testdpc;
public class PolicyManagementActivity extends com.afwsamples.testdpc.common.DumpableActivity implements android.app.FragmentManager$OnBackStackChangedListener {
    private static final String CMD_LOCK_TASK_MODE = "lock-task-mode";
    private static final String LOCK_MODE_ACTION_START = "start";
    private static final String LOCK_MODE_ACTION_STATUS = "status";
    private static final String LOCK_MODE_ACTION_STOP = "stop";
    private static final String TAG;
    private boolean mLockTaskMode;

    static PolicyManagementActivity()
    {
        com.afwsamples.testdpc.PolicyManagementActivity.TAG = com.afwsamples.testdpc.PolicyManagementActivity.getSimpleName();
        return;
    }

    public PolicyManagementActivity()
    {
        return;
    }

    private void dumpLockModeStatus(java.io.PrintWriter p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(this.mLockTaskMode);
        p5.printf("lock-task mode: %b\n", v1_1);
        return;
    }

    private void setLockTaskMode(String p4)
    {
        int v0_0 = -1;
        switch (p4.hashCode()) {
            case -892481550:
                if (!p4.equals("status")) {
                } else {
                    v0_0 = 2;
                }
                break;
            case 3540994:
                if (!p4.equals("stop")) {
                } else {
                    v0_0 = 1;
                }
                break;
            case 109757538:
                if (!p4.equals("start")) {
                } else {
                    v0_0 = 0;
                }
                break;
        }
        switch (v0_0) {
            case 0:
                this.startLockTaskMode();
                break;
            case 1:
                this.stopLockTaskMode();
                break;
            case 2:
                android.util.Log.d(com.afwsamples.testdpc.PolicyManagementActivity.TAG, new StringBuilder().append("lock-task mode status: ").append(this.mLockTaskMode).toString());
                break;
            default:
                android.util.Log.e(com.afwsamples.testdpc.PolicyManagementActivity.TAG, new StringBuilder().append("invalid lock-task action: ").append(p4).toString());
        }
        return;
    }

    private void startLockTaskMode()
    {
        if (this.mLockTaskMode) {
            android.util.Log.w(com.afwsamples.testdpc.PolicyManagementActivity.TAG, "startLockTaskMode(): mLockTaskMode already true");
        }
        this.mLockTaskMode = 1;
        android.util.Log.i(com.afwsamples.testdpc.PolicyManagementActivity.TAG, "startLockTaskMode(): calling Activity.startLockTask()");
        this.startLockTask();
        return;
    }

    private void stopLockTaskMode()
    {
        if (!this.mLockTaskMode) {
            android.util.Log.w(com.afwsamples.testdpc.PolicyManagementActivity.TAG, "startLockTaskMode(): mLockTaskMode already false");
        }
        this.mLockTaskMode = 0;
        android.util.Log.i(com.afwsamples.testdpc.PolicyManagementActivity.TAG, "stopLockTaskMode(): calling Activity.stopLockTask()");
        this.stopLockTask();
        return;
    }

    public void dump(String p6, java.io.FileDescriptor p7, java.io.PrintWriter p8, String[] p9)
    {
        if ((p9 == null) || ((p9.length <= 0) || (!p9[0].equals("lock-task-mode")))) {
            p8.print(p6);
            this.dumpLockModeStatus(p8);
            super.dump(p6, p7, p8, p9);
        } else {
            String v0;
            if (p9.length != 1) {
                v0 = p9[1];
            } else {
                v0 = "status";
            }
            int v1_1 = -1;
            switch (v0.hashCode()) {
                case -892481550:
                    if (!v0.equals("status")) {
                    } else {
                        v1_1 = 2;
                    }
                    break;
                case 3540994:
                    if (!v0.equals("stop")) {
                    } else {
                        v1_1 = 1;
                    }
                    break;
                case 109757538:
                    if (!v0.equals("start")) {
                    } else {
                        v1_1 = 0;
                    }
                    break;
            }
            switch (v1_1) {
                case 0:
                    p8.println("Starting lock-task mode");
                    this.startLockTaskMode();
                    break;
                case 1:
                    p8.println("Stopping lock-task mode");
                    this.stopLockTaskMode();
                    break;
                case 2:
                    this.dumpLockModeStatus(p8);
                    break;
                default:
                    Object[] v3_1 = new Object[1];
                    v3_1[0] = v0;
                    p8.printf("Invalid lock-task mode action: %s\n", v3_1);
            }
        }
        return;
    }

    public void onBackPressed()
    {
        com.afwsamples.testdpc.common.OnBackPressedHandler v0_0 = this.getFragmentManager().findFragmentById(2131296376);
        boolean v1 = 0;
        if ((v0_0 != null) && ((v0_0 instanceof com.afwsamples.testdpc.common.OnBackPressedHandler))) {
            v1 = ((com.afwsamples.testdpc.common.OnBackPressedHandler) v0_0).onBackPressed();
        }
        if (!v1) {
            super.onBackPressed();
        }
        return;
    }

    public void onBackStackChanged()
    {
        int v0_2;
        android.app.ActionBar v1 = this.getActionBar();
        if (this.getFragmentManager().getBackStackEntryCount() <= 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        v1.setDisplayHomeAsUpEnabled(v0_2);
        return;
    }

    public void onCreate(android.os.Bundle p5)
    {
        super.onCreate(p5);
        this.setContentView(2131427360);
        if (p5 == null) {
            this.getFragmentManager().beginTransaction().add(2131296376, new com.afwsamples.testdpc.policy.PolicyManagementFragment(), "PolicyManagementFragment").commit();
        }
        this.getFragmentManager().addOnBackStackChangedListener(this);
        return;
    }

    public boolean onCreateOptionsMenu(android.view.Menu p3)
    {
        this.getMenuInflater().inflate(2131492864, p3);
        return 1;
    }

    public void onDestroy()
    {
        super.onDestroy();
        this.getFragmentManager().removeOnBackStackChangedListener(this);
        return;
    }

    public boolean onMenuItemSelected(int p4, android.view.MenuItem p5)
    {
        switch (p5.getItemId()) {
            case 16908332:
                this.getFragmentManager().popBackStack();
                break;
            case 2131296294:
                this.getFragmentManager().beginTransaction().replace(2131296376, com.afwsamples.testdpc.search.PolicySearchFragment.newInstance()).addToBackStack("search").commit();
                break;
        }
        return 0;
    }

    protected void onResume()
    {
        super.onResume();
        String v0 = this.getIntent().getStringExtra("lock-task-mode");
        if (v0 != null) {
            this.setLockTaskMode(v0);
        }
        return;
    }
}
