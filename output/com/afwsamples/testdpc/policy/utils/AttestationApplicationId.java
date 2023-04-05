package com.afwsamples.testdpc.policy.utils;
public class AttestationApplicationId implements java.lang.Comparable {
    private static final int PACKAGE_INFOS_INDEX = 0;
    private static final int SIGNATURE_DIGESTS_INDEX = 1;
    private final java.util.List packageInfos;
    private final java.util.List signatureDigests;

    public AttestationApplicationId(android.content.Context p15)
    {
        android.content.pm.PackageManager v3 = p15.getPackageManager();
        String[] v2 = v3.getPackagesForUid(p15.getApplicationInfo().uid);
        if ((v2 != null) && (v2.length != 0)) {
            this.packageInfos = new java.util.ArrayList();
            com.afwsamples.testdpc.policy.utils.AttestationApplicationId$ByteArrayComparator v8_0 = v2.length;
            java.util.List v7_2 = 0;
            while (v7_2 < v8_0) {
                String v1 = v2[v7_2];
                this.packageInfos.add(new com.afwsamples.testdpc.policy.utils.AttestationPackageInfo(v1, ((long) v3.getPackageInfo(v1, 0).versionCode)));
                v7_2++;
            }
            this.packageInfos.sort(0);
            this.signatureDigests = new java.util.ArrayList();
            com.afwsamples.testdpc.policy.utils.AttestationApplicationId$ByteArrayComparator v8_3 = v3.getPackageInfo(v2[0], 64).signatures;
            int v9_0 = v8_3.length;
            java.util.List v7_8 = 0;
            while (v7_8 < v9_0) {
                this.signatureDigests.add(java.security.MessageDigest.getInstance("SHA-256").digest(v8_3[v7_8].toByteArray()));
                v7_8++;
            }
            this.signatureDigests.sort(new com.afwsamples.testdpc.policy.utils.AttestationApplicationId$ByteArrayComparator(this, 0));
            return;
        } else {
            throw new android.content.pm.PackageManager$NameNotFoundException("No names found for uid");
        }
    }

    public AttestationApplicationId(org.bouncycastle.asn1.ASN1Encodable p5)
    {
        if ((p5 instanceof org.bouncycastle.asn1.ASN1Sequence)) {
            this.packageInfos = this.parseAttestationPackageInfos(((org.bouncycastle.asn1.ASN1Sequence) p5).getObjectAt(0));
            this.packageInfos.sort(0);
            this.signatureDigests = this.parseSignatures(((org.bouncycastle.asn1.ASN1Sequence) p5).getObjectAt(1));
            this.signatureDigests.sort(new com.afwsamples.testdpc.policy.utils.AttestationApplicationId$ByteArrayComparator(this, 0));
            return;
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected sequence for AttestationApplicationId, found ").append(p5.getClass().getName()).toString());
        }
    }

    private java.util.List parseAttestationPackageInfos(org.bouncycastle.asn1.ASN1Encodable p7)
    {
        if ((p7 instanceof org.bouncycastle.asn1.ASN1Set)) {
            java.util.ArrayList v1_1 = new java.util.ArrayList();
            java.util.Iterator v3_3 = ((org.bouncycastle.asn1.ASN1Set) p7).iterator();
            while (v3_3.hasNext()) {
                v1_1.add(new com.afwsamples.testdpc.policy.utils.AttestationPackageInfo(((org.bouncycastle.asn1.ASN1Encodable) v3_3.next())));
            }
            return v1_1;
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected set for AttestationApplicationsInfos, found ").append(p7.getClass().getName()).toString());
        }
    }

    private java.util.List parseSignatures(org.bouncycastle.asn1.ASN1Encodable p7)
    {
        if ((p7 instanceof org.bouncycastle.asn1.ASN1Set)) {
            java.util.ArrayList v1_1 = new java.util.ArrayList();
            java.util.Iterator v3_3 = ((org.bouncycastle.asn1.ASN1Set) p7).iterator();
            while (v3_3.hasNext()) {
                v1_1.add(com.afwsamples.testdpc.policy.utils.Asn1Utils.getByteArrayFromAsn1(((org.bouncycastle.asn1.ASN1Encodable) v3_3.next())));
            }
            return v1_1;
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected set for Signature digests, found ").append(p7.getClass().getName()).toString());
        }
    }

