package com.afwsamples.testdpc.util;
final synthetic class Flags$$Lambda$5 implements com.afwsamples.testdpc.util.Flags$Function {
    static final com.afwsamples.testdpc.util.Flags$Function $instance;

    static Flags$$Lambda$5()
    {
        com.afwsamples.testdpc.util.Flags$$Lambda$5.$instance = new com.afwsamples.testdpc.util.Flags$$Lambda$5();
        return;
    }

    private Flags$$Lambda$5()
    {
        return;
    }

    public Object apply(Object p2)
    {
        return Byte.valueOf(Byte.parseByte(((String) p2)));
    }
}
