package com.afwsamples.testdpc.policy.utils;
public class AttestationPackageInfo implements java.lang.Comparable {
    private static final int PACKAGE_NAME_INDEX = 0;
    private static final int VERSION_INDEX = 1;
    private final String packageName;
    private final long version;

    public AttestationPackageInfo(String p1, long p2)
    {
        this.packageName = p1;
        this.version = p2;
        return;
    }

    public AttestationPackageInfo(org.bouncycastle.asn1.ASN1Encodable p6)
    {
        if ((p6 instanceof org.bouncycastle.asn1.ASN1Sequence)) {
            try {
                this.packageName = com.afwsamples.testdpc.policy.utils.Asn1Utils.getStringFromAsn1OctetStreamAssumingUTF8(((org.bouncycastle.asn1.ASN1Sequence) p6).getObjectAt(0));
                this.version = com.afwsamples.testdpc.policy.utils.Asn1Utils.getLongFromAsn1(((org.bouncycastle.asn1.ASN1Sequence) p6).getObjectAt(1)).longValue();
                return;
            } catch (java.io.UnsupportedEncodingException v0) {
                throw new java.security.cert.CertificateParsingException("Converting octet stream to String triggered an UnsupportedEncodingException", v0);
            }
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected sequence for AttestationPackageInfo, found ").append(p6.getClass().getName()).toString());
        }
    }

    public int compareTo(com.afwsamples.testdpc.policy.utils.AttestationPackageInfo p9)
    {
        int v2;
        int v0_0 = this.packageName.compareTo(p9.packageName);
        if (v0_0 == 0) {
            int v0_1 = Long.compare(this.version, p9.version);
            if (v0_1 == 0) {
                v2 = v0_1;
            } else {
                v2 = v0_1;
            }
        } else {
            v2 = v0_0;
        }
        return v2;
    }

    public bridge synthetic int compareTo(Object p2)
    {
        return this.compareTo(((com.afwsamples.testdpc.policy.utils.AttestationPackageInfo) p2));
    }

    public boolean equals(Object p2)
    {
        if ((!(p2 instanceof com.afwsamples.testdpc.policy.utils.AttestationPackageInfo)) || (this.compareTo(((com.afwsamples.testdpc.policy.utils.AttestationPackageInfo) p2)) != 0)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public String getPackageName()
    {
        return this.packageName;
    }

    public long getVersion()
    {
        return this.version;
    }

    public String toString()
    {
        return new StringBuilder().append("Package name: ").append(this.getPackageName()).append(new StringBuilder().append("\nVersion: ").append(this.getVersion()).toString()).toString();
    }
}
