package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$116 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final String arg$2;

    ShellCommand$$Lambda$116(com.afwsamples.testdpc.ShellCommand p1, String p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void accept(Object p3)
    {
        this.arg$1.lambda$setLockTaskPackages$78$ShellCommand(this.arg$2, ((Exception) p3));
        return;
    }
}
