package androidx.multidex;
public final class MultiDex {
    private static final String CODE_CACHE_NAME = "code_cache";
    private static final String CODE_CACHE_SECONDARY_FOLDER_NAME = "secondary-dexes";
    private static final boolean IS_VM_MULTIDEX_CAPABLE = False;
    private static final int MAX_SUPPORTED_SDK_VERSION = 20;
    private static final int MIN_SDK_VERSION = 4;
    private static final String NO_KEY_PREFIX = "";
    private static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
    static final String TAG = "MultiDex";
    private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    private static final java.util.Set installedApk;

    static MultiDex()
    {
        androidx.multidex.MultiDex.installedApk = new java.util.HashSet();
        androidx.multidex.MultiDex.IS_VM_MULTIDEX_CAPABLE = androidx.multidex.MultiDex.isVMMultidexCapable(System.getProperty("java.vm.version"));
        return;
    }

    private MultiDex()
    {
        return;
    }

    static synthetic reflect.Field access$000(Object p1, String p2)
    {
        return androidx.multidex.MultiDex.findField(p1, p2);
    }

    static synthetic void access$100(Object p0, String p1, Object[] p2)
    {
        androidx.multidex.MultiDex.expandFieldArray(p0, p1, p2);
        return;
    }

    static synthetic reflect.Method access$200(Object p1, String p2, Class[] p3)
    {
        return androidx.multidex.MultiDex.findMethod(p1, p2, p3);
    }

    private static void clearOldDexDir(android.content.Context p10)
    {
        java.io.File v0_1 = new java.io.File(p10.getFilesDir(), "secondary-dexes");
        if (v0_1.isDirectory()) {
            android.util.Log.i("MultiDex", new StringBuilder().append("Clearing old secondary dex dir (").append(v0_1.getPath()).append(").").toString());
            java.io.File[] v1 = v0_1.listFiles();
            if (v1 != null) {
                String v4_11 = v1.length;
                int v3_0 = 0;
                while (v3_0 < v4_11) {
                    java.io.File v2 = v1[v3_0];
                    android.util.Log.i("MultiDex", new StringBuilder().append("Trying to delete old file ").append(v2.getPath()).append(" of size ").append(v2.length()).toString());
                    if (v2.delete()) {
                        android.util.Log.i("MultiDex", new StringBuilder().append("Deleted old file ").append(v2.getPath()).toString());
                    } else {
                        android.util.Log.w("MultiDex", new StringBuilder().append("Failed to delete old file ").append(v2.getPath()).toString());
                    }
                    v3_0++;
                }
                if (v0_1.delete()) {
                    android.util.Log.i("MultiDex", new StringBuilder().append("Deleted old secondary dex dir ").append(v0_1.getPath()).toString());
                } else {
                    android.util.Log.w("MultiDex", new StringBuilder().append("Failed to delete secondary dex dir ").append(v0_1.getPath()).toString());
                }
            } else {
                android.util.Log.w("MultiDex", new StringBuilder().append("Failed to list secondary dex dir content (").append(v0_1.getPath()).append(").").toString());
            }
        }
        return;
    }

    private static void doInstallation(android.content.Context p11, java.io.File p12, java.io.File p13, String p14, String p15, boolean p16)
    {
        try {
            if (!androidx.multidex.MultiDex.installedApk.contains(p12)) {
                androidx.multidex.MultiDex.installedApk.add(p12);
                if (android.os.Build$VERSION.SDK_INT > 20) {
                    android.util.Log.w("MultiDex", new StringBuilder().append("MultiDex is not guaranteed to work in SDK version ").append(android.os.Build$VERSION.SDK_INT).append(": SDK version higher than ").append(20).append(" should be backed by ").append("runtime with built-in multidex capabilty but it\'s not the ").append("case here: java.vm.version=\"").append(System.getProperty("java.vm.version")).append("\"").toString());
                }
                try {
                    ClassLoader v5 = p11.getClassLoader();
                } catch (java.io.IOException v2_0) {
                    android.util.Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", v2_0);
                }
                if (v5 != null) {
                    try {
                        androidx.multidex.MultiDex.clearOldDexDir(p11);
                    } catch (Throwable v6) {
                        android.util.Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", v6);
                    }
                    java.io.File v1 = androidx.multidex.MultiDex.getDexDir(p11, p13, p14);
                    androidx.multidex.MultiDexExtractor v3_1 = new androidx.multidex.MultiDexExtractor(p12, v1);
                    java.io.IOException v0 = 0;
                    try {
                        try {
                            androidx.multidex.MultiDex.installSecondaryDexes(v5, v1, v3_1.load(p11, p15, 0));
                        } catch (java.io.IOException v2_1) {
                            if (p16) {
                                android.util.Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", v2_1);
                                androidx.multidex.MultiDex.installSecondaryDexes(v5, v1, v3_1.load(p11, p15, 1));
                            } else {
                                throw v2_1;
                            }
                        }
                        try {
                            v3_1.close();
                        } catch (java.io.IOException v2_3) {
                            v0 = v2_3;
                        }
                        if (v0 == null) {
                        } else {
                            throw v0;
                        }
                    } catch (int v7_10) {
                        try {
                            v3_1.close();
                        } catch (java.io.IOException v2_2) {
                        }
                        throw v7_10;
                    }
                } else {
                    android.util.Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
                }
            } else {
            }
        } catch (int v7_12) {
            throw v7_12;
        }
        return;
    }

