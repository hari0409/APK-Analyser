package com.afwsamples.testdpc.policy.utils;
public class AuthorizationList {
    public static final int HW_AUTH_FINGERPRINT = 2;
    public static final int HW_AUTH_PASSWORD = 1;
    private static final int KEYMASTER_TAG_TYPE_MASK = 268435455;
    public static final int KM_ALGORITHM_EC = 3;
    public static final int KM_ALGORITHM_RSA = 1;
    private static final int KM_BOOL = 1879048192;
    private static final int KM_BYTES = 2415919104;
    private static final int KM_DATE = 1610612736;
    public static final int KM_DIGEST_MD5 = 1;
    public static final int KM_DIGEST_NONE = 0;
    public static final int KM_DIGEST_SHA1 = 2;
    public static final int KM_DIGEST_SHA_2_224 = 3;
    public static final int KM_DIGEST_SHA_2_256 = 4;
    public static final int KM_DIGEST_SHA_2_384 = 5;
    public static final int KM_DIGEST_SHA_2_512 = 6;
    public static final int KM_EC_CURVE_P224 = 0;
    public static final int KM_EC_CURVE_P256 = 1;
    public static final int KM_EC_CURVE_P384 = 2;
    public static final int KM_EC_CURVE_P521 = 3;
    private static final int KM_ENUM = 268435456;
    private static final int KM_ENUM_REP = 536870912;
    public static final int KM_ORIGIN_GENERATED = 0;
    public static final int KM_ORIGIN_IMPORTED = 2;
    public static final int KM_ORIGIN_UNKNOWN = 3;
    public static final int KM_PAD_NONE = 1;
    public static final int KM_PAD_RSA_OAEP = 2;
    public static final int KM_PAD_RSA_PKCS1_1_5_ENCRYPT = 4;
    public static final int KM_PAD_RSA_PKCS1_1_5_SIGN = 5;
    public static final int KM_PAD_RSA_PSS = 3;
    public static final int KM_PURPOSE_DECRYPT = 1;
    public static final int KM_PURPOSE_ENCRYPT = 0;
    public static final int KM_PURPOSE_SIGN = 2;
    public static final int KM_PURPOSE_VERIFY = 3;
    private static final int KM_TAG_ACTIVE_DATETIME = 1610613136;
    private static final int KM_TAG_ALGORITHM = 268435458;
    private static final int KM_TAG_ALLOW_WHILE_ON_BODY = 1879048698;
    private static final int KM_TAG_ALL_APPLICATIONS = 1879048792;
    private static final int KM_TAG_APPLICATION_ID = 2415919705;
    private static final int KM_TAG_ATTESTATION_APPLICATION_ID = 2415919813;
    private static final int KM_TAG_ATTESTATION_ID_BRAND = 2415919814;
    private static final int KM_TAG_ATTESTATION_ID_DEVICE = 2415919815;
    private static final int KM_TAG_ATTESTATION_ID_IMEI = 2415919818;
    private static final int KM_TAG_ATTESTATION_ID_MANUFACTURER = 2415919820;
    private static final int KM_TAG_ATTESTATION_ID_MEID = 2415919819;
    private static final int KM_TAG_ATTESTATION_ID_MODEL = 2415919821;
    private static final int KM_TAG_ATTESTATION_ID_PRODUCT = 2415919816;
    private static final int KM_TAG_ATTESTATION_ID_SERIAL = 2415919817;
    private static final int KM_TAG_AUTH_TIMEOUT = 805306873;
    private static final int KM_TAG_BOOT_PATCHLEVEL = 805307087;
    private static final int KM_TAG_CREATION_DATETIME = 1610613437;
    private static final int KM_TAG_DEVICE_UNIQUE_ATTESTATION = 1879048912;
    private static final int KM_TAG_DIGEST = 536870917;
    private static final int KM_TAG_EC_CURVE = 268435466;
    private static final int KM_TAG_KEY_SIZE = 805306371;
    private static final int KM_TAG_NO_AUTH_REQUIRED = 1879048695;
    private static final int KM_TAG_ORIGIN = 268436158;
    private static final int KM_TAG_ORIGINATION_EXPIRE_DATETIME = 1610613137;
    private static final int KM_TAG_OS_PATCHLEVEL = 805307074;
    private static final int KM_TAG_OS_VERSION = 805307073;
    private static final int KM_TAG_PADDING = 536870918;
    private static final int KM_TAG_PURPOSE = 536870913;
    private static final int KM_TAG_ROLLBACK_RESISTANT = 1879048895;
    private static final int KM_TAG_ROOT_OF_TRUST = 2415919808;
    private static final int KM_TAG_RSA_PUBLIC_EXPONENT = 1342177480;
    private static final int KM_TAG_TRUSTED_CONFIRMATION_REQUIRED = 1879048700;
    private static final int KM_TAG_TRUSTED_USER_PRESENCE_REQUIRED = 1879048699;
    private static final int KM_TAG_USAGE_EXPIRE_DATETIME = 1610613138;
    private static final int KM_TAG_USER_AUTH_TYPE = 268435960;
    private static final int KM_TAG_VENDOR_PATCHLEVEL = 805307086;
    private static final int KM_UINT = 805306368;
    private static final int KM_ULONG = 1342177280;
    private static final com.google.common.collect.ImmutableMap digestMap;
    private static final com.google.common.collect.ImmutableMap paddingMap;
    private static final com.google.common.collect.ImmutableMap purposeMap;
    private java.util.Date activeDateTime;
    private Integer algorithm;
    private boolean allApplications;
    private boolean allowWhileOnBody;
    private byte[] applicationId;
    private com.afwsamples.testdpc.policy.utils.AttestationApplicationId attestationApplicationId;
    private Integer authTimeout;
    private Integer bootPatchLevel;
    private String brand;
    private boolean confirmationRequired;
    private java.util.Date creationDateTime;
    private String device;
    private java.util.Set digests;
    private Integer ecCurve;
    private String imei;
    private boolean individualAttestation;
    private Integer keySize;
    private String manufacturer;
    private String meid;
    private String model;
    private boolean noAuthRequired;
    private Integer origin;
    private java.util.Date originationExpireDateTime;
    private Integer osPatchLevel;
    private Integer osVersion;
    private java.util.Set paddingModes;
    private String product;
    private java.util.Set purposes;
    private boolean rollbackResistant;
    private com.afwsamples.testdpc.policy.utils.RootOfTrust rootOfTrust;
    private Long rsaPublicExponent;
    private String serialNumber;
    private java.util.Date usageExpireDateTime;
    private Integer userAuthType;
    private boolean userPresenceRequired;
    private Integer vendorPatchLevel;

