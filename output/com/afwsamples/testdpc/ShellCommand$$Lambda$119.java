package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$119 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final android.os.Bundle arg$2;
    private final String arg$3;

    ShellCommand$$Lambda$119(com.afwsamples.testdpc.ShellCommand p1, android.os.Bundle p2, String p3)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        return;
    }

    public void accept(Object p4)
    {
        this.arg$1.lambda$setAppRestrictions$81$ShellCommand(this.arg$2, this.arg$3, ((Void) p4));
        return;
    }
}
