package com.afwsamples.testdpc.policy.utils;
public class Attestation {
    static final int ATTESTATION_CHALLENGE_INDEX = 4;
    static final int ATTESTATION_SECURITY_LEVEL_INDEX = 1;
    static final int ATTESTATION_VERSION_INDEX = 0;
    static final int KEYMASTER_SECURITY_LEVEL_INDEX = 3;
    static final int KEYMASTER_VERSION_INDEX = 2;
    static final String KEY_DESCRIPTION_OID = "1.3.6.1.4.1.11129.2.1.17";
    public static final int KM_SECURITY_LEVEL_SOFTWARE = 0;
    public static final int KM_SECURITY_LEVEL_TRUSTED_ENVIRONMENT = 1;
    static final int SW_ENFORCED_INDEX = 6;
    static final int TEE_ENFORCED_INDEX = 7;
    static final int UNIQUE_ID_INDEX = 5;
    private final byte[] attestationChallenge;
    private final int attestationSecurityLevel;
    private final int attestationVersion;
    private final int keymasterSecurityLevel;
    private final int keymasterVersion;
    private final com.afwsamples.testdpc.policy.utils.AuthorizationList softwareEnforced;
    private final com.afwsamples.testdpc.policy.utils.AuthorizationList teeEnforced;
    private final byte[] uniqueId;

    public Attestation(java.security.cert.X509Certificate p4)
    {
        org.bouncycastle.asn1.ASN1Sequence v0 = this.getAttestationSequence(p4);
        this.attestationVersion = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v0.getObjectAt(0));
        this.attestationSecurityLevel = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v0.getObjectAt(1));
        this.keymasterVersion = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v0.getObjectAt(2));
        this.keymasterSecurityLevel = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v0.getObjectAt(3));
        this.attestationChallenge = com.afwsamples.testdpc.policy.utils.Asn1Utils.getByteArrayFromAsn1(v0.getObjectAt(4));
        this.uniqueId = com.afwsamples.testdpc.policy.utils.Asn1Utils.getByteArrayFromAsn1(v0.getObjectAt(5));
        this.softwareEnforced = new com.afwsamples.testdpc.policy.utils.AuthorizationList(v0.getObjectAt(6));
        this.teeEnforced = new com.afwsamples.testdpc.policy.utils.AuthorizationList(v0.getObjectAt(7));
        return;
    }

    private org.bouncycastle.asn1.ASN1Sequence getAttestationSequence(java.security.cert.X509Certificate p4)
    {
        byte[] v0 = p4.getExtensionValue("1.3.6.1.4.1.11129.2.1.17");
        if ((v0 != null) && (v0.length != 0)) {
            return com.afwsamples.testdpc.policy.utils.Asn1Utils.getAsn1SequenceFromBytes(v0);
        } else {
            throw new java.security.cert.CertificateParsingException("Did not find extension with OID 1.3.6.1.4.1.11129.2.1.17");
        }
    }

    public static String securityLevelToString(int p1)
    {
        String v0;
        switch (p1) {
            case 0:
                v0 = "Software";
                break;
            case 1:
                v0 = "TEE";
                break;
            default:
                v0 = "Unkown";
        }
        return v0;
    }

    public byte[] getAttestationChallenge()
    {
        return this.attestationChallenge;
    }

    public int getAttestationSecurityLevel()
    {
        return this.attestationSecurityLevel;
    }

    public int getAttestationVersion()
    {
        return this.attestationVersion;
    }

    public int getKeymasterSecurityLevel()
    {
        return this.keymasterSecurityLevel;
    }

    public int getKeymasterVersion()
    {
        return this.keymasterVersion;
    }

    public com.afwsamples.testdpc.policy.utils.AuthorizationList getSoftwareEnforced()
    {
        return this.softwareEnforced;
    }

    public com.afwsamples.testdpc.policy.utils.AuthorizationList getTeeEnforced()
    {
        return this.teeEnforced;
    }

    public byte[] getUniqueId()
    {
        return this.uniqueId;
    }

    public String toString()
    {
        StringBuilder v0_1 = new StringBuilder();
        v0_1.append(new StringBuilder().append("Attest version: ").append(this.attestationVersion).toString());
        v0_1.append(new StringBuilder().append("\nAttest security: ").append(com.afwsamples.testdpc.policy.utils.Attestation.securityLevelToString(this.attestationSecurityLevel)).toString());
        v0_1.append(new StringBuilder().append("\nKM version: ").append(this.keymasterVersion).toString());
        v0_1.append(new StringBuilder().append("\nKM security: ").append(com.afwsamples.testdpc.policy.utils.Attestation.securityLevelToString(this.keymasterSecurityLevel)).toString());
        v0_1.append("\nChallenge");
        String v1_1 = new String(this.attestationChallenge);
        if (!com.google.common.base.CharMatcher.ASCII.matchesAllOf(v1_1)) {
            v0_1.append(new StringBuilder().append(" (base64): [").append(com.google.common.io.BaseEncoding.base64().encode(this.attestationChallenge)).append("]").toString());
        } else {
            v0_1.append(new StringBuilder().append(": [").append(v1_1).append("]").toString());
        }
        if (this.uniqueId != null) {
            v0_1.append(new StringBuilder().append("\nUnique ID (base64): [").append(com.google.common.io.BaseEncoding.base64().encode(this.uniqueId)).append("]").toString());
        }
        v0_1.append("\n-- SW enforced --");
        v0_1.append(this.softwareEnforced);
        v0_1.append("\n-- TEE enforced --");
        v0_1.append(this.teeEnforced);
        return v0_1.toString();
    }
}