    static AuthorizationList()
    {
        com.afwsamples.testdpc.policy.utils.AuthorizationList.paddingMap = com.google.common.collect.ImmutableMap.builder().put(Integer.valueOf(1), "NONE").put(Integer.valueOf(2), "OAEP").put(Integer.valueOf(3), "PSS").put(Integer.valueOf(4), "PKCS1 ENCRYPT").put(Integer.valueOf(5), "PKCS1 SIGN").build();
        com.afwsamples.testdpc.policy.utils.AuthorizationList.digestMap = com.google.common.collect.ImmutableMap.builder().put(Integer.valueOf(0), "NONE").put(Integer.valueOf(1), "MD5").put(Integer.valueOf(2), "SHA1").put(Integer.valueOf(3), "SHA224").put(Integer.valueOf(4), "SHA256").put(Integer.valueOf(5), "SHA384").put(Integer.valueOf(6), "SHA512").build();
        com.afwsamples.testdpc.policy.utils.AuthorizationList.purposeMap = com.google.common.collect.ImmutableMap.builder().put(Integer.valueOf(1), "DECRYPT").put(Integer.valueOf(0), "ENCRYPT").put(Integer.valueOf(2), "SIGN").put(Integer.valueOf(3), "VERIFY").build();
        return;
    }

