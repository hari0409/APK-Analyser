package com.afwsamples.testdpc;
public final class UserIconContentProvider extends android.content.ContentProvider {
    static final String AUTHORITY = "com.afwsamples.testdpc.usericoncontentprovider";
    private static final String[] COLUMNS = None;
    private static final String COLUMN_ABSOLUTE_PATH = "absolute_path";
    private static final String COLUMN_DIRECTORY = "is_directory";
    private static final String COLUMN_METADATA = "metadata";
    private static final String COLUMN_MIME_TYPE = "mime_type";
    private static final String COLUMN_NAME = "name";
    private static final android.webkit.MimeTypeMap MIME_MAP = None;
    private static final String TAG = "";
    private static final String USER_ICONS_DIR = "UserIcons";
    private final java.util.Map mFileTracker;

    static UserIconContentProvider()
    {
        com.afwsamples.testdpc.UserIconContentProvider.TAG = com.afwsamples.testdpc.UserIconContentProvider.getSimpleName();
        android.webkit.MimeTypeMap v0_4 = new String[5];
        v0_4[0] = "name";
        v0_4[1] = "absolute_path";
        v0_4[2] = "is_directory";
        v0_4[3] = "mime_type";
        v0_4[4] = "metadata";
        com.afwsamples.testdpc.UserIconContentProvider.COLUMNS = v0_4;
        com.afwsamples.testdpc.UserIconContentProvider.MIME_MAP = android.webkit.MimeTypeMap.getSingleton();
        return;
    }

    public UserIconContentProvider()
    {
        this.mFileTracker = new java.util.HashMap();
        return;
    }

    private Object getColumnValue(String p3, java.io.File p4, String p5)
    {
        String v0 = 0;
        if (!"name".equals(p3)) {
            if (!"absolute_path".equals(p3)) {
                if (!"is_directory".equals(p3)) {
                    if (!"metadata".equals(p3)) {
                        if ("mime_type".equals(p3)) {
                            if (!p4.isDirectory()) {
                                v0 = this.getType(p4);
                            } else {
                                v0 = 0;
                            }
                        }
                    } else {
                        v0 = p5;
                    }
                } else {
                    v0 = Boolean.valueOf(p4.isDirectory());
                }
            } else {
                v0 = p4.getAbsolutePath();
            }
        } else {
            v0 = p4.getName();
        }
        return v0;
    }

