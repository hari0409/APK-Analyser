package androidx.multidex;
final class MultiDex$V14 {
    private static final int EXTRACTED_SUFFIX_LENGTH;
    private final androidx.multidex.MultiDex$V14$ElementConstructor elementConstructor;

    static MultiDex$V14()
    {
        androidx.multidex.MultiDex$V14.EXTRACTED_SUFFIX_LENGTH = ".zip".length();
        return;
    }

    private MultiDex$V14()
    {
        Class v3 = Class.forName("dalvik.system.DexPathList$Element");
        try {
            androidx.multidex.MultiDex$V14$JBMR2ElementConstructor v0_1 = new androidx.multidex.MultiDex$V14$ICSElementConstructor(v3);
        } catch (NoSuchMethodException v1) {
            try {
                v0_1 = new androidx.multidex.MultiDex$V14$JBMR11ElementConstructor(v3);
            } catch (NoSuchMethodException v2) {
                v0_1 = new androidx.multidex.MultiDex$V14$JBMR2ElementConstructor(v3);
            }
        }
        this.elementConstructor = v0_1;
        return;
    }

    static void install(ClassLoader p6, java.util.List p7)
    {
        Object v0 = androidx.multidex.MultiDex.access$000(p6, "pathList").get(p6);
        Object[] v2 = new androidx.multidex.MultiDex$V14().makeDexElements(p7);
        try {
            androidx.multidex.MultiDex.access$100(v0, "dexElements", v2);
        } catch (NoSuchFieldException v1) {
            android.util.Log.w("MultiDex", "Failed find field \'dexElements\' attempting \'pathElements\'", v1);
            androidx.multidex.MultiDex.access$100(v0, "pathElements", v2);
        }
        return;
    }

    private Object[] makeDexElements(java.util.List p8)
    {
        Object[] v0 = new Object[p8.size()];
        int v2 = 0;
        while (v2 < v0.length) {
            java.io.File v1_1 = ((java.io.File) p8.get(v2));
            v0[v2] = this.elementConstructor.newInstance(v1_1, dalvik.system.DexFile.loadDex(v1_1.getPath(), androidx.multidex.MultiDex$V14.optimizedPathFor(v1_1), 0));
            v2++;
        }
        return v0;
    }

    private static String optimizedPathFor(java.io.File p8)
    {
        java.io.File v1 = p8.getParentFile();
        String v0 = p8.getName();
        return new java.io.File(v1, new StringBuilder().append(v0.substring(0, (v0.length() - androidx.multidex.MultiDex$V14.EXTRACTED_SUFFIX_LENGTH))).append(".dex").toString()).getPath();
    }
}
