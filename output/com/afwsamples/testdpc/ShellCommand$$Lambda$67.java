package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$67 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final android.os.UserHandle arg$2;

    ShellCommand$$Lambda$67(com.afwsamples.testdpc.ShellCommand p1, android.os.UserHandle p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void accept(Object p3)
    {
        this.arg$1.lambda$switchUser$30$ShellCommand(this.arg$2, ((Void) p3));
        return;
    }
}
