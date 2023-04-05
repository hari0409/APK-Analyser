package com.afwsamples.testdpc.common;
public abstract synthetic class Dumpable$$CC {

    public static boolean isQuietMode$$STATIC$$(String[] p3)
    {
        int v0 = 0;
        if ((p3 != null) && ((p3.length > 0) && ((p3[0].equals("-q")) || (p3[0].equals("--quiet"))))) {
            v0 = 1;
        }
        return v0;
    }
}