    private static void expandFieldArray(Object p7, String p8, Object[] p9)
    {
        reflect.Field v1 = androidx.multidex.MultiDex.findField(p7, p8);
        Object[] v2_1 = ((Object[]) ((Object[]) v1.get(p7)));
        Object[] v0_1 = ((Object[]) ((Object[]) reflect.Array.newInstance(v2_1.getClass().getComponentType(), (v2_1.length + p9.length))));
        System.arraycopy(v2_1, 0, v0_1, 0, v2_1.length);
        System.arraycopy(p9, 0, v0_1, v2_1.length, p9.length);
        v1.set(p7, v0_1);
        return;
    }

    private static reflect.Field findField(Object p5, String p6)
    {
        Class v0 = p5.getClass();
        while (v0 != null) {
            try {
                reflect.Field v1 = v0.getDeclaredField(p6);
            } catch (int v2) {
                v0 = v0.getSuperclass();
            }
            if (!v1.isAccessible()) {
                v1.setAccessible(1);
            }
            return v1;
        }
        throw new NoSuchFieldException(new StringBuilder().append("Field ").append(p6).append(" not found in ").append(p5.getClass()).toString());
    }

    private static varargs reflect.Method findMethod(Object p5, String p6, Class[] p7)
    {
        Class v0 = p5.getClass();
        while (v0 != null) {
            try {
                reflect.Method v1 = v0.getDeclaredMethod(p6, p7);
            } catch (int v2) {
                v0 = v0.getSuperclass();
            }
            if (!v1.isAccessible()) {
                v1.setAccessible(1);
            }
            return v1;
        }
        throw new NoSuchMethodException(new StringBuilder().append("Method ").append(p6).append(" with parameters ").append(java.util.Arrays.asList(p7)).append(" not found in ").append(p5.getClass()).toString());
    }

    private static android.content.pm.ApplicationInfo getApplicationInfo(android.content.Context p3)
    {
        try {
            int v1_0 = p3.getApplicationInfo();
        } catch (RuntimeException v0) {
            android.util.Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", v0);
            v1_0 = 0;
        }
        return v1_0;
    }

    private static java.io.File getDexDir(android.content.Context p5, java.io.File p6, String p7)
    {
        java.io.File v0_1 = new java.io.File(p6, "code_cache");
        try {
            androidx.multidex.MultiDex.mkdirChecked(v0_1);
        } catch (java.io.IOException v2) {
            v0_1 = new java.io.File(p5.getFilesDir(), "code_cache");
            androidx.multidex.MultiDex.mkdirChecked(v0_1);
        }
        java.io.File v1_1 = new java.io.File(v0_1, p7);
        androidx.multidex.MultiDex.mkdirChecked(v1_1);
        return v1_1;
    }

    public static void install(android.content.Context p8)
    {
        android.util.Log.i("MultiDex", "Installing application");
        if (!androidx.multidex.MultiDex.IS_VM_MULTIDEX_CAPABLE) {
            if (android.os.Build$VERSION.SDK_INT >= 4) {
                try {
                    android.content.pm.ApplicationInfo v6 = androidx.multidex.MultiDex.getApplicationInfo(p8);
                } catch (Exception v7) {
                    android.util.Log.e("MultiDex", "MultiDex installation failure", v7);
                    throw new RuntimeException(new StringBuilder().append("MultiDex installation failed (").append(v7.getMessage()).append(").").toString());
                }
                if (v6 != null) {
                    androidx.multidex.MultiDex.doInstallation(p8, new java.io.File(v6.sourceDir), new java.io.File(v6.dataDir), "secondary-dexes", "", 1);
                    android.util.Log.i("MultiDex", "install done");
                } else {
                    android.util.Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                }
            } else {
                throw new RuntimeException(new StringBuilder().append("MultiDex installation failed. SDK ").append(android.os.Build$VERSION.SDK_INT).append(" is unsupported. Min SDK version is ").append(4).append(".").toString());
            }
        } else {
            android.util.Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        }
        return;
    }

