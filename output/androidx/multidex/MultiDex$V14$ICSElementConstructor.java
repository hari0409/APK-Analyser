package androidx.multidex;
 class MultiDex$V14$ICSElementConstructor implements androidx.multidex.MultiDex$V14$ElementConstructor {
    private final reflect.Constructor elementConstructor;

    MultiDex$V14$ICSElementConstructor(Class p5)
    {
        reflect.Constructor v0_3 = new Class[3];
        v0_3[0] = java.io.File;
        v0_3[1] = java.util.zip.ZipFile;
        v0_3[2] = dalvik.system.DexFile;
        this.elementConstructor = p5.getConstructor(v0_3);
        this.elementConstructor.setAccessible(1);
        return;
    }

    public Object newInstance(java.io.File p5, dalvik.system.DexFile p6)
    {
        Object v0_0 = this.elementConstructor;
        Object[] v1_1 = new Object[3];
        v1_1[0] = p5;
        v1_1[1] = new java.util.zip.ZipFile(p5);
        v1_1[2] = p6;
        return v0_0.newInstance(v1_1);
    }
}
