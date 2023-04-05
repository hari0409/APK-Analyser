package com.afwsamples.testdpc;
final synthetic class AddAccountActivity$$Lambda$2 implements java.lang.Runnable {
    private final com.afwsamples.testdpc.AddAccountActivity arg$1;
    private final Runnable arg$2;
    private final long arg$3;

    AddAccountActivity$$Lambda$2(com.afwsamples.testdpc.AddAccountActivity p2, Runnable p3, long p4)
    {
        this.arg$1 = p2;
        this.arg$2 = p3;
        this.arg$3 = p4;
        return;
    }

    public void run()
    {
        this.arg$1.lambda$waitForForeground$4$AddAccountActivity(this.arg$2, this.arg$3);
        return;
    }
}
