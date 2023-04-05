package com.afwsamples.testdpc.common;
public class CertificateUtil {
    private static final String TAG = "CertificateUtil";

    public CertificateUtil()
    {
        return;
    }

    public static com.afwsamples.testdpc.common.CertificateUtil$PKCS12ParseInfo parsePKCS12Certificate(android.content.ContentResolver p9, android.net.Uri p10, String p11)
    {
        java.io.InputStream v3 = p9.openInputStream(p10);
        java.security.KeyStore v4 = java.security.KeyStore.getInstance("PKCS12");
        v4.load(v3, p11.toCharArray());
        com.afwsamples.testdpc.common.CertificateUtil$PKCS12ParseInfo v6_1 = java.util.Collections.list(v4.aliases()).iterator();
        while (v6_1.hasNext()) {
            String v0_1 = ((String) v6_1.next());
            java.security.PrivateKey v5_1 = ((java.security.PrivateKey) v4.getKey(v0_1, "".toCharArray()));
            if (v5_1 != null) {
                java.security.cert.X509Certificate v2_1 = ((java.security.cert.X509Certificate) v4.getCertificate(v0_1));
                if (v2_1 != null) {
                    android.util.Log.d("CertificateUtil", new StringBuilder().append("parsePKCS12Certificate: ").append(v0_1).append(" is selected").toString());
                    com.afwsamples.testdpc.common.CertificateUtil$PKCS12ParseInfo v6_2 = new com.afwsamples.testdpc.common.CertificateUtil$PKCS12ParseInfo(v0_1, v2_1, v5_1);
                }
            }
            return v6_2;
        }
        v6_2 = 0;
        return v6_2;
    }
}
