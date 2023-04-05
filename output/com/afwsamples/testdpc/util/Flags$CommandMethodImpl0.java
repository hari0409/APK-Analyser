package com.afwsamples.testdpc.util;
final class Flags$CommandMethodImpl0 implements com.afwsamples.testdpc.util.Flags$CommandMethod {
    private final com.afwsamples.testdpc.util.Flags$CommandCallback0Params callback;

    private Flags$CommandMethodImpl0(com.afwsamples.testdpc.util.Flags$CommandCallback0Params p1)
    {
        this.callback = p1;
        return;
    }

    synthetic Flags$CommandMethodImpl0(com.afwsamples.testdpc.util.Flags$CommandCallback0Params p1, com.afwsamples.testdpc.util.Flags$1 p2)
    {
        this(p1);
        return;
    }

    public void execute(com.afwsamples.testdpc.util.Flags p2, com.afwsamples.testdpc.util.Flags$ArgsContainer p3)
    {
        this.callback.execute();
        return;
    }
}
