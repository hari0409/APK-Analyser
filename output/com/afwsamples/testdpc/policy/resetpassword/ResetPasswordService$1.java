package com.afwsamples.testdpc.policy.resetpassword;
 class ResetPasswordService$1 extends android.content.BroadcastReceiver {
    final synthetic com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService this$0;

    ResetPasswordService$1(com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onReceive(android.content.Context p4, android.content.Intent p5)
    {
        android.util.Log.d("ResetPasswordService", new StringBuilder().append("onReceive: ").append(p5.toString()).toString());
        if (!"android.intent.action.USER_UNLOCKED".equals(p5.getAction())) {
            if ("com.afwsamples.testdpc.RESET_PASSWORD".equals(p5.getAction())) {
                com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService.access$200(this.this$0);
            }
        } else {
            com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService.access$000(this.this$0);
            this.this$0.unregisterReceiver(com.afwsamples.testdpc.policy.resetpassword.ResetPasswordService.access$100(this.this$0));
            this.this$0.stopSelf();
        }
        return;
    }
}
