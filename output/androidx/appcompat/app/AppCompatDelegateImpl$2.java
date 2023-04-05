package androidx.appcompat.app;
 class AppCompatDelegateImpl$2 implements java.lang.Runnable {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$2(androidx.appcompat.app.AppCompatDelegateImpl p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        if ((this.this$0.mInvalidatePanelMenuFeatures & 1) != 0) {
            this.this$0.doInvalidatePanelMenu(0);
        }
        if ((this.this$0.mInvalidatePanelMenuFeatures & 4096) != 0) {
            this.this$0.doInvalidatePanelMenu(108);
        }
        this.this$0.mInvalidatePanelMenuPosted = 0;
        this.this$0.mInvalidatePanelMenuFeatures = 0;
        return;
    }
}
