package androidx.multidex;
final class ZipUtil {
    private static final int BUFFER_SIZE = 16384;
    private static final int ENDHDR = 22;
    private static final int ENDSIG = 101010256;

    ZipUtil()
    {
        return;
    }

    static long computeCrcOfCentralDir(java.io.RandomAccessFile p12, androidx.multidex.ZipUtil$CentralDirectory p13)
    {
        java.util.zip.CRC32 v1_1 = new java.util.zip.CRC32();
        long v4 = p13.size;
        p12.seek(p13.offset);
        byte[] v0 = new byte[16384];
        int v2_0 = p12.read(v0, 0, ((int) Math.min(16384, v4)));
        while (v2_0 != -1) {
            v1_1.update(v0, 0, v2_0);
            v4 -= ((long) v2_0);
            if (v4 == 0) {
                break;
            }
            v2_0 = p12.read(v0, 0, ((int) Math.min(16384, v4)));
        }
        return v1_1.getValue();
    }

    static androidx.multidex.ZipUtil$CentralDirectory findCentralDirectory(java.io.RandomAccessFile p10)
    {
        long v2 = (p10.length() - 22);
        if (v2 >= 0) {
            long v4 = (v2 - 65536);
            if (v4 < 0) {
                v4 = 0;
            }
            int v1 = Integer.reverseBytes(101010256);
            do {
                p10.seek(v2);
                if (p10.readInt() != v1) {
                    v2--;
                } else {
                    p10.skipBytes(2);
                    p10.skipBytes(2);
                    p10.skipBytes(2);
                    p10.skipBytes(2);
                    androidx.multidex.ZipUtil$CentralDirectory v0_1 = new androidx.multidex.ZipUtil$CentralDirectory();
                    v0_1.size = (((long) Integer.reverseBytes(p10.readInt())) & 2.1219957905e-314);
                    v0_1.offset = (((long) Integer.reverseBytes(p10.readInt())) & 2.1219957905e-314);
                    return v0_1;
                }
            } while(v2 >= v4);
            throw new java.util.zip.ZipException("End Of Central Directory signature not found");
        } else {
            throw new java.util.zip.ZipException(new StringBuilder().append("File too short to be a zip file: ").append(p10.length()).toString());
        }
    }

    static long getZipCrc(java.io.File p4)
    {
        java.io.RandomAccessFile v1_1 = new java.io.RandomAccessFile(p4, "r");
        try {
            Throwable v2_1 = androidx.multidex.ZipUtil.computeCrcOfCentralDir(v1_1, androidx.multidex.ZipUtil.findCentralDirectory(v1_1));
            v1_1.close();
            return v2_1;
        } catch (Throwable v2_2) {
            v1_1.close();
            throw v2_2;
        }
    }
}