    static java.io.File getFile(android.content.Context p6, String p7)
    {
        java.io.File v1_1 = new java.io.File(com.afwsamples.testdpc.UserIconContentProvider.getStorageDirectory(p6), new java.io.File(p7).getName());
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("getFile(").append(p7).append("): returning ").append(v1_1).toString());
        return v1_1;
    }

    private java.io.File getFileForUri(android.net.Uri p6)
    {
        java.io.File v0 = com.afwsamples.testdpc.UserIconContentProvider.getFile(this.getContext(), p6.getPath());
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("getFileForUri(").append(p6).append("): returning ").append(v0).toString());
        return v0;
    }

    private Object[] getRow(String[] p4, java.io.File p5, String p6)
    {
        Object[] v1 = new Object[p4.length];
        int v0 = 0;
        while (v0 < p4.length) {
            v1[v0] = this.getColumnValue(p4[v0], p5, p6);
            v0++;
        }
        return v1;
    }

    static java.io.File getStorageDirectory(android.content.Context p3)
    {
        return new java.io.File(p3.getExternalFilesDir(android.os.Environment.DIRECTORY_PICTURES), "UserIcons");
    }

    private String getType(java.io.File p6)
    {
        String v2;
        int v1 = p6.getName().lastIndexOf(46);
        if (v1 < 0) {
            v2 = "application/octet-stream";
        } else {
            v2 = com.afwsamples.testdpc.UserIconContentProvider.MIME_MAP.getMimeTypeFromExtension(p6.getName().substring((v1 + 1)));
            if (v2 == null) {
            }
        }
        return v2;
    }

    static final synthetic int lambda$sortFilesByAbsolutePath$94$UserIconContentProvider(java.io.File p2, java.io.File p3)
    {
        return p2.getAbsolutePath().compareTo(p3.getAbsolutePath());
    }

    private static int modeToMode(String p4)
    {
        int v0;
        if (!"r".equals(p4)) {
            if ((!"w".equals(p4)) && (!"wt".equals(p4))) {
                if (!"wa".equals(p4)) {
                    if (!"rw".equals(p4)) {
                        if (!"rwt".equals(p4)) {
                            throw new IllegalArgumentException(new StringBuilder().append("Invalid mode: ").append(p4).toString());
                        } else {
                            v0 = 1006632960;
                        }
                    } else {
                        v0 = 939524096;
                    }
                } else {
                    v0 = 704643072;
                }
            } else {
                v0 = 738197504;
            }
        } else {
            v0 = 268435456;
        }
        return v0;
    }

    private int recursiveDelete(java.io.File p8)
    {
        int v2_1;
        int v3 = 0;
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("recursiveDelete(): rootDir=").append(p8).toString());
        if (p8 != null) {
            int v2_0 = 0;
            if (p8.isDirectory()) {
                java.io.File[] v1 = p8.listFiles();
                if (v1 != null) {
                    int v4_2 = v1.length;
                    while (v3 < v4_2) {
                        v2_0 += this.recursiveDelete(v1[v3]);
                        v3++;
                    }
                }
            }
            p8.delete();
            v2_1 = (v2_0 + 1);
        } else {
            v2_1 = 0;
        }
        return v2_1;
    }

    private static void sortFilesByAbsolutePath(java.io.File[] p1)
    {
        java.util.Arrays.sort(p1, com.afwsamples.testdpc.UserIconContentProvider$$Lambda$0.$instance);
        return;
    }

    public int delete(android.net.Uri p6, String p7, String[] p8)
    {
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("delete(): uri=").append(p6).toString());
        this.mFileTracker.remove(p6);
        return this.recursiveDelete(this.getFileForUri(p6));
    }

    public String getType(android.net.Uri p2)
    {
        return this.getType(this.getFileForUri(p2));
    }

    public android.net.Uri insert(android.net.Uri p7, android.content.ContentValues p8)
    {
        java.io.File v1 = this.getFileForUri(p7);
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("insert(): uri=").append(p7).append(", file=").append(v1).toString());
        if (v1.exists()) {
            if (this.mFileTracker.get(p7) == null) {
                this.mFileTracker.put(p7, p8);
            } else {
                android.util.Log.e(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Insert - File from uri: \'").append(p7).append("\' already exists, ignoring").toString());
                p7 = 0;
            }
        } else {
            android.util.Log.e(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Insert - File from uri: \'").append(p7).append("\' doesn\'t exist").toString());
            p7 = 0;
        }
        return p7;
    }

    public boolean onCreate()
    {
        return 1;
    }

    public android.os.ParcelFileDescriptor openFile(android.net.Uri p10, String p11)
    {
        java.io.File v2 = this.getFileForUri(p10);
        int v3 = com.afwsamples.testdpc.UserIconContentProvider.modeToMode(p11);
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("openFile(): uri=").append(p10).append(", mode=").append(p11).append("(").append(v3).append(")").toString());
        if ((v3 & 134217728) == 134217728) {
            android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Creating file ").append(v2).toString());
            java.io.File v4 = v2.getParentFile();
            if (!v4.exists()) {
                android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Creating parents for ").append(v2).toString());
                if (!v4.mkdirs()) {
                    throw new java.io.FileNotFoundException(new StringBuilder().append("Could not created parent dirs for ").append(v2).toString());
                }
            }
            if (!this.mFileTracker.containsKey(p10)) {
                this.mFileTracker.put(p10, new android.content.ContentValues());
            }
        }
        android.os.ParcelFileDescriptor v1 = android.os.ParcelFileDescriptor.open(v2, v3);
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Returning FD ").append(v1.getFd()).append(" for ").append(v2.getAbsoluteFile()).toString());
        return v1;
    }

    public android.database.Cursor query(android.net.Uri p11, String[] p12, String p13, String[] p14, String p15)
    {
        android.database.MatrixCursor v1_1;
        java.io.File v2 = this.getFileForUri(p11);
        android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Query: ").append(p11).toString());
        if (!"/".equals(v2.getAbsolutePath())) {
            if (v2.exists()) {
                if (v2.isDirectory()) {
                    java.io.File[] v3 = v2.listFiles();
                    com.afwsamples.testdpc.UserIconContentProvider.sortFilesByAbsolutePath(v3);
                    v1_1 = new android.database.MatrixCursor(com.afwsamples.testdpc.UserIconContentProvider.COLUMNS, (v3.length + 1));
                    int v8_6 = v3.length;
                    int v7_6 = 0;
                    while (v7_6 < v8_6) {
                        v1_1.addRow(this.getRow(com.afwsamples.testdpc.UserIconContentProvider.COLUMNS, v3[v7_6], 0));
                        v7_6++;
                    }
                } else {
                    v1_1 = new android.database.MatrixCursor(com.afwsamples.testdpc.UserIconContentProvider.COLUMNS, 1);
                    v1_1.addRow(this.getRow(com.afwsamples.testdpc.UserIconContentProvider.COLUMNS, v2, 0));
                }
            } else {
                android.util.Log.e(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Query - File from uri: \'").append(p11).append("\' doesn\'t exists").toString());
                v1_1 = 0;
            }
        } else {
            v1_1 = new android.database.MatrixCursor(com.afwsamples.testdpc.UserIconContentProvider.COLUMNS, this.mFileTracker.size());
            int v7_12 = this.mFileTracker.entrySet().iterator();
            while (v7_12.hasNext()) {
                java.util.Map$Entry v5_1 = ((java.util.Map$Entry) v7_12.next());
                android.util.Log.v(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Adding path ").append(v5_1).toString());
                v1_1.addRow(this.getRow(com.afwsamples.testdpc.UserIconContentProvider.COLUMNS, this.getFileForUri(((android.net.Uri) v5_1.getKey())), ((android.content.ContentValues) v5_1.getValue()).getAsString("metadata")));
            }
        }
        return v1_1;
    }

    public int update(android.net.Uri p6, android.content.ContentValues p7, String p8, String[] p9)
    {
        int v1_0 = 0;
        if (this.getFileForUri(p6).exists()) {
            if (this.mFileTracker.get(p6) != null) {
                this.mFileTracker.put(p6, p7);
                v1_0 = 1;
            } else {
                android.util.Log.e(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Update - File from uri: \'").append(p6).append("\' isn\'t tracked yet, use insert").toString());
            }
        } else {
            android.util.Log.e(com.afwsamples.testdpc.UserIconContentProvider.TAG, new StringBuilder().append("Update - File from uri: \'").append(p6).append("\' doesn\'t exist").toString());
        }
        return v1_0;
    }
}
