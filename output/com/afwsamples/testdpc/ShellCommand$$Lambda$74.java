package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$74 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final String arg$2;
    private final boolean arg$3;

    ShellCommand$$Lambda$74(com.afwsamples.testdpc.ShellCommand p1, String p2, boolean p3)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        return;
    }

    public void accept(Object p4)
    {
        this.arg$1.lambda$setUserRestriction$37$ShellCommand(this.arg$2, this.arg$3, ((Exception) p4));
        return;
    }
}
