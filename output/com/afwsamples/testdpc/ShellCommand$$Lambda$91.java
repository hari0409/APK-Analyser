package com.afwsamples.testdpc;
final synthetic class ShellCommand$$Lambda$91 implements java.util.function.Consumer {
    private final java.io.PrintWriter arg$1;

    private ShellCommand$$Lambda$91(java.io.PrintWriter p1)
    {
        this.arg$1 = p1;
        return;
    }

    static java.util.function.Consumer get$Lambda(java.io.PrintWriter p1)
    {
        return new com.afwsamples.testdpc.ShellCommand$$Lambda$91(p1);
    }

    public void accept(Object p2)
    {
        this.arg$1.println(((String) p2));
        return;
    }
}
