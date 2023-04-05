package androidx.multidex;
final class MultiDexExtractor implements java.io.Closeable {
    private static final int BUFFER_SIZE = 16384;
    private static final String DEX_PREFIX = "classes";
    static final String DEX_SUFFIX = ".dex";
    private static final String EXTRACTED_NAME_EXT = ".classes";
    static final String EXTRACTED_SUFFIX = ".zip";
    private static final String KEY_CRC = "crc";
    private static final String KEY_DEX_CRC = "dex.crc.";
    private static final String KEY_DEX_NUMBER = "dex.number";
    private static final String KEY_DEX_TIME = "dex.time.";
    private static final String KEY_TIME_STAMP = "timestamp";
    private static final String LOCK_FILENAME = "MultiDex.lock";
    private static final int MAX_EXTRACT_ATTEMPTS = 3;
    private static final long NO_VALUE = 255;
    private static final String PREFS_FILE = "multidex.version";
    private static final String TAG = "MultiDex";
    private final java.nio.channels.FileLock cacheLock;
    private final java.io.File dexDir;
    private final java.nio.channels.FileChannel lockChannel;
    private final java.io.RandomAccessFile lockRaf;
    private final java.io.File sourceApk;
    private final long sourceCrc;

    MultiDexExtractor(java.io.File p6, java.io.File p7)
    {
        android.util.Log.i("MultiDex", new StringBuilder().append("MultiDexExtractor(").append(p6.getPath()).append(", ").append(p7.getPath()).append(")").toString());
        this.sourceApk = p6;
        this.dexDir = p7;
        this.sourceCrc = androidx.multidex.MultiDexExtractor.getZipCrc(p6);
        java.io.File v1_1 = new java.io.File(p7, "MultiDex.lock");
        this.lockRaf = new java.io.RandomAccessFile(v1_1, "rw");
        try {
            this.lockChannel = this.lockRaf.getChannel();
            try {
                android.util.Log.i("MultiDex", new StringBuilder().append("Blocking on lock ").append(v1_1.getPath()).toString());
                this.cacheLock = this.lockChannel.lock();
            } catch (java.nio.channels.FileChannel v2_11) {
                Error v0_0 = v2_11;
                androidx.multidex.MultiDexExtractor.closeQuietly(this.lockChannel);
                throw v0_0;
            } catch (java.nio.channels.FileChannel v2_10) {
                v0_0 = v2_10;
            }
            android.util.Log.i("MultiDex", new StringBuilder().append(v1_1.getPath()).append(" locked").toString());
            return;
        } catch (Error v0_1) {
            androidx.multidex.MultiDexExtractor.closeQuietly(this.lockRaf);
            throw v0_1;
        } catch (Error v0_1) {
        } catch (Error v0_1) {
        }
    }

    private void clearDexDir()
    {
        java.io.File[] v0 = this.dexDir.listFiles(new androidx.multidex.MultiDexExtractor$1(this));
        if (v0 != null) {
            int v3_2 = v0.length;
            int v2_1 = 0;
            while (v2_1 < v3_2) {
                java.io.File v1 = v0[v2_1];
                android.util.Log.i("MultiDex", new StringBuilder().append("Trying to delete old file ").append(v1.getPath()).append(" of size ").append(v1.length()).toString());
                if (v1.delete()) {
                    android.util.Log.i("MultiDex", new StringBuilder().append("Deleted old file ").append(v1.getPath()).toString());
                } else {
                    android.util.Log.w("MultiDex", new StringBuilder().append("Failed to delete old file ").append(v1.getPath()).toString());
                }
                v2_1++;
            }
        } else {
            android.util.Log.w("MultiDex", new StringBuilder().append("Failed to list secondary dex dir content (").append(this.dexDir.getPath()).append(").").toString());
        }
        return;
    }

    private static void closeQuietly(java.io.Closeable p3)
    {
        try {
            p3.close();
        } catch (java.io.IOException v0) {
            android.util.Log.w("MultiDex", "Failed to close resource", v0);
        }
        return;
    }

