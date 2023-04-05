package androidx.appcompat.app;
 class AlertController$1 implements android.view.View$OnClickListener {
    final synthetic androidx.appcompat.app.AlertController this$0;

    AlertController$1(androidx.appcompat.app.AlertController p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p5)
    {
        if ((p5 != this.this$0.mButtonPositive) || (this.this$0.mButtonPositiveMessage == null)) {
            if ((p5 != this.this$0.mButtonNegative) || (this.this$0.mButtonNegativeMessage == null)) {
                if ((p5 != this.this$0.mButtonNeutral) || (this.this$0.mButtonNeutralMessage == null)) {
                    android.os.Message v0 = 0;
                } else {
                    v0 = android.os.Message.obtain(this.this$0.mButtonNeutralMessage);
                }
            } else {
                v0 = android.os.Message.obtain(this.this$0.mButtonNegativeMessage);
            }
        } else {
            v0 = android.os.Message.obtain(this.this$0.mButtonPositiveMessage);
        }
        if (v0 != null) {
            v0.sendToTarget();
        }
        this.this$0.mHandler.obtainMessage(1, this.this$0.mDialog).sendToTarget();
        return;
    }
}
