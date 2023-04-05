package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$121 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final String arg$2;
    private final String arg$3;
    private final String arg$4;

    ShellCommand$$Lambda$121(com.afwsamples.testdpc.ShellCommand p1, String p2, String p3, String p4)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        this.arg$4 = p4;
        return;
    }

    public void accept(Object p5)
    {
        this.arg$1.lambda$setPermissionGrantState$83$ShellCommand(this.arg$2, this.arg$3, this.arg$4, ((Void) p5));
        return;
    }
}
