package com.afwsamples.testdpc.policy.utils;
public class Asn1Utils {

    public Asn1Utils()
    {
        return;
    }

    private static int bigIntegerToInt(java.math.BigInteger p2)
    {
        if ((p2.compareTo(java.math.BigInteger.valueOf(2147483647)) <= 0) && (p2.compareTo(java.math.BigInteger.ZERO) >= 0)) {
            return p2.intValue();
        } else {
            throw new java.security.cert.CertificateParsingException("INTEGER out of bounds");
        }
    }

    private static long bigIntegerToLong(java.math.BigInteger p2)
    {
        if ((p2.compareTo(java.math.BigInteger.valueOf(nan)) <= 0) && (p2.compareTo(java.math.BigInteger.ZERO) >= 0)) {
            return p2.longValue();
        } else {
            throw new java.security.cert.CertificateParsingException("INTEGER out of bounds");
        }
    }

    public static org.bouncycastle.asn1.ASN1Encodable getAsn1EncodableFromBytes(byte[] p5)
    {
        try {
            org.bouncycastle.asn1.ASN1InputStream v0_1 = new org.bouncycastle.asn1.ASN1InputStream(p5);
            Throwable v3_0 = 0;
            try {
                Throwable v2_2 = v0_1.readObject();
            } catch (Throwable v3_0) {
                throw v3_0;
            } catch (Throwable v2_3) {
                if (v0_1 != null) {
                    if (v3_0 == null) {
                        v0_1.close();
                    } else {
                        v0_1.close();
                    }
                }
                throw v2_3;
            }
            if (v0_1 != null) {
                if (0 == 0) {
                    v0_1.close();
                } else {
                    try {
                        v0_1.close();
                    } catch (Throwable v4_1) {
                        0.addSuppressed(v4_1);
                    }
                }
            }
            return v2_2;
        } catch (java.io.IOException v1) {
            throw new java.security.cert.CertificateParsingException("Failed to parse Encodable", v1);
        }
    }

    public static org.bouncycastle.asn1.ASN1Sequence getAsn1SequenceFromBytes(byte[] p5)
    {
        try {
            org.bouncycastle.asn1.ASN1InputStream v0_1 = new org.bouncycastle.asn1.ASN1InputStream(p5);
            Throwable v3_0 = 0;
            try {
                Throwable v2_2 = com.afwsamples.testdpc.policy.utils.Asn1Utils.getAsn1SequenceFromStream(v0_1);
            } catch (Throwable v3_0) {
                throw v3_0;
            } catch (Throwable v2_3) {
                if (v0_1 != null) {
                    if (v3_0 == null) {
                        v0_1.close();
                    } else {
                        v0_1.close();
                    }
                }
                throw v2_3;
            }
            if (v0_1 != null) {
                if (0 == 0) {
                    v0_1.close();
                } else {
                    try {
                        v0_1.close();
                    } catch (Throwable v4_1) {
                        0.addSuppressed(v4_1);
                    }
                }
            }
            return v2_2;
        } catch (java.io.IOException v1) {
            throw new java.security.cert.CertificateParsingException("Failed to parse SEQUENCE", v1);
        }
    }

    public static org.bouncycastle.asn1.ASN1Sequence getAsn1SequenceFromStream(org.bouncycastle.asn1.ASN1InputStream p6)
    {
        org.bouncycastle.asn1.ASN1Sequence v0_0 = p6.readObject();
        if ((v0_0 instanceof org.bouncycastle.asn1.ASN1OctetString)) {
            org.bouncycastle.asn1.ASN1InputStream v1_1 = new org.bouncycastle.asn1.ASN1InputStream(((org.bouncycastle.asn1.ASN1OctetString) v0_0).getOctets());
            java.security.cert.CertificateParsingException v4_0 = 0;
            try {
                org.bouncycastle.asn1.ASN1Sequence v0_1 = v1_1.readObject();
            } catch (Throwable v2_6) {
                Throwable v3_5 = v2_6;
                if (v1_1 != null) {
                    if (v4_0 == null) {
                        v1_1.close();
                    } else {
                        try {
                            v1_1.close();
                        } catch (Throwable v2_7) {
                            v4_0.addSuppressed(v2_7);
                        }
                    }
                }
                throw v3_5;
            } catch (Throwable v2_5) {
                try {
                    throw v2_5;
                } catch (Throwable v3_5) {
                    v4_0 = v2_5;
                }
            }
            if ((v0_1 instanceof org.bouncycastle.asn1.ASN1Sequence)) {
                org.bouncycastle.asn1.ASN1Sequence v0_2 = ((org.bouncycastle.asn1.ASN1Sequence) v0_1);
                if (v1_1 != null) {
                    if (0 == 0) {
                        v1_1.close();
                    } else {
                        try {
                            v1_1.close();
                        } catch (Throwable v2_2) {
                            0.addSuppressed(v2_2);
                        }
                    }
                }
                return v0_2;
            } else {
                throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected sequence, found ").append(v0_1.getClass().getName()).toString());
            }
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected octet stream, found ").append(v0_0.getClass().getName()).toString());
        }
    }