    public static void installInstrumentation(android.content.Context p14, android.content.Context p15)
    {
        android.util.Log.i("MultiDex", "Installing instrumentation");
        if (!androidx.multidex.MultiDex.IS_VM_MULTIDEX_CAPABLE) {
            if (android.os.Build$VERSION.SDK_INT >= 4) {
                try {
                    android.content.pm.ApplicationInfo v13 = androidx.multidex.MultiDex.getApplicationInfo(p14);
                } catch (Exception v12) {
                    android.util.Log.e("MultiDex", "MultiDex installation failure", v12);
                    throw new RuntimeException(new StringBuilder().append("MultiDex installation failed (").append(v12.getMessage()).append(").").toString());
                }
                if (v13 != null) {
                    android.content.pm.ApplicationInfo v11 = androidx.multidex.MultiDex.getApplicationInfo(p15);
                    if (v11 != null) {
                        String v4 = new StringBuilder().append(p14.getPackageName()).append(".").toString();
                        java.io.File v2_1 = new java.io.File(v11.dataDir);
                        androidx.multidex.MultiDex.doInstallation(p15, new java.io.File(v13.sourceDir), v2_1, new StringBuilder().append(v4).append("secondary-dexes").toString(), v4, 0);
                        androidx.multidex.MultiDex.doInstallation(p15, new java.io.File(v11.sourceDir), v2_1, "secondary-dexes", "", 0);
                        android.util.Log.i("MultiDex", "Installation done");
                    } else {
                        android.util.Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    }
                } else {
                    android.util.Log.i("MultiDex", "No ApplicationInfo available for instrumentation, i.e. running on a test Context: MultiDex support library is disabled.");
                }
            } else {
                throw new RuntimeException(new StringBuilder().append("MultiDex installation failed. SDK ").append(android.os.Build$VERSION.SDK_INT).append(" is unsupported. Min SDK version is ").append(4).append(".").toString());
            }
        } else {
            android.util.Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        }
        return;
    }

    private static void installSecondaryDexes(ClassLoader p2, java.io.File p3, java.util.List p4)
    {
        if (!p4.isEmpty()) {
            if (android.os.Build$VERSION.SDK_INT < 19) {
                if (android.os.Build$VERSION.SDK_INT < 14) {
                    androidx.multidex.MultiDex$V4.install(p2, p4);
                } else {
                    androidx.multidex.MultiDex$V14.install(p2, p4);
                }
            } else {
                androidx.multidex.MultiDex$V19.install(p2, p4, p3);
            }
        }
        return;
    }

    static boolean isVMMultidexCapable(String p7)
    {
        int v0 = 0;
        if (p7 != null) {
            java.util.regex.Matcher v2 = java.util.regex.Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(p7);
            if (v2.matches()) {
                try {
                    int v1 = Integer.parseInt(v2.group(1));
                    int vtmp9 = Integer.parseInt(v2.group(2));
                } catch (NumberFormatException v4) {
                }
                if ((v1 <= 2) && ((v1 != 2) || (vtmp9 < 1))) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
            }
        }
        NumberFormatException v4_4;
        StringBuilder v6_2 = new StringBuilder().append("VM with version ").append(p7);
        if (v0 == 0) {
            v4_4 = " does not have multidex support";
        } else {
            v4_4 = " has multidex support";
        }
        android.util.Log.i("MultiDex", v6_2.append(v4_4).toString());
        return v0;
    }

    private static void mkdirChecked(java.io.File p4)
    {
        p4.mkdir();
        if (p4.isDirectory()) {
            return;
        } else {
            java.io.File v0 = p4.getParentFile();
            if (v0 != null) {
                android.util.Log.e("MultiDex", new StringBuilder().append("Failed to create dir ").append(p4.getPath()).append(". parent file is a dir ").append(v0.isDirectory()).append(", a file ").append(v0.isFile()).append(", exists ").append(v0.exists()).append(", readable ").append(v0.canRead()).append(", writable ").append(v0.canWrite()).toString());
            } else {
                android.util.Log.e("MultiDex", new StringBuilder().append("Failed to create dir ").append(p4.getPath()).append(". Parent file is null.").toString());
            }
            throw new java.io.IOException(new StringBuilder().append("Failed to create directory ").append(p4.getPath()).toString());
        }
    }
}