    public AuthorizationList(org.bouncycastle.asn1.ASN1Encodable p9)
    {
        if ((p9 instanceof org.bouncycastle.asn1.ASN1Sequence)) {
            org.bouncycastle.asn1.ASN1SequenceParser v1 = ((org.bouncycastle.asn1.ASN1Sequence) p9).parser();
            org.bouncycastle.asn1.ASN1TaggedObject v0 = com.afwsamples.testdpc.policy.utils.AuthorizationList.parseAsn1TaggedObject(v1);
            while (v0 != null) {
                int v2 = v0.getTagNo();
                org.bouncycastle.asn1.ASN1Primitive v3 = v0.getObject();
                android.util.Log.i("Attestation", new StringBuilder().append("Parsing tag: [").append(v2).append("], value: [").append(v3).append("]").toString());
                switch (v2) {
                    case 1:
                        this.purposes = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegersFromAsn1Set(v3);
                        break;
                    case 2:
                        this.algorithm = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 3:
                        this.keySize = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        android.util.Log.i("Attestation", new StringBuilder().append("Found KEY SIZE, value: ").append(this.keySize).toString());
                        break;
                    case 5:
                        this.digests = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegersFromAsn1Set(v3);
                        break;
                    case 6:
                        this.paddingModes = com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegersFromAsn1Set(v3);
                        break;
                    case 10:
                        this.ecCurve = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 200:
                        this.rsaPublicExponent = com.afwsamples.testdpc.policy.utils.Asn1Utils.getLongFromAsn1(v3);
                        break;
                    case 400:
                        this.activeDateTime = com.afwsamples.testdpc.policy.utils.Asn1Utils.getDateFromAsn1(v3);
                        break;
                    case 401:
                        this.originationExpireDateTime = com.afwsamples.testdpc.policy.utils.Asn1Utils.getDateFromAsn1(v3);
                        break;
                    case 402:
                        this.usageExpireDateTime = com.afwsamples.testdpc.policy.utils.Asn1Utils.getDateFromAsn1(v3);
                        break;
                    case 503:
                        this.noAuthRequired = 1;
                        break;
                    case 504:
                        this.userAuthType = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 505:
                        this.authTimeout = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 506:
                        this.allowWhileOnBody = 1;
                        break;
                    case 507:
                        this.userPresenceRequired = 1;
                        break;
                    case 508:
                        this.confirmationRequired = 1;
                        break;
                    case 600:
                        this.allApplications = 1;
                        break;
                    case 601:
                        this.applicationId = com.afwsamples.testdpc.policy.utils.Asn1Utils.getByteArrayFromAsn1(v3);
                        break;
                    case 701:
                        this.creationDateTime = com.afwsamples.testdpc.policy.utils.Asn1Utils.getDateFromAsn1(v3);
                        break;
                    case 702:
                        this.origin = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 703:
                        this.rollbackResistant = 1;
                        break;
                    case 704:
                        this.rootOfTrust = new com.afwsamples.testdpc.policy.utils.RootOfTrust(v3);
                        break;
                    case 705:
                        this.osVersion = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 706:
                        this.osPatchLevel = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 709:
                        this.attestationApplicationId = new com.afwsamples.testdpc.policy.utils.AttestationApplicationId(com.afwsamples.testdpc.policy.utils.Asn1Utils.getAsn1EncodableFromBytes(com.afwsamples.testdpc.policy.utils.Asn1Utils.getByteArrayFromAsn1(v3)));
                        break;
                    case 710:
                        this.brand = this.getStringFromAsn1Value(v3);
                        break;
                    case 711:
                        this.device = this.getStringFromAsn1Value(v3);
                        break;
                    case 712:
                        this.product = this.getStringFromAsn1Value(v3);
                        break;
                    case 713:
                        this.serialNumber = this.getStringFromAsn1Value(v3);
                        break;
                    case 714:
                        this.imei = this.getStringFromAsn1Value(v3);
                        break;
                    case 715:
                        this.meid = this.getStringFromAsn1Value(v3);
                        break;
                    case 716:
                        this.manufacturer = this.getStringFromAsn1Value(v3);
                        break;
                    case 717:
                        this.model = this.getStringFromAsn1Value(v3);
                        break;
                    case 718:
                        this.vendorPatchLevel = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 719:
                        this.bootPatchLevel = Integer.valueOf(com.afwsamples.testdpc.policy.utils.Asn1Utils.getIntegerFromAsn1(v3));
                        break;
                    case 720:
                        this.individualAttestation = 1;
                        break;
                    default:
                        throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Unknown tag ").append(v2).append(" found").toString());
                }
                v0 = com.afwsamples.testdpc.policy.utils.AuthorizationList.parseAsn1TaggedObject(v1);
            }
            return;
        } else {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected sequence for authorization list, found ").append(p9.getClass().getName()).toString());
        }
    }

