package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$72 implements java.util.function.Consumer {
    private final com.afwsamples.testdpc.ShellCommand arg$1;
    private final android.os.UserHandle arg$2;

    ShellCommand$$Lambda$72(com.afwsamples.testdpc.ShellCommand p1, android.os.UserHandle p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void accept(Object p3)
    {
        this.arg$1.lambda$stopUser$35$ShellCommand(this.arg$2, ((Exception) p3));
        return;
    }
}
