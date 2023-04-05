package com.afwsamples.testdpc.util;
final class Flags$ArgumentParser {
    private final com.afwsamples.testdpc.util.Flags$BiFunction parserFunc;
    private final com.afwsamples.testdpc.util.Flags$Validator validator;

    private Flags$ArgumentParser(com.afwsamples.testdpc.util.Flags$BiFunction p1, com.afwsamples.testdpc.util.Flags$Validator p2)
    {
        this.parserFunc = p1;
        this.validator = p2;
        return;
    }

    static synthetic com.afwsamples.testdpc.util.Flags$ArgumentParser access$1900(com.afwsamples.testdpc.util.Flags$BiFunction p1)
    {
        return com.afwsamples.testdpc.util.Flags$ArgumentParser.create(p1);
    }

    static synthetic com.afwsamples.testdpc.util.Flags$Validator access$800(com.afwsamples.testdpc.util.Flags$ArgumentParser p1)
    {
        return p1.validator();
    }

    static synthetic com.afwsamples.testdpc.util.Flags$BiFunction access$900(com.afwsamples.testdpc.util.Flags$ArgumentParser p1)
    {
        return p1.parserFunc();
    }

    private static com.afwsamples.testdpc.util.Flags$ArgumentParser create(com.afwsamples.testdpc.util.Flags$BiFunction p2)
    {
        return new com.afwsamples.testdpc.util.Flags$ArgumentParser(p2, new com.afwsamples.testdpc.util.Flags$Validator());
    }

    private com.afwsamples.testdpc.util.Flags$BiFunction parserFunc()
    {
        return this.parserFunc;
    }

    private com.afwsamples.testdpc.util.Flags$Validator validator()
    {
        return this.validator;
    }
}