    public static String algorithmToString(int p1)
    {
        String v0;
        switch (p1) {
            case 1:
                v0 = "RSA";
                break;
            case 2:
            default:
                v0 = "Unknown";
                break;
            case 3:
                v0 = "ECDSA";
                break;
        }
        return v0;
    }

    public static String digestToString(int p2)
    {
        return ((String) com.google.common.base.Functions.forMap(com.afwsamples.testdpc.policy.utils.AuthorizationList.digestMap, "Unknown").apply(Integer.valueOf(p2)));
    }

    public static String digestsToString(java.util.Set p2)
    {
        return com.afwsamples.testdpc.policy.utils.AuthorizationList.joinStrings(com.google.common.collect.Collections2.transform(p2, com.google.common.base.Functions.forMap(com.afwsamples.testdpc.policy.utils.AuthorizationList.digestMap, "Unknown")));
    }

    private static String formatDate(java.util.Date p1)
    {
        return java.text.DateFormat.getDateTimeInstance().format(p1);
    }

    private String getStringFromAsn1Value(org.bouncycastle.asn1.ASN1Primitive p4)
    {
        try {
            return com.afwsamples.testdpc.policy.utils.Asn1Utils.getStringFromAsn1OctetStreamAssumingUTF8(p4);
        } catch (java.io.UnsupportedEncodingException v0) {
            throw new java.security.cert.CertificateParsingException("Error parsing ASN.1 value", v0);
        }
    }

    private static String joinStrings(java.util.Collection p2)
    {
        return new StringBuilder().append("[").append(com.google.common.base.Joiner.on(", ").join(p2)).append("]").toString();
    }

    public static String originToString(int p1)
    {
        String v0;
        switch (p1) {
            case 0:
                v0 = "Generated";
                break;
            case 1:
            default:
                v0 = "Unknown";
                break;
            case 2:
                v0 = "Imported";
                break;
            case 3:
                v0 = "Unknown (KM0)";
                break;
        }
        return v0;
    }

    public static String paddingModeToString(int p2)
    {
        return ((String) com.google.common.base.Functions.forMap(com.afwsamples.testdpc.policy.utils.AuthorizationList.paddingMap, "Unknown").apply(Integer.valueOf(p2)));
    }

    public static String paddingModesToString(java.util.Set p2)
    {
        return com.afwsamples.testdpc.policy.utils.AuthorizationList.joinStrings(com.google.common.collect.Collections2.transform(p2, com.google.common.base.Functions.forMap(com.afwsamples.testdpc.policy.utils.AuthorizationList.paddingMap, "Unknown")));
    }

    private static org.bouncycastle.asn1.ASN1Encodable parseAsn1Encodable(org.bouncycastle.asn1.ASN1SequenceParser p3)
    {
        try {
            return p3.readObject();
        } catch (java.io.IOException v0) {
            throw new java.security.cert.CertificateParsingException("Failed to parse ASN1 sequence", v0);
        }
    }

    private static org.bouncycastle.asn1.ASN1TaggedObject parseAsn1TaggedObject(org.bouncycastle.asn1.ASN1SequenceParser p4)
    {
        org.bouncycastle.asn1.ASN1TaggedObject v0_0 = com.afwsamples.testdpc.policy.utils.AuthorizationList.parseAsn1Encodable(p4);
        if ((v0_0 != null) && (!(v0_0 instanceof org.bouncycastle.asn1.ASN1TaggedObject))) {
            throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Expected tagged object, found ").append(v0_0.getClass().getName()).toString());
        } else {
            return ((org.bouncycastle.asn1.ASN1TaggedObject) v0_0);
        }
    }

    public static String purposesToString(java.util.Set p2)
    {
        return com.afwsamples.testdpc.policy.utils.AuthorizationList.joinStrings(com.google.common.collect.Collections2.transform(p2, com.google.common.base.Functions.forMap(com.afwsamples.testdpc.policy.utils.AuthorizationList.purposeMap, "Unknown")));
    }

