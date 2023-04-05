package androidx.multidex;
final class MultiDex$V4 {

    private MultiDex$V4()
    {
        return;
    }

    static void install(ClassLoader p13, java.util.List p14)
    {
        int v5 = p14.size();
        reflect.Field v10 = androidx.multidex.MultiDex.access$000(p13, "path");
        StringBuilder v9_1 = new StringBuilder(((String) v10.get(p13)));
        String[] v4 = new String[v5];
        java.io.File[] v3 = new java.io.File[v5];
        java.util.zip.ZipFile[] v6 = new java.util.zip.ZipFile[v5];
        dalvik.system.DexFile[] v2 = new dalvik.system.DexFile[v5];
        java.util.ListIterator v8 = p14.listIterator();
        while (v8.hasNext()) {
            java.io.File v0_1 = ((java.io.File) v8.next());
            String v1 = v0_1.getAbsolutePath();
            v9_1.append(58).append(v1);
            int v7 = v8.previousIndex();
            v4[v7] = v1;
            v3[v7] = v0_1;
            v6[v7] = new java.util.zip.ZipFile(v0_1);
            v2[v7] = dalvik.system.DexFile.loadDex(v1, new StringBuilder().append(v1).append(".dex").toString(), 0);
        }
        v10.set(p13, v9_1.toString());
        androidx.multidex.MultiDex.access$100(p13, "mPaths", v4);
        androidx.multidex.MultiDex.access$100(p13, "mFiles", v3);
        androidx.multidex.MultiDex.access$100(p13, "mZips", v6);
        androidx.multidex.MultiDex.access$100(p13, "mDexs", v2);
        return;
    }
}