    public int compareTo(com.afwsamples.testdpc.policy.utils.AttestationApplicationId p8)
    {
        int v4;
        int v2_2 = Integer.compare(this.packageInfos.size(), p8.packageInfos.size());
        if (v2_2 == 0) {
            int v1_1 = 0;
            while (v1_1 < this.packageInfos.size()) {
                int v2_1 = ((com.afwsamples.testdpc.policy.utils.AttestationPackageInfo) this.packageInfos.get(v1_1)).compareTo(((com.afwsamples.testdpc.policy.utils.AttestationPackageInfo) p8.packageInfos.get(v1_1)));
                if (v2_1 == 0) {
                    v1_1++;
                } else {
                    v4 = v2_1;
                }
            }
            int v2_0 = Integer.compare(this.signatureDigests.size(), p8.signatureDigests.size());
            if (v2_0 == 0) {
                com.afwsamples.testdpc.policy.utils.AttestationApplicationId$ByteArrayComparator v0_1 = new com.afwsamples.testdpc.policy.utils.AttestationApplicationId$ByteArrayComparator(this, 0);
                int v1_0 = 0;
                while (v1_0 < this.signatureDigests.size()) {
                    v2_0 = v0_1.compare(((byte[]) this.signatureDigests.get(v1_0)), ((byte[]) p8.signatureDigests.get(v1_0)));
                    if (v2_0 == 0) {
                        v1_0++;
                    } else {
                        v4 = v2_0;
                    }
                }
                v4 = v2_0;
            } else {
                v4 = v2_0;
            }
        } else {
            v4 = v2_2;
        }
        return v4;
    }

    public bridge synthetic int compareTo(Object p2)
    {
        return this.compareTo(((com.afwsamples.testdpc.policy.utils.AttestationApplicationId) p2));
    }

    public boolean equals(Object p2)
    {
        if ((!(p2 instanceof com.afwsamples.testdpc.policy.utils.AttestationApplicationId)) || (this.compareTo(((com.afwsamples.testdpc.policy.utils.AttestationApplicationId) p2)) != 0)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public java.util.List getAttestationPackageInfos()
    {
        return this.packageInfos;
    }

    public java.util.List getSignatureDigests()
    {
        return this.signatureDigests;
    }

    public String toString()
    {
        StringBuilder v6_1 = new StringBuilder();
        v6_1.append("AttestationApplicationId:");
        int v4 = this.packageInfos.size();
        int v8_0 = this.packageInfos.iterator();
        while (v8_0.hasNext()) {
            com.afwsamples.testdpc.policy.utils.AttestationPackageInfo v3_1 = ((com.afwsamples.testdpc.policy.utils.AttestationPackageInfo) v8_0.next());
            v6_1.append(new StringBuilder().append("\n### Package info ").append(1).append("/").append(v4).append(" ###\n").toString());
            v6_1.append(v3_1);
        }
        int v1_0 = 1;
        int v5 = this.signatureDigests.size();
        java.util.Iterator v10_1 = this.signatureDigests.iterator();
        while (v10_1.hasNext()) {
            byte[] v7_1 = ((byte[]) v10_1.next());
            int v2 = (v1_0 + 1);
            v6_1.append(new StringBuilder().append("\nSignature digest ").append(v1_0).append("/").append(v5).append(":").toString());
            int v11_3 = v7_1.length;
            int v8_15 = 0;
            while (v8_15 < v11_3) {
                Object[] v13_1 = new Object[1];
                v13_1[0] = Byte.valueOf(v7_1[v8_15]);
                v6_1.append(String.format(" %02X", v13_1));
                v8_15++;
            }
            v1_0 = v2;
        }
        return v6_1.toString();
    }
}