    public static String userAuthTypeToString(int p2)
    {
        java.util.ArrayList v0 = com.google.common.collect.Lists.newArrayList();
        if ((p2 & 2) != 0) {
            v0.add("Fingerprint");
        }
        if ((p2 & 1) != 0) {
            v0.add("Password");
        }
        return com.afwsamples.testdpc.policy.utils.AuthorizationList.joinStrings(v0);
    }

    public String ecCurveAsString()
    {
        String v0_1;
        if (this.ecCurve != null) {
            switch (this.ecCurve.intValue()) {
                case 0:
                    v0_1 = "secp224r1";
                    break;
                case 1:
                    v0_1 = "secp256r1";
                    break;
                case 2:
                    v0_1 = "secp384r1";
                    break;
                case 3:
                    v0_1 = "secp521r1";
                    break;
                default:
                    v0_1 = "unknown";
            }
        } else {
            v0_1 = "NULL";
        }
        return v0_1;
    }

    public java.util.Date getActiveDateTime()
    {
        return this.activeDateTime;
    }

    public Integer getAlgorithm()
    {
        return this.algorithm;
    }

    public byte[] getApplicationId()
    {
        return this.applicationId;
    }

    public com.afwsamples.testdpc.policy.utils.AttestationApplicationId getAttestationApplicationId()
    {
        return this.attestationApplicationId;
    }

    public Integer getAuthTimeout()
    {
        return this.authTimeout;
    }

    public Integer getBootPatchLevel()
    {
        return this.bootPatchLevel;
    }

    public String getBrand()
    {
        return this.brand;
    }

    public java.util.Date getCreationDateTime()
    {
        return this.creationDateTime;
    }

    public String getDevice()
    {
        return this.device;
    }

    public java.util.Set getDigests()
    {
        return this.digests;
    }

    public Integer getEcCurve()
    {
        return this.ecCurve;
    }

    public String getImei()
    {
        return this.imei;
    }

    public Integer getKeySize()
    {
        return this.keySize;
    }

    public String getManufacturer()
    {
        return this.manufacturer;
    }

    public String getMeid()
    {
        return this.meid;
    }

    public String getModel()
    {
        return this.model;
    }

    public Integer getOrigin()
    {
        return this.origin;
    }

    public java.util.Date getOriginationExpireDateTime()
    {
        return this.originationExpireDateTime;
    }

    public Integer getOsPatchLevel()
    {
        return this.osPatchLevel;
    }

    public Integer getOsVersion()
    {
        return this.osVersion;
    }

    public java.util.Set getPaddingModes()
    {
        return this.paddingModes;
    }

    public java.util.Set getPaddingModesAsStrings()
    {
        String v2_1;
        if (this.paddingModes != null) {
            com.google.common.collect.ImmutableSet$Builder v0 = com.google.common.collect.ImmutableSet.builder();
            String v3_5 = this.paddingModes.iterator();
            while (v3_5.hasNext()) {
                int v1 = ((Integer) v3_5.next()).intValue();
                switch (v1) {
                    case 1:
                        v0.add("NoPadding");
                        break;
                    case 2:
                        v0.add("OAEPPadding");
                        break;
                    case 3:
                        v0.add("PSS");
                        break;
                    case 4:
                        v0.add("PKCS1Padding");
                        break;
                    case 5:
                        v0.add("PKCS1");
                        break;
                    default:
                        throw new java.security.cert.CertificateParsingException(new StringBuilder().append("Invalid padding mode ").append(v1).toString());
                }
            }
            v2_1 = v0.build();
        } else {
            v2_1 = com.google.common.collect.ImmutableSet.of();
        }
        return v2_1;
    }

    public String getProduct()
    {
        return this.product;
    }

    public java.util.Set getPurposes()
    {
        return this.purposes;
    }

    public com.afwsamples.testdpc.policy.utils.RootOfTrust getRootOfTrust()
    {
        return this.rootOfTrust;
    }

    public Long getRsaPublicExponent()
    {
        return this.rsaPublicExponent;
    }

    public String getSerialNumber()
    {
        return this.serialNumber;
    }

    public java.util.Date getUsageExpireDateTime()
    {
        return this.usageExpireDateTime;
    }

    public Integer getUserAuthType()
    {
        return this.userAuthType;
    }

    public Integer getVendorPatchLevel()
    {
        return this.vendorPatchLevel;
    }

    public boolean isAllApplications()
    {
        return this.allApplications;
    }

