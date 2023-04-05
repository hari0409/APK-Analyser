package com.afwsamples.testdpc.policy.networking;
final class SetPrivateDnsTask extends android.os.AsyncTask {
    public static final String TAG = "Networking";
    private final com.afwsamples.testdpc.policy.keymanagement.ShowToastCallback mCallback;
    private final android.content.ComponentName mComponent;
    private final android.app.admin.DevicePolicyManager mDpm;
    private final int mMode;
    private final String mResolver;

    public SetPrivateDnsTask(android.app.admin.DevicePolicyManager p1, android.content.ComponentName p2, int p3, String p4, com.afwsamples.testdpc.policy.keymanagement.ShowToastCallback p5)
    {
        this.mDpm = p1;
        this.mComponent = p2;
        this.mCallback = p5;
        this.mMode = p3;
        this.mResolver = p4;
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs String doInBackground(Void[] p6)
    {
        try {
            int v1;
            switch (this.mMode) {
                case 2:
                    v1 = this.mDpm.setGlobalPrivateDnsModeOpportunistic(this.mComponent);
                    String v2_1;
                    switch (v1) {
                        case 0:
                            v2_1 = 0;
                            break;
                        case 1:
                            v2_1 = "Provided host doesn\'t serve DNS-over-TLS";
                            break;
                        case 2:
                            v2_1 = "General failure to set the Private DNS mode";
                            break;
                        default:
                            v2_1 = new StringBuilder().append("Unexpected error setting private dns: ").append(v1).toString();
                    }
                    break;
                case 3:
                    v1 = this.mDpm.setGlobalPrivateDnsModeSpecifiedHost(this.mComponent, this.mResolver);
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder().append("Invalid private dns mode: ").append(this.mMode).toString());
            }
        } catch (IllegalArgumentException v0) {
            android.util.Log.w("Networking", "Failed to invoke, cause", v0);
            v2_1 = v0.getMessage();
        } catch (IllegalArgumentException v0) {
        }
        return v2_1;
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((String) p1));
        return;
    }

    protected void onPostExecute(String p5)
    {
        if (p5 != null) {
            com.afwsamples.testdpc.policy.keymanagement.ShowToastCallback v0_0 = this.mCallback;
            Object[] v2_2 = new Object[1];
            v2_2[0] = p5;
            v0_0.showToast(2131690242, v2_2);
        } else {
            Object[] v2_0 = new Object[0];
            this.mCallback.showToast(2131690243, v2_0);
        }
        return;
    }
}
