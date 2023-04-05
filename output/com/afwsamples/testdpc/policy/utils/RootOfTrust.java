package com.afwsamples.testdpc.policy.utils;
public class RootOfTrust {
    private static final int DEVICE_LOCKED_INDEX = 1;
    public static final int KM_VERIFIED_BOOT_FAILED = 3;
    public static final int KM_VERIFIED_BOOT_SELF_SIGNED = 1;
    public static final int KM_VERIFIED_BOOT_UNVERIFIED = 2;
    public static final int KM_VERIFIED_BOOT_VERIFIED = 0;
    private static final int VERIFIED_BOOT_KEY_INDEX = 0;
    private static final int VERIFIED_BOOT_STATE_INDEX = 2;
    private final boolean deviceLocked;
    private final byte[] verifiedBootKey;
    private final int verifiedBootState;

    public RootOfTrust(org.bouncycastle.asn1.ASN1Encodable p5)
    {
        if ((p5 instanceof org.bouncycastle.asn1.ASN1Sequence)) {
            this.verifiedBootKey = com.afwsamples.testdpc.policy.utils.Asn1Utils.getByteArrayFromAsn1(((org.bouncycastle.asn1.ASN1Sequence) p5).getObjectAt(0));
            this.deviceLocked = com.afwsamples.testdpc.policy.utils.Asn1Utils.getBooleanFromAsn1(((org.bouncycastle.asn1.ASN1Sequence) p5).getObjectAt(1));
            this.verifiedBootState = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(((org.bouncycastle.asn1.ASN1Sequence) p5).getObjectAt(2));
            return;
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected sequence for root of trust, found ").append(p5.getClass().getName()).toString());
        }
    }

    public static String verifiedBootStateToString(int p1)
    {
        String v0;
        switch (p1) {
            case 0:
                v0 = "Verified";
                break;
            case 1:
                v0 = "Self-signed";
                break;
            case 2:
                v0 = "Unverified";
                break;
            case 3:
                v0 = "Failed";
                break;
            default:
                v0 = "Unknown";
        }
        return v0;
    }

    public byte[] getVerifiedBootKey()
    {
        return this.verifiedBootKey;
    }

    public int getVerifiedBootState()
    {
        return this.verifiedBootState;
    }

    public boolean isDeviceLocked()
    {
        return this.deviceLocked;
    }

    public String toString()
    {
        return new StringBuilder().append("\nVerified boot Key: ").append(com.google.common.io.BaseEncoding.base64().encode(this.verifiedBootKey)).append("\nDevice locked: ").append(this.deviceLocked).append("\nVerified boot state: ").append(com.afwsamples.testdpc.policy.utils.RootOfTrust.verifiedBootStateToString(this.verifiedBootState)).toString();
    }
}