    public boolean isAllowWhileOnBody()
    {
        return this.allowWhileOnBody;
    }

    public boolean isConfirmationRequired()
    {
        return this.confirmationRequired;
    }

    public boolean isIndividualAttestation()
    {
        return this.individualAttestation;
    }

    public boolean isNoAuthRequired()
    {
        return this.noAuthRequired;
    }

    public boolean isRollbackResistant()
    {
        return this.rollbackResistant;
    }

    public boolean isUserPresenceRequired()
    {
        return this.userPresenceRequired;
    }

    public String toString()
    {
        StringBuilder v1_1 = new StringBuilder();
        if (this.algorithm != null) {
            v1_1.append("\nAlgorithm: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.algorithmToString(this.algorithm.intValue()));
        }
        if (this.keySize != null) {
            v1_1.append("\nKeySize: ").append(this.keySize);
        }
        if ((this.purposes != null) && (!this.purposes.isEmpty())) {
            v1_1.append("\nPurposes: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.purposesToString(this.purposes));
        }
        if ((this.digests != null) && (!this.digests.isEmpty())) {
            v1_1.append("\nDigests: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.digestsToString(this.digests));
        }
        if ((this.paddingModes != null) && (!this.paddingModes.isEmpty())) {
            v1_1.append("\nPadding modes: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.paddingModesToString(this.paddingModes));
        }
        if (this.ecCurve != null) {
            v1_1.append("\nEC Curve: ").append(this.ecCurveAsString());
        }
        if (this.rsaPublicExponent != null) {
            v1_1.append("\nRSA exponent: ").append(this.rsaPublicExponent);
        }
        if (this.activeDateTime != null) {
            v1_1.append("\nActive: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.formatDate(this.activeDateTime));
        }
        if (this.originationExpireDateTime != null) {
            v1_1.append("\nOrigination expire: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.formatDate(this.originationExpireDateTime));
        }
        if (this.usageExpireDateTime != null) {
            v1_1.append("\nUsage expire: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.formatDate(this.usageExpireDateTime));
        }
        if ((!this.noAuthRequired) && (this.userAuthType != null)) {
            v1_1.append("\nAuth types: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.userAuthTypeToString(this.userAuthType.intValue()));
            if (this.authTimeout != null) {
                v1_1.append("\nAuth timeout: ").append(this.authTimeout);
            }
        }
        if (this.applicationId != null) {
            v1_1.append("\nApplication ID: ").append(new String(this.applicationId));
        }
        if (this.creationDateTime != null) {
            v1_1.append("\nCreated: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.formatDate(this.creationDateTime));
        }
        if (this.origin != null) {
            v1_1.append("\nOrigin: ").append(com.afwsamples.testdpc.policy.utils.AuthorizationList.originToString(this.origin.intValue()));
        }
        if (this.rollbackResistant) {
            v1_1.append("\nRollback resistant: true");
        }
        if (this.rootOfTrust != null) {
            v1_1.append("\nRoot of Trust:\n");
            v1_1.append(this.rootOfTrust);
        }
        if (this.osVersion != null) {
            v1_1.append("\nOS Version: ").append(this.osVersion);
        }
        if (this.osPatchLevel != null) {
            v1_1.append("\nOS Patchlevel: ").append(this.osPatchLevel);
        }
        if (this.vendorPatchLevel != null) {
            v1_1.append("\nVendor Patchlevel: ").append(this.vendorPatchLevel);
        }
        if (this.bootPatchLevel != null) {
            v1_1.append("\nBoot Patchlevel: ").append(this.bootPatchLevel);
        }
        if (this.attestationApplicationId != null) {
            v1_1.append("\nAttestation Application Id:").append(this.attestationApplicationId);
        }
        if (this.userPresenceRequired) {
            v1_1.append("\nUser presence required");
        }
        if (this.confirmationRequired) {
            v1_1.append("\nConfirmation required");
        }
        if (this.individualAttestation) {
            v1_1.append("\nIndividual attestation");
        }
        if (this.brand != null) {
            v1_1.append("\nBrand: ").append(this.brand);
        }
        if (this.device != null) {
            v1_1.append("\nDevice type: ").append(this.device);
        }
        return v1_1.toString();
    }
}