    public static boolean getBooleanFromAsn1(org.bouncycastle.asn1.ASN1Encodable p3)
    {
        if ((p3 instanceof org.bouncycastle.asn1.ASN1Boolean)) {
            return ((org.bouncycastle.asn1.ASN1Boolean) p3).isTrue();
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected boolean, found ").append(p3.getClass().getName()).toString());
        }
    }

    public static byte[] getByteArrayFromAsn1(org.bouncycastle.asn1.ASN1Encodable p3)
    {
        if ((p3 != null) && ((p3 instanceof org.bouncycastle.asn1.DEROctetString))) {
            return ((org.bouncycastle.asn1.ASN1OctetString) p3).getOctets();
        } else {
            throw new java.security.cert.CertificateParsingException("Expected DEROctetString");
        }
    }

    public static java.util.Date getDateFromAsn1(org.bouncycastle.asn1.ASN1Primitive p4)
    {
        return new java.util.Date(com.afwsamples.testdpc.policy.utils.Asn1Utils.getLongFromAsn1(p4).longValue());
    }

    public static int getIntegerFromAsn1(org.bouncycastle.asn1.ASN1Encodable p3)
    {
        java.security.cert.CertificateParsingException v0_4;
        if (!(p3 instanceof org.bouncycastle.asn1.ASN1Integer)) {
            if (!(p3 instanceof org.bouncycastle.asn1.ASN1Enumerated)) {
                throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Integer value expected, ").append(p3.getClass().getName()).append(" found.").toString());
            } else {
                v0_4 = com.afwsamples.testdpc.policy.utils.Asn1Utils.bigIntegerToInt(((org.bouncycastle.asn1.ASN1Enumerated) p3).getValue());
            }
        } else {
            v0_4 = com.afwsamples.testdpc.policy.utils.Asn1Utils.bigIntegerToInt(((org.bouncycastle.asn1.ASN1Integer) p3).getValue());
        }
        return v0_4;
    }

    public static java.util.Set getIntegersFromAsn1Set(org.bouncycastle.asn1.ASN1Encodable p5)
    {
        if ((p5 instanceof org.bouncycastle.asn1.ASN1Set)) {
            java.util.HashSet v1_1 = new java.util.HashSet();
            java.util.Enumeration v0 = ((org.bouncycastle.asn1.ASN1Set) p5).getObjects();
            while (v0.hasMoreElements()) {
                v1_1.add(Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(((org.bouncycastle.asn1.ASN1Integer) v0.nextElement()))));
            }
            return v1_1;
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected set, found ").append(p5.getClass().getName()).toString());
        }
    }

    public static Long getLongFromAsn1(org.bouncycastle.asn1.ASN1Encodable p3)
    {
        if (!(p3 instanceof org.bouncycastle.asn1.ASN1Integer)) {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Integer value expected, ").append(p3.getClass().getName()).append(" found.").toString());
        } else {
            return Long.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.bigIntegerToLong(((org.bouncycastle.asn1.ASN1Integer) p3).getValue()));
        }
    }

    public static String getStringFromAsn1OctetStreamAssumingUTF8(org.bouncycastle.asn1.ASN1Encodable p4)
    {
        if ((p4 instanceof org.bouncycastle.asn1.ASN1OctetString)) {
            return new String(((org.bouncycastle.asn1.ASN1OctetString) p4).getOctets(), "UTF-8");
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected octet string, found ").append(p4.getClass().getName()).toString());
        }
    }
}
