package com.afwsamples.testdpc.util;
final synthetic class Flags$$Lambda$6 implements com.afwsamples.testdpc.util.Flags$Function {
    static final com.afwsamples.testdpc.util.Flags$Function $instance;

    static Flags$$Lambda$6()
    {
        com.afwsamples.testdpc.util.Flags$$Lambda$6.$instance = new com.afwsamples.testdpc.util.Flags$$Lambda$6();
        return;
    }

    private Flags$$Lambda$6()
    {
        return;
    }

    public Object apply(Object p2)
    {
        return Short.valueOf(Short.parseShort(((String) p2)));
    }
}
