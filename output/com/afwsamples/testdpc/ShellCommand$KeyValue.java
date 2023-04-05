package com.afwsamples.testdpc;
final class ShellCommand$KeyValue {
    private final String key;
    private final String value;

    private ShellCommand$KeyValue(String p1, String p2)
    {
        this.key = p1;
        this.value = p2;
        return;
    }

    synthetic ShellCommand$KeyValue(String p1, String p2, com.afwsamples.testdpc.ShellCommand$1 p3)
    {
        this(p1, p2);
        return;
    }

    static synthetic String access$000(com.afwsamples.testdpc.ShellCommand$KeyValue p1)
    {
        return p1.key;
    }

    static synthetic String access$100(com.afwsamples.testdpc.ShellCommand$KeyValue p1)
    {
        return p1.value;
    }

    public String key()
    {
        return this.key;
    }

    public String value()
    {
        return this.value;
    }
}
