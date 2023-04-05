package com.afwsamples.testdpc.policy.utils;
public class CertificateUtils {

    public CertificateUtils()
    {
        return;
    }

    public static java.security.cert.X509Certificate createCertificate(java.security.KeyPair p22, javax.security.auth.x500.X500Principal p23, javax.security.auth.x500.X500Principal p24)
    {
        String v16;
        long v14 = System.currentTimeMillis();
        java.util.Date v5_1 = new java.util.Date((v14 - 86400000));
        java.util.Date v6_0 = new java.util.Date((v14 + 86400000));
        byte[] v11 = new byte[16];
        new java.security.SecureRandom().nextBytes(v11);
        org.bouncycastle.cert.X509v3CertificateBuilder v2_1 = new org.bouncycastle.cert.X509v3CertificateBuilder(org.bouncycastle.asn1.x500.X500Name.getInstance(p24.getEncoded()), new java.math.BigInteger(1, v11), v5_1, v6_0, org.bouncycastle.asn1.x500.X500Name.getInstance(p23.getEncoded()), org.bouncycastle.asn1.x509.SubjectPublicKeyInfo.getInstance(p22.getPublic().getEncoded()));
        String v10 = p22.getPrivate().getAlgorithm();
        if (!v10.equals("RSA")) {
            if (!v10.equals("EC")) {
                throw new IllegalArgumentException(new StringBuilder().append("Unknown key algorithm ").append(v10).toString());
            } else {
                v16 = "SHA256withECDSA";
            }
        } else {
            v16 = "SHA256withRSA";
        }
        return ((java.security.cert.X509Certificate) java.security.cert.CertificateFactory.getInstance("X.509").generateCertificate(new java.io.ByteArrayInputStream(v2_1.build(new org.bouncycastle.operator.jcajce.JcaContentSignerBuilder(v16).build(p22.getPrivate())).getEncoded())));
    }
}
