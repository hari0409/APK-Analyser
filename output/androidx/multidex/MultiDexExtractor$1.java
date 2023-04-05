package androidx.multidex;
 class MultiDexExtractor$1 implements java.io.FileFilter {
    final synthetic androidx.multidex.MultiDexExtractor this$0;

    MultiDexExtractor$1(androidx.multidex.MultiDexExtractor p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean accept(java.io.File p3)
    {
        int v0_2;
        if (p3.getName().equals("MultiDex.lock")) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }
}
