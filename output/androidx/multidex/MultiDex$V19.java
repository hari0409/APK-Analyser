package androidx.multidex;
final class MultiDex$V19 {

    private MultiDex$V19()
    {
        return;
    }

    static void install(ClassLoader p12, java.util.List p13, java.io.File p14)
    {
        Object v2 = androidx.multidex.MultiDex.access$000(p12, "pathList").get(p12);
        java.util.ArrayList v6_1 = new java.util.ArrayList();
        androidx.multidex.MultiDex.access$100(v2, "dexElements", androidx.multidex.MultiDex$V19.makeDexElements(v2, new java.util.ArrayList(p13), p14, v6_1));
        if (v6_1.size() <= 0) {
            return;
        } else {
            Throwable v8_2 = v6_1.iterator();
            while (v8_2.hasNext()) {
                android.util.Log.w("MultiDex", "Exception in makeDexElement", ((java.io.IOException) v8_2.next()));
            }
            java.io.IOException[] v1_2;
            reflect.Field v7 = androidx.multidex.MultiDex.access$000(v2, "dexElementsSuppressedExceptions");
            java.io.IOException[] v1_1 = ((java.io.IOException[]) ((java.io.IOException[]) v7.get(v2)));
            if (v1_1 != null) {
                java.io.IOException[] v0 = new java.io.IOException[(v6_1.size() + v1_1.length)];
                v6_1.toArray(v0);
                System.arraycopy(v1_1, 0, v0, v6_1.size(), v1_1.length);
                v1_2 = v0;
            } else {
                Throwable v8_10 = new java.io.IOException[v6_1.size()];
                v1_2 = ((java.io.IOException[]) v6_1.toArray(v8_10));
            }
            v7.set(v2, v1_2);
            java.io.IOException v4_1 = new java.io.IOException("I/O exception during makeDexElement");
            v4_1.initCause(((Throwable) v6_1.get(0)));
            throw v4_1;
        }
    }

    private static Object[] makeDexElements(Object p8, java.util.ArrayList p9, java.io.File p10, java.util.ArrayList p11)
    {
        Class[] v2 = new Class[3];
        v2[0] = java.util.ArrayList;
        v2[1] = java.io.File;
        v2[2] = java.util.ArrayList;
        reflect.Method v0 = androidx.multidex.MultiDex.access$200(p8, "makeDexElements", v2);
        Object[] v1_0 = new Object[3];
        v1_0[0] = p9;
        v1_0[1] = p10;
        v1_0[2] = p11;
        return ((Object[]) ((Object[]) v0.invoke(p8, v1_0)));
    }
}
