package com.afwsamples.testdpc.common;
public abstract class DumpableActivity extends android.app.Activity {

    public DumpableActivity()
    {
        return;
    }

    public void dump(String p10, java.io.FileDescriptor p11, java.io.PrintWriter p12, String[] p13)
    {
        boolean v4 = com.afwsamples.testdpc.common.Dumpable$$CC.isQuietMode$$STATIC$$(p13);
        if (!v4) {
            super.dump(p10, p11, p12, p13);
        } else {
            java.util.List v7 = this.getFragmentManager().getFragments();
            p12.println("*** Dumping Dumpable fragments only ***");
            String v1 = new StringBuilder().append(p10).append(p10).toString();
            java.util.Iterator v8 = v7.iterator();
            while (v8.hasNext()) {
                android.app.Fragment v6_1 = ((android.app.Fragment) v8.next());
                if ((v6_1 instanceof com.afwsamples.testdpc.common.Dumpable)) {
                    java.io.PrintWriter v2_1 = new Object[2];
                    v2_1[0] = p10;
                    v2_1[1] = v6_1;
                    p12.printf("%s%s:\n", v2_1);
                    ((com.afwsamples.testdpc.common.Dumpable) v6_1).dump(v1, p12, p11, v4, p13);
                }
            }
        }
        return;
    }
}