    private static void extract(java.util.zip.ZipFile p10, java.util.zip.ZipEntry p11, java.io.File p12, String p13)
    {
        java.io.InputStream v2 = p10.getInputStream(p11);
        java.io.File v6 = java.io.File.createTempFile(new StringBuilder().append("tmp-").append(p13).toString(), ".zip", p12.getParentFile());
        android.util.Log.i("MultiDex", new StringBuilder().append("Extracting ").append(v6.getPath()).toString());
        try {
            java.util.zip.ZipOutputStream v5_1 = new java.util.zip.ZipOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(v6)));
            try {
                java.util.zip.ZipEntry v1_1 = new java.util.zip.ZipEntry("classes.dex");
                v1_1.setTime(p11.getTime());
                v5_1.putNextEntry(v1_1);
                byte[] v0 = new byte[16384];
                int v3 = v2.read(v0);
            } catch (java.io.IOException v7_3) {
                v5_1.close();
                throw v7_3;
            } catch (java.io.IOException v7_4) {
                androidx.multidex.MultiDexExtractor.closeQuietly(v2);
                v6.delete();
                throw v7_4;
            }
            while (v3 != -1) {
                v5_1.write(v0, 0, v3);
                v3 = v2.read(v0);
            }
            v5_1.closeEntry();
            v5_1.close();
            if (v6.setReadOnly()) {
                android.util.Log.i("MultiDex", new StringBuilder().append("Renaming to ").append(p12.getPath()).toString());
                if (v6.renameTo(p12)) {
                    androidx.multidex.MultiDexExtractor.closeQuietly(v2);
                    v6.delete();
                    return;
                } else {
                    throw new java.io.IOException(new StringBuilder().append("Failed to rename \"").append(v6.getAbsolutePath()).append("\" to \"").append(p12.getAbsolutePath()).append("\"").toString());
                }
            } else {
                throw new java.io.IOException(new StringBuilder().append("Failed to mark readonly \"").append(v6.getAbsolutePath()).append("\" (tmp of \"").append(p12.getAbsolutePath()).append("\")").toString());
            }
        } catch (java.io.IOException v7_4) {
        }
    }

    private static android.content.SharedPreferences getMultiDexPreferences(android.content.Context p3)
    {
        android.content.SharedPreferences v0_1;
        if (android.os.Build$VERSION.SDK_INT >= 11) {
            v0_1 = 4;
        } else {
            v0_1 = 0;
        }
        return p3.getSharedPreferences("multidex.version", v0_1);
    }

    private static long getTimeStamp(java.io.File p4)
    {
        long v0 = p4.lastModified();
        if (v0 == -1) {
            v0--;
        }
        return v0;
    }

    private static long getZipCrc(java.io.File p4)
    {
        long v0 = androidx.multidex.ZipUtil.getZipCrc(p4);
        if (v0 == -1) {
            v0--;
        }
        return v0;
    }

    private static boolean isModified(android.content.Context p8, java.io.File p9, long p10, String p12)
    {
        int v1_9;
        android.content.SharedPreferences v0 = androidx.multidex.MultiDexExtractor.getMultiDexPreferences(p8);
        if ((v0.getLong(new StringBuilder().append(p12).append("timestamp").toString(), -1) == androidx.multidex.MultiDexExtractor.getTimeStamp(p9)) && (v0.getLong(new StringBuilder().append(p12).append("crc").toString(), -1) == p10)) {
            v1_9 = 0;
        } else {
            v1_9 = 1;
        }
        return v1_9;
    }

    private java.util.List loadExistingExtractions(android.content.Context p23, String p24)
    {
        android.util.Log.i("MultiDex", "loading existing secondary dex files");
        String v9 = new StringBuilder().append(this.sourceApk.getName()).append(".classes").toString();
        android.content.SharedPreferences v14 = androidx.multidex.MultiDexExtractor.getMultiDexPreferences(p23);
        int v16 = v14.getInt(new StringBuilder().append(p24).append("dex.number").toString(), 1);
        java.util.ArrayList v11_1 = new java.util.ArrayList((v16 - 1));
        int v15 = 2;
        while (v15 <= v16) {
            androidx.multidex.MultiDexExtractor$ExtractedDex v8_1 = new androidx.multidex.MultiDexExtractor$ExtractedDex(this.dexDir, new StringBuilder().append(v9).append(v15).append(".zip").toString());
            if (!v8_1.isFile()) {
                throw new java.io.IOException(new StringBuilder().append("Missing extracted secondary dex file \'").append(v8_1.getPath()).append("\'").toString());
            } else {
                v8_1.crc = androidx.multidex.MultiDexExtractor.getZipCrc(v8_1);
                long v4 = v14.getLong(new StringBuilder().append(p24).append("dex.crc.").append(v15).toString(), -1);
                long v6 = v14.getLong(new StringBuilder().append(p24).append("dex.time.").append(v15).toString(), -1);
                long v12 = v8_1.lastModified();
                if ((v6 == v12) && (v4 == v8_1.crc)) {
                    v11_1.add(v8_1);
                    v15++;
                } else {
                    throw new java.io.IOException(new StringBuilder().append("Invalid extracted dex: ").append(v8_1).append(" (key \"").append(p24).append("\"), expected modification time: ").append(v6).append(", modification time: ").append(v12).append(", expected crc: ").append(v4).append(", file crc: ").append(v8_1.crc).toString());
                }
            }
        }
        return v11_1;
    }

    private java.util.List performExtractions()
    {
        String v4 = new StringBuilder().append(this.sourceApk.getName()).append(".classes").toString();
        this.clearDexDir();
        java.util.ArrayList v6_1 = new java.util.ArrayList();
        java.util.zip.ZipFile v0_1 = new java.util.zip.ZipFile(this.sourceApk);
        int v9 = 2;
        try {
            java.util.zip.ZipEntry v1 = v0_1.getEntry(new StringBuilder().append("classes").append(2).append(".dex").toString());
        } catch (String v10_18) {
            try {
                v0_1.close();
            } catch (java.io.IOException v2_1) {
                android.util.Log.w("MultiDex", "Failed to close resource", v2_1);
            }
            throw v10_18;
        }
        while (v1 != null) {
            androidx.multidex.MultiDexExtractor$ExtractedDex v3_1 = new androidx.multidex.MultiDexExtractor$ExtractedDex(this.dexDir, new StringBuilder().append(v4).append(v9).append(".zip").toString());
            v6_1.add(v3_1);
            android.util.Log.i("MultiDex", new StringBuilder().append("Extraction is needed for file ").append(v3_1).toString());
            int v8 = 0;
            int v7 = 0;
            while ((v8 < 3) && (v7 == 0)) {
                v8++;
                androidx.multidex.MultiDexExtractor.extract(v0_1, v1, v3_1, v4);
                try {
                    v3_1.crc = androidx.multidex.MultiDexExtractor.getZipCrc(v3_1);
                    v7 = 1;
                } catch (java.io.IOException v2_0) {
                    v7 = 0;
                    android.util.Log.w("MultiDex", new StringBuilder().append("Failed to read crc from ").append(v3_1.getAbsolutePath()).toString(), v2_0);
                }
                String v10_7;
                StringBuilder vtmp34 = new StringBuilder().append("Extraction ");
                if (v7 == 0) {
                    v10_7 = "failed";
                } else {
                    v10_7 = "succeeded";
                }
                android.util.Log.i("MultiDex", vtmp34.append(v10_7).append(" \'").append(v3_1.getAbsolutePath()).append("\': length ").append(v3_1.length()).append(" - crc: ").append(v3_1.crc).toString());
                if (v7 == 0) {
                    v3_1.delete();
                    if (v3_1.exists()) {
                        android.util.Log.w("MultiDex", new StringBuilder().append("Failed to delete corrupted secondary dex \'").append(v3_1.getPath()).append("\'").toString());
                    }
                }
            }
            if (v7 != 0) {
                v9++;
                v1 = v0_1.getEntry(new StringBuilder().append("classes").append(v9).append(".dex").toString());
            } else {
                throw new java.io.IOException(new StringBuilder().append("Could not create zip file ").append(v3_1.getAbsolutePath()).append(" for secondary dex (").append(v9).append(")").toString());
            }
        }
        try {
            v0_1.close();
        } catch (java.io.IOException v2_2) {
            android.util.Log.w("MultiDex", "Failed to close resource", v2_2);
        }
        return v6_1;
    }

    private static void putStoredApkInfo(android.content.Context p8, String p9, long p10, long p12, java.util.List p14)
    {
        android.content.SharedPreferences$Editor v1 = androidx.multidex.MultiDexExtractor.getMultiDexPreferences(p8).edit();
        v1.putLong(new StringBuilder().append(p9).append("timestamp").toString(), p10);
        v1.putLong(new StringBuilder().append(p9).append("crc").toString(), p12);
        v1.putInt(new StringBuilder().append(p9).append("dex.number").toString(), (p14.size() + 1));
        int v2 = 2;
        java.util.Iterator v4_12 = p14.iterator();
        while (v4_12.hasNext()) {
            androidx.multidex.MultiDexExtractor$ExtractedDex v0_1 = ((androidx.multidex.MultiDexExtractor$ExtractedDex) v4_12.next());
            v1.putLong(new StringBuilder().append(p9).append("dex.crc.").append(v2).toString(), v0_1.crc);
            v1.putLong(new StringBuilder().append(p9).append("dex.time.").append(v2).toString(), v0_1.lastModified());
            v2++;
        }
        v1.commit();
        return;
    }

    public void close()
    {
        this.cacheLock.release();
        this.lockChannel.close();
        this.lockRaf.close();
        return;
    }

    java.util.List load(android.content.Context p9, String p10, boolean p11)
    {
        android.util.Log.i("MultiDex", new StringBuilder().append("MultiDexExtractor.load(").append(this.sourceApk.getPath()).append(", ").append(p11).append(", ").append(p10).append(")").toString());
        if (this.cacheLock.isValid()) {
            if ((p11) || (androidx.multidex.MultiDexExtractor.isModified(p9, this.sourceApk, this.sourceCrc, p10))) {
                if (!p11) {
                    android.util.Log.i("MultiDex", "Detected that extraction must be performed.");
                } else {
                    android.util.Log.i("MultiDex", "Forced extraction must be performed.");
                }
                java.util.List v6 = this.performExtractions();
                androidx.multidex.MultiDexExtractor.putStoredApkInfo(p9, p10, androidx.multidex.MultiDexExtractor.getTimeStamp(this.sourceApk), this.sourceCrc, v6);
            } else {
                try {
                    v6 = this.loadExistingExtractions(p9, p10);
                } catch (java.io.IOException v7) {
                    android.util.Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", v7);
                    v6 = this.performExtractions();
                    androidx.multidex.MultiDexExtractor.putStoredApkInfo(p9, p10, androidx.multidex.MultiDexExtractor.getTimeStamp(this.sourceApk), this.sourceCrc, v6);
                }
            }
            android.util.Log.i("MultiDex", new StringBuilder().append("load found ").append(v6.size()).append(" secondary dex files").toString());
            return v6;
        } else {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
    }
}
