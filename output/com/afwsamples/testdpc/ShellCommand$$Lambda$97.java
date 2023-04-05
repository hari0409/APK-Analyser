package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$97 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final String arg$2;

    ShellCommand$$Lambda$97(com.afwsamples.testdpc.ShellCommand p1, String p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void accept(Object p3)
    {
        this.arg$1.lambda$clearProfileOwner$59$ShellCommand(this.arg$2, ((Exception) p3));
        return;
    }
}
