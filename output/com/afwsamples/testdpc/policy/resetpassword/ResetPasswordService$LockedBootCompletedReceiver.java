package com.afwsamples.testdpc.policy.resetpassword;
public class ResetPasswordService$LockedBootCompletedReceiver extends android.content.BroadcastReceiver {
    private static final String TAG = "BootCompletedReceiver";

    public ResetPasswordService$LockedBootCompletedReceiver()
    {
        return;
    }

    public void onReceive(android.content.Context p5, android.content.Intent p6)
    {
        android.util.Log.d("BootCompletedReceiver", new StringBuilder().append("onReceive: ").append(p6.toString()).toString());
        android.content.Intent v0_1 = new android.content.Intent(p5, com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService);
        v0_1.setAction(p6.getAction());
        p5.startForegroundService(v0_1);
        return;
    }
}
